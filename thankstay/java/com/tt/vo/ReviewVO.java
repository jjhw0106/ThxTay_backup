package com.tt.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@ToString
@Getter
@Setter
public class ReviewVO {

    private int no;             // 리뷰번호
    private int userNo;         // 유저_번호
    private int lodgingNo;      // 숙소_번호
    private int bookingNo;      // 예약_번호
    private Date createdDate;   // 등록일
    private Date updatedDate;   // 수정일
    private String comment;     // 리뷰내용
    private String isUpdated;   // 수정여부
    private int stars;          // 별점
    private int cleanness;      // 청결도
    private int communication;  // 의사소통
    private int checkIn;        // 체크인
    private int accuracy;       // 정확성
    private int location;       // 위치(리뷰)
    private int value;          // 가격대비 만족도

    public ReviewVO() {}
}
