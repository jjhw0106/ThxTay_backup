package com.tt.Chat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@ToString
@Setter
@Getter
public class ChatRoomVO {
    
    private int no;             // 채팅방번호
    private int userNo;         // 유저_번호
    private int hostNo;        // 호스트
    private int adminNo;       // 관리자
    private Date createdDate;   // 생성일

    public ChatRoomVO() {}
}
