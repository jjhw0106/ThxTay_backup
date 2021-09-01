package com.tt.Host;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class TransactionRegisterVO {

    private int no;                 // 대금등록 번호	not null
    private int userNo;             // 유저_번호		not null
    
    private String name;            // 대금등록 이름	not null
    private String email; // 대금등록 이메일	not null
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birth;			// 생년월일			not null

    private String phone;			//휴대폰			not null
    
    private String currency;		// 통화				한국					not null
    private String payment;			// 결제수단			계좌/카드				not null
    private String bankCode;        // 은행_코드		국민은행/카카오뱅크		not null
    private String account;         // 대금등록 계좌							not null

    public TransactionRegisterVO() {}
}
