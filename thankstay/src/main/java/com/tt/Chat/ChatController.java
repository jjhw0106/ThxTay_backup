package com.tt.Chat;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.tt.User.UserService;
import com.tt.User.UserVO;
import com.tt.web.annotation.LoginUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.*;

@Controller
public class ChatController {

	@Autowired ChatService chatService;

	@RequestMapping(value="chatRoom.ch")
	public String enterChatRoom(@RequestParam("ES_ORDER_NUM") int bookingNo, Model model, @LoginUser UserVO user) {
		UserVO vo = new UserVO();
		UserVO wvo = new UserVO();

		if (user != null) {
			if (user.getIsHost().equals('N')) {
				vo = chatService.getUser(user.getEmail());
				model.addAttribute("USER_EMAIL", user.getEmail());
				model.addAttribute("USER_NAME", vo.getName());
				model.addAttribute("USER_PICTURE", vo.getPicture());
			} else if(user.getIsHost().equals('Y')) {
				wvo = chatService.getHost(user.getEmail());
				model.addAttribute("USER_EMAIL", user.getEmail());
				model.addAttribute("USER_NAME", wvo.getName());
				model.addAttribute("USER_PICTURE", wvo.getPicture());
			}
		}

		int MSG_CHATROOM_NUM = bookingNo;
		ArrayList<ChatMessageVO> msgList = chatService.getChatMsg(MSG_CHATROOM_NUM);
		HashMap <String, Object> chatMap = chatService.chatroomDetail(MSG_CHATROOM_NUM);

		model.addAttribute("MSGLIST", msgList);
		model.addAttribute("CHATROOM_NUM", MSG_CHATROOM_NUM);

		return "chat/room/chatRoom";
	}

	@RequestMapping(value="sendChat.ch", produces="application/json; charset=UTF-8")
	@ResponseBody
	public Map<String, Object> sendChat(@RequestBody Map <String, Object> msg) {
		ChatMessageVO vo = new ChatMessageVO();

		vo.setCrNo((int)msg.get("MSG_CHATROOM_NUM"));
		vo.setContents((String)msg.get("MSG_CONTENT"));
		vo.setCreatedTime((Date)msg.get("MSG_DATE"));

		Map<String, Object> retVal = new HashMap<String, Object>();

		try {
			int res = chatService.insertChatMsg(vo);

			if (res == 1)
				retVal.put("res", "Success");
			else
				retVal.put("res", "Not saved");
		}
		catch (Exception e) {
			retVal.put("res", "FAIL");
		}

		return retVal;
	}

	@RequestMapping(value="session1.ch")
	public String session1(HttpSession session) {
		session.setAttribute("MEMBER_EMAIL", "cndanrh26@naver.com");

		return "index";
	}

	@RequestMapping(value="session2.ch")
	public String session2(HttpSession session) {
		session.setAttribute("MEMBER_EMAIL", "hadonggun@gmail.com");

		return "index";
	}

}