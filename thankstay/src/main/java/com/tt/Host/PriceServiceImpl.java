package com.tt.Host;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tt.web.form.PriceRegisterForm;

@Service
public class PriceServiceImpl implements PriceService{
	
	@Autowired
	PriceDao priceDao;
	@Override
	public void registerLdgPrice(PriceDto price) {
		priceDao.insertLodgingPrice(price);
	}
	
	@Override
	public Date getInterDates(Date startDate, Date endDate) {
		return null;
	}

	@Override
	public void RegisterPrice(Date startDate, Date endDate, int lodgingFee, int cleaningFee, int userNo, int lodgingNo) {
		// 숙소 가격입력
		PriceDto ldgPrice=new PriceDto();
		Calendar cal= Calendar.getInstance();
		Calendar cal2= Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd");

		cal.setTime(startDate);
		cal2.setTime(endDate);
		
		int difference = Math.abs(cal2.get(Calendar.DATE)-cal.get(Calendar.DATE));
		
		for(int i=0;i<difference+1;i++) {
			cal.add(Calendar.DATE,+1);
			String dateStr= sdf.format(cal.getTime());
			ldgPrice.setLodgingNo(lodgingNo);
			ldgPrice.setLodgingFee(lodgingFee);
			ldgPrice.setCleaningFee(cleaningFee);
			ldgPrice.setOpenDate(dateStr);
			
			priceDao.insertLodgingPrice(ldgPrice);
		}
	}

	@Override
	public void RegisterPrice(PriceRegisterForm prForm, Date startDate, Date endDate) {
		// 숙소 가격입력
		PriceDto ldgPrice=new PriceDto();
		Calendar cal= Calendar.getInstance();
		Calendar cal2= Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd");

		cal.setTime(startDate);
		cal2.setTime(endDate);

		int difference = Math.abs(cal2.get(Calendar.DATE)-cal.get(Calendar.DATE));
		
		//시작날짜 데이트 삽입
		String dateStr= sdf.format(cal.getTime());
		ldgPrice.setLodgingNo(prForm.getLodgingNo());
		ldgPrice.setLodgingFee(prForm.getLodgingFee());
		ldgPrice.setCleaningFee(prForm.getCleaningFee());
		ldgPrice.setOpenDate(dateStr);
		priceDao.insertLodgingPrice(ldgPrice);
		System.out.println("price check:"+ldgPrice);
		//
		for(int i=0;i<difference;i++) {
			cal.add(Calendar.DATE, +1);
			dateStr= sdf.format(cal.getTime());
			ldgPrice.setLodgingNo(prForm.getLodgingNo());
			ldgPrice.setLodgingFee(prForm.getLodgingFee());
			ldgPrice.setCleaningFee(prForm.getCleaningFee());
			ldgPrice.setOpenDate(dateStr);
			
			System.out.println("price check:"+ldgPrice);
			priceDao.insertLodgingPrice(ldgPrice);
		}
	}
	
}
