package com.tt.Lodging;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class LodgingDTO {

	private int no;                 // 숙소번호
    private int userNo;             // 유저_번호
    
    private String name;            // 이름
    private String phone;           // 전화번호
    private String picture;         // 프로필사진
    
    public LodgingDTO() {}
}
