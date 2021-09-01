package com.tt.Wishlist;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@ToString
@Getter
public class WishlistVO {

    private int no;                 // 찜목록번호
    private int userNo;             // 유저_번호
    private String name;            // 찜목록이름
    
    public WishlistVO() {}
}
