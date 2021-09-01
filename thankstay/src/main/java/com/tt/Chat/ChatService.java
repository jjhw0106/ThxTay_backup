package com.tt.Chat;

import com.tt.User.UserVO;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public interface ChatService {

    UserVO getUser(String userEmail);
    UserVO getHost(String hostEmail);
    ArrayList<ChatMessageVO> getChatMsg (int chatroom_num);
    int insertChatMsg (ChatMessageVO vo);
    int chatroomCreate (ChatRoomVO vo);
    int chatroomDelete (int CHATROOM_NUM);
    HashMap<String, Object> chatroomDetail (int CHATROOM_NUM);

}
