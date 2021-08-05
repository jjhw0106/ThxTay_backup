package com.tt.User;

import com.tt.exception.LoginException;
import com.tt.exception.UserRegisterException;
import com.tt.web.utils.SessionUtils;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserServiceImpl implements UserService {
	
	// @Autowired CartItemDao cartItemDao;
	// @Autowired ReviewDao reviewDao;
	@Autowired UserDao userDao;
	
	@Override
	public void registerUser(UserVO user) {
		String secretPassword = DigestUtils.sha256Hex(user.getPassword());
		user.setPassword(secretPassword);
		
		userDao.insertUser(user);
	}
	
	@Override
	public void login(String userEmail, String userPassword) {
		UserVO user = userDao.getUserByEmail(userEmail);
		System.out.println("이메일은? " + user.getEmail());
		System.out.println("패스워드는? " + user.getPassword());

		if (user == null) {
			throw new LoginException("아이디/비밀번호 오류", "아이디 혹은 비밀번호가 유효하지 않습니다.");
		}
		if (!"N".equalsIgnoreCase(user.getDeleted())) {
			throw new LoginException("사용중지된 회원", "탈퇴 혹은 일시정지 처리된 사용자입니다.");
		}
		
		/*String secretPassword = DigestUtils.sha256Hex(userPassword);
		if (!user.getPassword().equals(secretPassword)) {
			throw new LoginException("아이디/비밀번호 오류", "아이디 혹은 비밀번호가 유효하지 않습니다.");
		}*/
		
		SessionUtils.addAttribute("LOGINED_USER", user);
	}

	@Override
	public int getUserByEmail(String email) {
		int res = -1;
		UserVO user = userDao.getUserByEmail(email);

		if (user != null) {
			res = 1;	// 이메일이 있다.
		} else {
			res = 0;	// 이메일이 없다.
		}

		return res;
	}

	@Override
	public UserVO getUserByNo(int userNo) {
		return userDao.getUserByNo(userNo);
	}
}