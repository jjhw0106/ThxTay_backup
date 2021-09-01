package com.tt.Lodging;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tt.Host.PriceVO;

@Service
public class BookingServiceImpl implements BookingService {

	@Autowired
	BookingDao bookingDao;
	
	@Override
	public LodgingVO getLodgingDetail(int lodgingNo) {
		LodgingVO lodging = bookingDao.getLodgingByLodgingNo(lodgingNo);
		
		return lodging;
	}
	
	@Override
	public LodgingDTO getLodgingHost(int lodgingNo) {
		LodgingDTO lodgingHost = bookingDao.getLodgingHostByLodgingNo(lodgingNo);
		
		return lodgingHost;
	}
	
	@Override
	public List<PriceVO> getVacancy(int lodgingNo) {
		List<PriceVO> priceList = bookingDao.getPricesByLodgingNo(lodgingNo);
		
		return priceList;
	}
	
	 @Override
	public List<LodgingImgVO> getLodgingIMG(int lodgingNo) {
		List<LodgingImgVO> imageList = bookingDao.getLodgingImgByLodgingNo(lodgingNo);
		
		 
		return imageList;
	}
	 
	 @Override
	public List<AmenityListDTO> getAmenitiesByLodgingNo(int lodgingNo) {
		 List<AmenityListDTO> amenityList = bookingDao.getAmenitiesByLodgingNo(lodgingNo);
		 
		return amenityList;
	}
	 
	 @Override
	public void booking(BookingVO booking) {
		 // 예약을 하고
		bookingDao.insertBooking(booking);
		// 예약한 날짜를 price 테이블에 'Y'라고 표시한다.
		bookingDao.updatePrice(booking);
	}
	 
	 @Override
	public BookingVO getBookingNoByBooking(BookingVO booking) {
		BookingVO bookingNo = bookingDao.getBookingNoByBooking(booking);
		 
		return bookingNo;
	}
	 
	@Override
	public void insertPayment(PaymentVO payment) {
		bookingDao.insertPayment(payment);
		
	}
	
	@Override
	public List<ReviewDTO> getReview(int lodgingNo) {
		List<ReviewDTO> reviewList = bookingDao.getReviewByLodgingNo(lodgingNo);
		
		return reviewList;
	}
	
	@Override
	public BookingVO getBookingNoByUserNo(BookingVO booking) {
		BookingVO bookingNo = bookingDao.getBookingNoByUserNo(booking);
		
		return bookingNo;
	}
	
	@Override
	public void insertReview(ReviewVO review) {
		bookingDao.insertReview(review);
		
	}
	
	@Override
	public void updateLodging(LodgingVO lodging) {
		bookingDao.updateLodging(lodging);
		
	}
}
