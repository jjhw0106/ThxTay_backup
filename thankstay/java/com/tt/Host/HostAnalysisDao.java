package com.tt.Host;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.tt.vo.BookingVO;
import com.tt.vo.TransactionHistoryDTO;
import com.tt.vo.TransactionRegisterVO;

@Mapper
public interface HostAnalysisDao {

	//대금 은행 등록(TransactionRegisterVO)
	void insertBank(TransactionRegisterVO register);
	
	//대금리스트로 출력(TransactionHistoryDTO) & 엑셀 다운로드
	List<TransactionHistoryDTO> getAllTransactionHistory(int userNo) throws Exception;
	
	//수입 출력(BookingVO)
	BookingVO getAmountByBookingNo(int bookingNo) throws Exception;
}
