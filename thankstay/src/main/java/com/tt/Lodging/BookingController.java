package com.tt.Lodging;

import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.tt.Host.PriceVO;
import com.tt.User.UserService;
import com.tt.User.UserVO;
import com.tt.web.annotation.LoginUser;

@Controller
public class BookingController {
	
	@Autowired
	BookingService bookingService;
	@Autowired
	UserService userService;
	
	@GetMapping("/bookinglist")
	public String bookinglist() {
		return "lodging/list";
	}
	
	@GetMapping("/booking")
	public String booking(@RequestParam("no") int lodgingNo, Model model, @LoginUser UserVO user) throws JsonProcessingException {
		// 숙소정보를 보낸다.
		LodgingVO lodging = bookingService.getLodgingDetail(lodgingNo);
		model.addAttribute("lodging", lodging);
		
		// 숙소이미지 정보를 보낸다. 하하하하
		List<LodgingImgVO> imageList = bookingService.getLodgingIMG(lodgingNo);
		model.addAttribute("images", imageList);
		// 편의시설 리스트를 보낸다.
		List<AmenityListDTO> amenityList = bookingService.getAmenitiesByLodgingNo(lodgingNo);
		model.addAttribute("amenities", amenityList);
		// 리뷰리스트를 보낸다.
		List<ReviewDTO> reviewList = bookingService.getReview(lodgingNo);
		model.addAttribute("reviews", reviewList);
		// 호스트 정보를 보낸다.
		LodgingDTO lodgingHost = bookingService.getLodgingHost(lodgingNo);
		model.addAttribute("host", lodgingHost);
		
		model.addAttribute("user", user);
		
		// 리뷰를 작성할 수 있는지 확인하기
		if (user == null) {
			// 빈값을 보낸다.
			model.addAttribute("bookingNo2", 0);
		} else {
			BookingVO booking2 = new BookingVO();
			booking2.setUserNo(user.getNo());
			booking2.setLodgingNo(lodgingNo);
			BookingVO bookingNo2 = bookingService.getBookingNoByUserNo(booking2);
			
			int no = 0;
			if (bookingNo2 != null) {
				no = bookingNo2.getNo();
			}
			model.addAttribute("bookingNo2", no);
		}
		
		// 예약이 가능한 날짜를 보낸다.
		List<PriceVO> priceList = bookingService.getVacancy(lodgingNo);
		// List<Date> dates = new ArrayList<Date>();
		
		// utc랑 뭐랑 db에서 가져온 날짜값이 달라져서 +1을 해줬다.... 해결할 수 있는 방법 찾기!!!!
		//for(PriceVO price : priceList) {
		//	Calendar cal = Calendar.getInstance();
		//	cal.setTime(price.getOpenDate());
		//	cal.add(Calendar.DATE, +1);
		//	Date indate = new Date(cal.getTimeInMillis());
		//	price.setOpenDate(indate);
		//}
		
		ObjectMapper mapper = new ObjectMapper();
		
		String jsonText = mapper.writeValueAsString(priceList);
		
		model.addAttribute("json", jsonText);
		
		return "lodging/booking";
	}
	
	@PostMapping("/payment")
	public String payment(int userNo, int lodgingNo, String checkIn, String checkOut, 
							int date, int guest, int totalLodgingFee, int totalCleaningFee,
							int amount, Model model, @LoginUser UserVO user) throws ParseException {
		
		
		
		DateFormat dateFormat = new SimpleDateFormat("yyyy.MM.dd");
		Date in = dateFormat.parse(checkIn);
		Calendar cal = Calendar.getInstance();
		cal.setTime(in);
		cal.add(Calendar.DATE, -1);
		
		Date indate = new Date(cal.getTimeInMillis());
		
		Date out = dateFormat.parse(checkOut);
		
		BookingVO booking = new BookingVO();
		booking.setUserNo(userNo);
		booking.setLodgingNo(lodgingNo);
		booking.setCheckIn(in);
		booking.setCheckOut(out);
		booking.setDate(date);
		booking.setGuest(guest);
		booking.setTotalLodgingFee(totalLodgingFee);
		booking.setTotalCleaningFee(totalCleaningFee);
		booking.setAmount(amount);
		
		// model.addAttribute("user", user); 세션에서 받아오는 유저보다는 userNo로 조회해서 가져오자
		UserVO bookingUser = userService.getUserByNo(userNo);
		model.addAttribute("bookingUser", bookingUser);
		
		model.addAttribute("booking", booking);
		model.addAttribute("indate", indate);
		
		LodgingVO lodging = bookingService.getLodgingDetail(lodgingNo);
		model.addAttribute("lodging", lodging);
		
		List<LodgingImgVO> imageList = bookingService.getLodgingIMG(lodgingNo);
		model.addAttribute("images", imageList);
		
		return "lodging/payment";
	}
	
