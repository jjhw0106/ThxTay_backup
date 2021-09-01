package com.tt.Host;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import com.tt.Lodging.LodgingVO;
import com.tt.User.UserVO;

public interface TransactionHistoryService {
	
	TransactionRegisterVO getTransactionHistoryByUserNo(int userNo) throws Exception;
	
	List<TransactionHistoryDTO> getAllTransactionHistoryByUserNo(int userNo) throws Exception;

	List<TransactionHistoryDTO> getAllTransactionHistoryByHashMap(Map<String, Object> map) throws Exception;

	void excelDownload(UserVO user, TransactionHistoryDTO download, HttpServletResponse response) throws Exception;

	List<LodgingVO> getAllLodgingsByUserNo(int userNo) throws Exception;
}
