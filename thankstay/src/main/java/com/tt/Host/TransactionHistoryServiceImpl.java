package com.tt.Host;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.streaming.SXSSFCell;
import org.apache.poi.xssf.streaming.SXSSFSheet;
import org.apache.poi.xssf.streaming.SXSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tt.Lodging.LodgingVO;
import com.tt.User.UserVO;
import com.tt.web.annotation.LoginUser;

@Service
@Transactional
public class TransactionHistoryServiceImpl implements TransactionHistoryService {

	@Autowired
	private HostAnalysisDao hostAnalysisDao;
	
	@Override
	public void excelDownload(@LoginUser UserVO user, TransactionHistoryDTO download, HttpServletResponse response) throws Exception {
		
		List<TransactionHistoryDTO> list = hostAnalysisDao.getAllTransactionHistoryByUserNo(user.getNo());
	
		try {
			SXSSFWorkbook workbook = new SXSSFWorkbook();
			
			SXSSFSheet sheet = null;
			sheet = workbook.createSheet("첫번째 시트");
			
			Row row = null;
			SXSSFCell cell = null;
			int rowNo = 0;
			
			String[] headerArray = {"created date", "user name", "bank account", "booking no", "lodging name", "booking date"
					,"check-in", "check-out", "lodging fee", "cleaning fee", "host fee", "paid out"};
			row = sheet.createRow(rowNo++);
			for(int i=0; i<headerArray.length; i++) {
				cell = (SXSSFCell) row.createCell(i);
				CellStyle headStyle = null;
				cell.setCellStyle(headStyle);
				cell.setCellValue(headerArray[i]);
			
			}
			for(TransactionHistoryDTO downloadexcel : list) {
				
				row = sheet.createRow(rowNo++);
				cell=(SXSSFCell) row.createCell(0);
				CellStyle bodyStyle = null;
				
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(downloadexcel.getCreatedDate());
				cell=(SXSSFCell) row.createCell(1);
				
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(downloadexcel.getUserName());
				cell=(SXSSFCell) row.createCell(2);
				
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(downloadexcel.getBankAccount());
				cell=(SXSSFCell) row.createCell(3);
				
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(downloadexcel.getBookingNo());
				cell=(SXSSFCell) row.createCell(4);
				
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(downloadexcel.getLodgingName());
				cell=(SXSSFCell) row.createCell(5);
				
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(downloadexcel.getBookingDate());
				cell=(SXSSFCell) row.createCell(6);
				
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(downloadexcel.getCheckIn());
				cell=(SXSSFCell) row.createCell(7);
				
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(downloadexcel.getCheckOut());
				cell=(SXSSFCell) row.createCell(8);
				
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(downloadexcel.getLodgingFee());
				cell=(SXSSFCell) row.createCell(9);
				
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(downloadexcel.getCleaningFee());
				cell=(SXSSFCell) row.createCell(10);
				
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(downloadexcel.getHostFee());
				cell=(SXSSFCell) row.createCell(11);
				
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(downloadexcel.getPaidOut());
				cell=(SXSSFCell) row.createCell(12);

				System.out.println("----------------------------------------엑셀");
				System.out.println(downloadexcel);
			}
			response.setContentType("ms-vnd/excel");
			response.setHeader("Content-Disposition", "attachment;filename="+java.net.URLEncoder.encode("***_관리.xls","UTF-8"));
		
			
			workbook.write(response.getOutputStream());
			workbook.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
	}
	@Override
	public TransactionRegisterVO getTransactionHistoryByUserNo(int userNo) throws Exception {
		return hostAnalysisDao.getTransactionHistoryByUserNo(userNo);
	}
	@Override 
	public List<TransactionHistoryDTO> getAllTransactionHistoryByUserNo(int userNo) throws Exception {
		return hostAnalysisDao.getAllTransactionHistoryByUserNo(userNo);
	}
	@Override
	public 	List<TransactionHistoryDTO> getAllTransactionHistoryByHashMap(Map<String, Object> map) throws Exception {
		return hostAnalysisDao.getAllTransactionHistoryByHashMap(map);
	}
	@Override
	public List<LodgingVO> getAllLodgingsByUserNo(int userNo) throws Exception {
		return hostAnalysisDao.getAllLodgingsByUserNo(userNo);
	}
}
