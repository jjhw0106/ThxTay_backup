package com.tt.Chat;

import com.tt.User.UserVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Mapper
public interface ChatDao {

    int insertMsg(ChatMessageVO vo);
    ArrayList<ChatMessageVO> allMsg (int chatroom_num);
    int chatroomCreate (ChatRoomVO vo);
    int chatroomDelete (int CHATROOM_NUM);
    HashMap<String, Object> chatroomDetail (int CHATROOM_NUM);
}
