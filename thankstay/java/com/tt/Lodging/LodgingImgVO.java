package com.tt.Lodging;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter
public class LodgingImgVO {
    
    private int no;         // 숙소사진번호
    private int lodgingNo;  // 숙소_번호
    private String uri;     // 숙소사진 파일명
    
    public LodgingImgVO() {}
}
