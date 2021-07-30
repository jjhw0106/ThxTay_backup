package com.tt.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AmenityListVO {
    
    private int code;           // 편의시설 코드
    private int lodgingNo;      // 숙소_번호
    
    public AmenityListVO() {}
}