	@PostMapping("/booking")
	public String booking(int userNo, int lodgingNo, @DateTimeFormat(pattern="yyyy-MM-dd") Date checkIn, @DateTimeFormat(pattern="yyyy-MM-dd") Date checkOut, 
							int date, int guest, int totalLodgingFee, int totalCleaningFee,
							int amount, Model model, @LoginUser UserVO user) throws ParseException, JsonProcessingException {
		
		
		
		
		BookingVO booking = new BookingVO();
		booking.setUserNo(userNo);
		booking.setLodgingNo(lodgingNo);
		booking.setCheckIn(checkIn);
		booking.setCheckOut(checkOut);
		booking.setDate(date);
		booking.setGuest(guest);
		booking.setTotalLodgingFee(totalLodgingFee);
		booking.setTotalCleaningFee(totalCleaningFee);
		booking.setAmount(amount);
		
		bookingService.booking(booking);
		
		BookingVO bookingNo = bookingService.getBookingNoByBooking(booking);
		
		//model.addAttribute("booking", booking);
		//model.addAttribute("bookingNo", bookingNo);
		
		// 결제 값 넣기
		PaymentVO payment = new PaymentVO();
		payment.setBookingNo(bookingNo.getNo());
		payment.setMethod("PMT0102");
		
		bookingService.insertPayment(payment);
		
		/*
		// 페이지를 어디로 보낼지??? booking로 보내면 아래 정보들을 보내줘야 한다.
		// 숙소정보를 보낸다.
		LodgingVO lodging = bookingService.getLodgingDetail(lodgingNo);
		model.addAttribute("lodging", lodging);
		// 숙소이미지 정보를 보낸다. 하하하하
		List<LodgingImgVO> imageList = bookingService.getLodgingIMG(lodgingNo);
		model.addAttribute("images", imageList);
		// 편의시설 리스트를 보낸다.
		List<AmenityListDTO> amenityList = bookingService.getAmenitiesByLodgingNo(lodgingNo);
		model.addAttribute("amenities", amenityList);
		// 리뷰리스트를 보낸다.
		List<ReviewDTO> reviewList = bookingService.getReview(lodgingNo);
		model.addAttribute("reviews", reviewList);
		
		// 리뷰를 작성할 수 있는지 확인하기
		if (user == null) {
			// 빈값을 보낸다.
			model.addAttribute("bookingNo2", 0);
		} else {
			BookingVO booking2 = new BookingVO();
			booking2.setUserNo(user.getNo());
			booking2.setLodgingNo(lodgingNo);
			BookingVO bookingNo2 = bookingService.getBookingNoByUserNo(booking2);
			
			int no = 0;
			if (bookingNo2 != null) {
				no = bookingNo2.getNo();
			}
			model.addAttribute("bookingNo2", no);
		}
		
		// 예약이 가능한 날짜를 보낸다.
		List<PriceVO> priceList = bookingService.getVacancy(lodgingNo);
		List<Date> dates = new ArrayList<Date>();
		for(PriceVO price : priceList) {
			Calendar cal = Calendar.getInstance();
			cal.setTime(price.getOpenDate());
			cal.add(Calendar.DATE, +1);
			Date indate = new Date(cal.getTimeInMillis());
			price.setOpenDate(indate);
		}
		ObjectMapper mapper = new ObjectMapper();
		
		String jsonText1 = mapper.writeValueAsString(dates);
		String jsonText = mapper.writeValueAsString(priceList);
		
		model.addAttribute("json1", jsonText1);
		model.addAttribute("json", jsonText);
		
		
		return "lodging/booking";
		*/
		return "index";
	}
	
