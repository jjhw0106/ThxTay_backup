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
    
    /*
    1001	LDG1234
    1001	LDG1233
    1001	LDG1230
    1001	LDG1232
    */
    
    public AmenityListVO() {}
}
