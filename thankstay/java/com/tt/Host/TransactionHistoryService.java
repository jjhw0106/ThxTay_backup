package com.tt.Host;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import com.tt.Lodging.LodgingVO;
import com.tt.vo.TransactionHistoryDTO;
import com.tt.vo.TransactionHistoryVO;

public interface TransactionHistoryService {

	void excelDownload(TransactionHistoryDTO download, HttpServletResponse response) throws Exception;

	List<TransactionHistoryDTO> getAllTransactionHistory(int userNo) throws Exception;
}
