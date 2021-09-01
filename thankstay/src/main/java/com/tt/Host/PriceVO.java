package com.tt.Host;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

@Getter
@Setter
@ToString
public class PriceVO {
    
    private int no;             // 요금번호
    private int lodgingNo;      // 숙소_번호
    private int lodgingFee;     // 숙박료
    private int cleaningFee;    // 청소비
	@JsonFormat(pattern = "yyyy-MM-dd" ,timezone = "Asia/Seoul")
    private Date openDate;      // 영업일
    private String isBooked;    // 예약가능여부
    private Date updatedDate;   // 수정일
    private Date createdDate;   // 등록일
    
    public PriceVO() {}
}
