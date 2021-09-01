package com.tt.Host;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.tt.User.UserVO;
import com.tt.Lodging.BookingVO;
import com.tt.Lodging.LodgingVO;
import com.tt.Common.CommonCodeVO;

@Mapper
public interface HostAnalysisDao {
	/* TransactionHistoryDTO / TransactionRegisterVO */
	//대금 은행 등록(TransactionRegisterVO)
	void insertBank(TransactionRegisterVO register);
	//대금 리스트로 출력(TransactionHistoryDTO) int
	TransactionRegisterVO getTransactionHistoryByUserNo(int userNo) throws Exception;
	//대금 리스트로 출력(TransactionHistoryDTO) int
	List<TransactionHistoryDTO> getAllTransactionHistoryByUserNo(int userNo) throws Exception;
	//대금 리스트로 출력(TransactionHistoryDTO) Map
	List<TransactionHistoryDTO> getAllTransactionHistoryByHashMap(Map<String, Object> map) throws Exception;
	//대금 모든 숙소 리스트로 출력
	List<LodgingVO> getAllLodgingsByUserNo(int userNo) throws Exception;
	
	
	//공통코드
	List<CommonCodeVO> getCommonCodeByPntCode(String code) throws Exception;
	
	/* EarningsVO / BookingVO */
	//수입 출력(EarningsVO)
	EarningsVO getEarningsByHashMap(Map<String, Object> map) throws Exception;
	//수입 출력(BookingVO - 구글차트)
	List<EarningsVO> getEarningsChartbyHashMap(Map<String, Object> map) throws Exception;
	//Bookings 상태 update
	void updateEarnings(int userNo) throws Exception;
	
	List<BookingVO> getAllBookingsByUserNo(int userNo) throws Exception;
	
	List<UserVO> getAllUsers() throws Exception;
	
}
