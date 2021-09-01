package com.tt.Lodging;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

@Getter
@Setter
@ToString
public class BookingVO {

    private int no;                 // 예약번호
    private int userNo;             // 유저_번호
    private int lodgingNo;          // 숙소_번호 
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date checkIn;           // 체크인 날짜
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date checkOut;          // 체크아웃 날짜
    private int date;               // 숙박일수
    private String status;          // 예약상태
    private int guest;              // 예약인원
    private int totalLodgingFee;    // 총 숙박료
    private int totalCleaningFee;   // 총 청소비
    private int amount;             // 총액

    public BookingVO() {}
}
