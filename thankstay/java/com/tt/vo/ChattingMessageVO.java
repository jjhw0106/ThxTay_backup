package com.tt.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@Getter
@Setter
@ToString
public class ChattingMessageVO {
    
    private int no;             // 메시지번호
    private int userNo;         // 유저_번호
    private int crNo;           // 채팅방_번호
    private String contents;    // 채팅메세지
    private Date createdTime;   // 송신시간
    private String opt;         // 채팅옵션
    private String check;       // 확인여부

    public ChattingMessageVO() {}
}
