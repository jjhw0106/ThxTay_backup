package com.tt.web.form;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PriceRegisterForm {
    private int lodgingNo;   	// 숙소_번호
    private int lodgingFee;     // 숙박료
    private int cleaningFee;    // 청소비
    private String openDate;     // 영업일
}
