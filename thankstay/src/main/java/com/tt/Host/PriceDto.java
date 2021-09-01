package com.tt.Host;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PriceDto {
	private int no;             // 요금번호
    private int lodgingNo;      // 숙소_번호
    private int lodgingFee;     // 숙박료
    private int cleaningFee;    // 청소비
    private String openDate;      // 영업일
}
