package com.tt.Lodging;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AmenityListDTO {

	private String code;           // 편의시설 코드
    private int lodgingNo;      // 숙소_번호
    private String codeContent;     // 공통코드명
    private String parentCode;      // 상위 공통코드
    
    public AmenityListDTO() {}
}
