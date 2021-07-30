package com.tt.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@Getter
@Setter
@ToString
public class PriceVO {
    
    private int no;             // 요금번호
    private int lodgingNo;      // 숙소_번호
    private int lodgingFee;     // 숙박료
    private int cleaningFee;    // 청소비
    private Date openDate;      // 영업일
    private String isBooked;    // 예약가능여부
    private Date updatedDate;   // 수정일
    private Date createdDate;   // 등록일
    
    public PriceVO() {}
}
