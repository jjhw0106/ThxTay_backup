package com.tt.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@ToString
@Setter
@Getter
public class TransactionHistoryVO {
    
    private int no;             // 대금수령내역번호
    private int priceNo;        // 요금_번호
    private int paymentNo;      // 결제_번호
    private int lodgingNo;      // 숙소_번호
    private Date createdDate;   // 정산일
    
    public TransactionHistoryVO() {}
}