	//@RequestMapping("/reviews/add")
	//public @ResponseBody ResponseEntity<ReviewVO> add(ReviewVO review) {
	//	bookingService.insertReview(review);
	//	
	//	
	//	return new ResponseEntity<ReviewVO>(review, HttpStatus.OK);
	//}
	
	@RequestMapping("/reviews/add")
	public @ResponseBody ResponseEntity<List<ReviewDTO>> add(ReviewVO review) {
		
		int stars = review.getCleanness()+review.getCommunication()+review.getCheckIn()+review.getAccuracy()+review.getLocation()+review.getValue();
		//double num1 = 3.5;
		//int reviewc = 2;
		//int reviewc2 = 3;
		//int clea = 4;
		//int reviewc3 = 4;
		
		//double num2 = 3.7;
		
		//double sssss = ((num1 * reviewc)+clea) / reviewc2;
		//double ccccc = Math.round(sssss*10)/10.0;
		
		//double fffff = (Math.round(num2 * reviewc2)+clea) / (double) reviewc3;
		//double hhhhh = Math.round(fffff*10)/10.0;
		review.setStars(stars);
		bookingService.insertReview(review);
		
		// 해당 숙소에 리뷰를 작성했으니.. 평점/리뷰 갯수를 update해줘야 한다.
		LodgingVO lodging = bookingService.getLodgingDetail(review.getLodgingNo());
		int reviewCount = lodging.getReviewCount()+1;
		int reviewCountAvg = 6 * reviewCount;
		// 청결도
		double cleanness = (Math.round(lodging.getCleanness() * lodging.getReviewCount())+review.getCleanness()) / (double) reviewCount;
		double cleannessAvg = Math.round(cleanness*10)/10.0;
		lodging.setCleanness(cleannessAvg);
		// 의사소통
		double communication = (Math.round(lodging.getCommunication() * lodging.getReviewCount())+review.getCommunication()) / (double) reviewCount;
		double communicationAvg = Math.round(communication*10)/10.0;
		lodging.setCommunication(communicationAvg);
		// 체크인
		double checkIn = (Math.round(lodging.getCheckIn() * lodging.getReviewCount())+review.getCheckIn()) / (double) reviewCount;
		double checkInAvg = Math.round(checkIn*10)/10.0;
		lodging.setCheckIn(checkInAvg);
		// 정확성
		double accuracy = (Math.round(lodging.getAccuracy() * lodging.getReviewCount())+review.getAccuracy()) / (double) reviewCount;
		double accuracyAvg = Math.round(accuracy*10)/10.0;
		lodging.setAccuracy(accuracyAvg);
		// 위치
		double location = (Math.round(lodging.getLocation() * lodging.getReviewCount())+review.getLocation()) / (double) reviewCount;
		double locationAvg = Math.round(location*10)/10.0;
		lodging.setLocation(locationAvg);
		// 가격대비 만족도
		double value = (Math.round(lodging.getValue() * lodging.getReviewCount())+review.getValue()) / (double) reviewCount;
		double valueAvg = Math.round(value*10)/10.0;
		lodging.setValue(valueAvg);
		
		double avg = (Math.round(lodging.getReviewAverage() * (6 * lodging.getReviewCount()))+review.getStars()) / (double) reviewCountAvg;
		double reveiewavg = Math.round(avg*10)/10.0;
		lodging.setReviewAverage(reveiewavg);
		
		// 리뷰 갯수 늘리기
		lodging.setReviewCount(reviewCount);
		
		bookingService.updateLodging(lodging);
		
		List<ReviewDTO> reviewList = bookingService.getReview(review.getLodgingNo());
		
		return new ResponseEntity<List<ReviewDTO>>(reviewList, HttpStatus.OK);
	}
}
