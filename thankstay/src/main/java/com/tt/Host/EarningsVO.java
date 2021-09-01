package com.tt.Host;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class EarningsVO {

	private int confirmedIncome;	//checkout이 내달의 오늘 이전 것
	private int expectingIncome;	//checkin이 오늘포함 이후 이면서 checkout이 오늘포함 이후 인것 
	private int months;
	private int confirmedIncomeCleaningFee;
	private int expectingIncomeCleaningFee;
	private int canceledIncome;
}
