package com.tt.Lodging;

import java.util.List;

import com.tt.Host.PriceVO;

public interface BookingService {

	/**
	 * 지정된 숙소번호에 해당하는 숙소의 상세정보를 제공하는 서비스
	 * @param lodgingNo
	 * @return
	 */
	LodgingVO getLodgingDetail(int lodgingNo);
	
	LodgingDTO getLodgingHost(int lodgingNo);
	
	/**
	 * 지정된 숙소번호에 해당하는 숙소가 예약된 날짜 
	 * @param lodgingNo 숙소번호
	 * @return 예약된 날짜 
	 */
	List<PriceVO> getVacancy(int lodgingNo);
	
	/**
	 * 지정된 숙소번호에 해당하는 숙소의 이미지정보를 제공하는 서비스
	 * @param lodgingNo 숙소번호
	 * @return 이미지 정보
	 */
	List<LodgingImgVO> getLodgingIMG(int lodgingNo);
	
	/**
	 * 지정된 숙소번호에 해당하는 숙소편의시설 정보를 반환한다.
	 * @param lodgingNo 숙소번호
	 * @return 숙소편의시설 리스트
	 */
	List<AmenityListDTO> getAmenitiesByLodgingNo(int lodgingNo);
	
	/**
	 * 
	 * @param booking
	 */
	void booking(BookingVO booking);
	
	/**
	 * 
	 * @param booking
	 * @return
	 */
	BookingVO getBookingNoByBooking(BookingVO booking);
	
	/**
	 * 
	 * @param payment
	 */
	void insertPayment(PaymentVO payment);
	
	/**
	 * 
	 * @param lodgingNo
	 * @return
	 */
	List<ReviewDTO> getReview(int lodgingNo);
	
	/**
	 * 
	 * @param booking
	 * @return
	 */
	BookingVO getBookingNoByUserNo(BookingVO booking);
	
	/**
	 * 
	 * @param review
	 */
	void insertReview(ReviewVO review);
	
	/**
	 * 
	 * @param lodging
	 */
	void updateLodging(LodgingVO lodging);
	
	
}
