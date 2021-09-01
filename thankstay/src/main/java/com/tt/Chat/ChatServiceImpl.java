package com.tt.Chat;

import com.tt.User.UserDao;
import com.tt.User.UserVO;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Service
public class ChatServiceImpl implements ChatService {

	@Autowired ChatDao chatDao;
	@Autowired UserDao userDao;

	@Override
	public UserVO getUser(String userEmail) {
		return userDao.getUserByEmail(userEmail);
	}

	@Override
	public UserVO getHost(String hostEmail) {
		return userDao.getHostByEmail(hostEmail);
	}

	@Override
	public ArrayList<ChatMessageVO> getChatMsg (int chatroom_num) {
		return chatDao.allMsg(chatroom_num);
	}

	@Override
	public int insertChatMsg (ChatMessageVO vo) {
		return chatDao.insertMsg(vo);
	}

	@Override
	public int chatroomCreate (ChatRoomVO vo) {
		return chatDao.chatroomCreate(vo);
	}

	@Override
	public int chatroomDelete (int CHATROOM_NUM) {
		return chatDao.chatroomDelete(CHATROOM_NUM);
	}

	@Override
	public HashMap<String, Object> chatroomDetail (int CHATROOM_NUM) {
		return chatDao.chatroomDetail(CHATROOM_NUM);

	}
}