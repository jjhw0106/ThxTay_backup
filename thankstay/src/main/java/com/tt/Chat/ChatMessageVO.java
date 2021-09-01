package com.tt.Chat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@Getter
@Setter
@ToString
public class ChatMessageVO {
    
    private int no;             // 메시지번호
    private int crNo;           // 채팅방_번호
    private String contents;    // 채팅메세지
    private Date createdTime;   // 송신시간

    public ChatMessageVO() {}
}
