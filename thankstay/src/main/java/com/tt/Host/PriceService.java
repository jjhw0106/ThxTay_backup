package com.tt.Host;

import java.sql.Date;

import com.tt.web.form.PriceRegisterForm;

public interface PriceService {
	void registerLdgPrice(PriceDto price);
	
	Date getInterDates(Date startDate, Date endDate);
	
	void RegisterPrice(Date startDate, Date endDate,int lodgingFee, int cleaningFee, int userNo, int lodgingNo);
	
	void RegisterPrice(PriceRegisterForm prForm, Date startDate, Date endDate);
}
