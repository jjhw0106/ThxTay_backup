package com.tt.Lodging;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.tt.Host.PriceVO;

@Mapper
public interface BookingDao {

	/**
	 * 지정된 숙소번호에 해당하는 숙소정보를 반환한다.
	 * @param lodgingNo 숙소번호
	 * @return 숙소정보
	 */
	LodgingVO getLodgingByLodgingNo(int lodgingNo);
	
	/**
	 * 지정된 숙소번호에 해당하는 숙소정보와 호스트 정보를 반환한다.
	 * @param lodgingNo 숙소번호
	 * @return 숙소정보, 호스트정보
	 */
	LodgingDTO getLodgingHostByLodgingNo(int lodgingNo);
	
	/**
	 * 지정된 숙소번호에 해당하는 요금정보를 반환한다.
	 * @param lodgingNo 숙소번호
	 * @return 요금정보
	 */
	List<PriceVO> getPricesByLodgingNo(int lodgingNo);
	
	/**
	 * 지정된 숙소번호에 해당하는 숙소이미지 정보를 반환한다.
	 * @param lodgingNo 숙소번호
	 * @return 숙소이미지 정보
	 */
	List<LodgingImgVO> getLodgingImgByLodgingNo(int lodgingNo);
	
	/**
	 * 지정된 숙소번호에 해당하는 숙소편의시설 정보를 반환한다.
	 * @param lodgingNo 숙소번호
	 * @return 숙소편의시설 리스트
	 */
	List<AmenityListDTO> getAmenitiesByLodgingNo(int lodgingNo);
	
	
	/**
	 * 예약정보를 이용하여 insert한다.
	 * @param booking 예약정보
	 */
	void insertBooking(BookingVO booking);
	
	/**
	 * 예약이 완료되면 예약한 날짜를 price테이블에서 'Y'로 바꾼다.
	 * @param booking
	 */
	void updatePrice(BookingVO booking);
	
	/**
	 * 예약과 결제를 한 페이지에서 진행하다 보니까... booking을 insert하고 생성된 bookingNo가 필요하다
	 * @param booking 방금insert한 booking정보
	 * @return 방금 insert한 bookingNo!!!
	 */
	BookingVO getBookingNoByBooking(BookingVO booking);
	
	/**
	 * 결제정보를 저장한다.
	 * @param payment 결제정보
	 */
	void insertPayment(PaymentVO payment);
	
	/**
	 * 숙소에 해당하는 리뷰 목록을 가져온다.
	 * @param lodgingNo 숙소번호
	 * @return 리뷰 정보
	 */
	List<ReviewDTO> getReviewByLodgingNo(int lodgingNo);
	
	/**
	 * 유저번호와, 숙소번호에 해당하는 예약번호를 가져온다.
	 * @param booking 유저번호와, 숙소번호를 담고있는 
	 * @return 예약번호
	 */
	BookingVO getBookingNoByUserNo(BookingVO booking);
	
	/**
	 * 리뷰정보를 넣어서 insert한다.
	 * @param review 리뷰정보
	 */
	void insertReview(ReviewVO review);
	
	void updateLodging(LodgingVO lodging);
	
	
}
