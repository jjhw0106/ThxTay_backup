package com.tt.Host;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class TransactionHistoryDTO {
	
	private int trNo;
	@JsonFormat(pattern = "yyyy-MM-dd" ,timezone = "Asia/Seoul")
	private Date createdDate;
	private String userName;
	private String bankAccount;
	private int bookingNo;
	private String lodgingName;
	private int bookingDate;
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date checkIn;
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date checkOut;
	private int lodgingFee;
	private int cleaningFee;
	private int hostFee;
	private int paidOut;
}
