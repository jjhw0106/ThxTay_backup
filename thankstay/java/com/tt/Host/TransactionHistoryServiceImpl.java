package com.tt.Host;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.streaming.SXSSFCell;
import org.apache.poi.xssf.streaming.SXSSFSheet;
import org.apache.poi.xssf.streaming.SXSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tt.vo.TransactionHistoryDTO;
import com.tt.vo.TransactionHistoryVO;

@Service
@Transactional
public class TransactionHistoryServiceImpl implements TransactionHistoryService {

	@Autowired
	private HostAnalysisDao hostAnalysisDao;
	
	@Override
	public List<TransactionHistoryDTO> getAllTransactionHistory(int userNo) throws Exception {
		return hostAnalysisDao.getAllTransactionHistory(userNo);
	}
	
	@Override
	public void excelDownload(TransactionHistoryDTO download, HttpServletResponse response) throws Exception {
		
		List<TransactionHistoryDTO> list = hostAnalysisDao.getAllTransactionHistory(1001);
	
		try {
			SXSSFWorkbook workbook = new SXSSFWorkbook();
			
			SXSSFSheet sheet = null;
			sheet = workbook.createSheet("첫번째 시트");
			
			Row row = null;
			SXSSFCell cell = null;
			int rowNo = 0;
			
			//, "Type", "Confirmation Code", "Start Date", "Nights", "Guest", "Listing", 
			//"Details", "Reference", "Currency", "Amount", "Paid Out", "Host Fee", "Cleaning Fee"
			String[] headerArray = {"bookingNo", "transactionNo", "lodgingNo", "createdDate", "lodgingFee", "cleaningFee"};
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
				cell.setCellValue(downloadexcel.getBookingNo());
				
				cell=(SXSSFCell) row.createCell(2);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(downloadexcel.getTransactionNo());

				cell=(SXSSFCell) row.createCell(3);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(downloadexcel.getLodgingNo());
				
				cell=(SXSSFCell) row.createCell(4);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(downloadexcel.getCreatedDate());
				
				cell=(SXSSFCell) row.createCell(5);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(downloadexcel.getLodgingFee());
				
				cell=(SXSSFCell) row.createCell(6);
				cell.setCellStyle(bodyStyle);
				cell.setCellValue(downloadexcel.getCleaningFee());

			}
			
			response.setContentType("ms-vnd/excel");
			response.setHeader("Content-Disposition", "attachment;filename="+java.net.URLEncoder.encode("***_관리.xls","UTF-8"));
		
			
			workbook.write(response.getOutputStream());
			workbook.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
	}


	
}
