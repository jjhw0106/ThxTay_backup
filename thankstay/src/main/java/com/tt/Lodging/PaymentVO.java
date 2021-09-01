package com.tt.Lodging;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@Getter
@Setter
@ToString
public class PaymentVO {
    
    private int no;                 // 결제번호
    private int bookingNo;          // 예약_번호
    private Date createdDate;       // 결제일시
    private String method;          // 결제수단

    public PaymentVO() {}
}
