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
		// 패스워드 암호화
		String secretPassword = DigestUtils.sha256Hex(user.getPassword());
		user.setPassword(secretPassword);
		
		userDao.insertUser(user);
	}

	@Override
	public void registerProfile(UserVO user) {

		userDao.updateProfile(user);
	}

	@Override
	public int login(String userEmail, String userPassword) {
		int res = -1;
		UserVO user = userDao.getUserByEmail(userEmail);

		String secretPassword = DigestUtils.sha256Hex(userPassword);
		if (!user.getPassword().equals(secretPassword)) {
			// 패스워드가 맞지 않다면 0
			res = 0;
		} else {
			// 패스워드가 맞으면 1
			res = 1;
			// 세션에 LOGINED_UESR 란 이름으로 넣음
			SessionUtils.addAttribute("LOGINED_USER", user);
		}

		return res;
	}

	@Override
	public int getUserByEmail(String email) {
		int res = -1;
		UserVO user = userDao.getUserByEmail(email);

		if (user != null) {
			if (!"N".equalsIgnoreCase(user.getDeleted())) {
				throw new LoginException("사용중지된 회원", "탈퇴 혹은 일시정지 처리된 사용자입니다.");
			}
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