package com.tt.Host;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter
public class TransactionHistoryVO {
    
    private int no;             // 대금수령내역번호
    private int priceNo;        // 요금_번호
    private int paymentNo;      // 결제_번호
    private int lodgingNo;      // 숙소_번호
    private String createdDate;   // 정산일
    
    public TransactionHistoryVO() {}
}
