package com.tt.User;

import com.tt.exception.LoginException;
import com.tt.exception.UserRegisterException;
import com.tt.web.form.KakaoRegisterForm;
import com.tt.web.form.UserRegisterForm;
import com.tt.web.utils.SessionUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/*
 * @Controller
 * 		- 클라이언트의 요청을 처리하는 컨트롤러 클래스임을 나타낸다.
 * 		- <context:component-scan /> 태그를 xml에 설정했을 때 자동으로 스프링 컨테이너의 빈으로 등록된다.
 */
@Controller
public class UserController {

	@Autowired
	UserService userService;

	@ExceptionHandler(UserRegisterException.class)
	public String handleUserRegisterException(UserRegisterException ex, Model model) {
		model.addAttribute("error", ex);
		return "form";
	}

	@ExceptionHandler(LoginException.class)
	public String handleLoginException(LoginException ex, Model model) {
		model.addAttribute("error", ex);
		return "loginForm";
	}

	// 요청URL : localhost/spring-mvc/register
	// 회원가입화면으로 내부이동하는 요청핸들러 메소드
	@GetMapping("/register")
	public String registerform() {
		return "form";
	}

	@PostMapping("/register")
	@ResponseBody
	public Map<String, Object> register(UserRegisterForm userRegisterForm) {
		Map<String, Object> retVal = new HashMap<String, Object>();
		// User객체를 생성하고, UserRegisterForm의 값을 User객체로 복사한다.
		UserVO user = new UserVO();
		BeanUtils.copyProperties(userRegisterForm, user);

		// UserService의 registerUser(user)를 호출해서 업무로직을 수행한다.
		userService.registerUser(user);
		System.out.println(user.getBirth() + ": 생년월일");

		retVal.put("res", "OK");
		return retVal;
	}

	@PostMapping("/registerKakao")
	@ResponseBody
	public Map<String, Object> registerKakao(KakaoRegisterForm kakaoUserRegisterForm) {
		Map<String, Object> retVal = new HashMap<String, Object>();
		// User객체를 생성하고, UserRegisterForm의 값을 User객체로 복사한다.
		UserVO user = new UserVO();
		BeanUtils.copyProperties(kakaoUserRegisterForm, user);

		int res = userService.getUserByEmail(kakaoUserRegisterForm.getEmail());

		if (res == 1) {

			userService.loginKakao(user);

			retVal.put("res", "OK");
			return retVal;
		} else if (res == 0) {

			// UserService의 registerUser(user)를 호출해서 업무로직을 수행한다.
			userService.registerKakao(user);
			System.out.println(user.getBirth() + ": 생년월일");

			retVal.put("res", "OK");
			return retVal;
		} else if (res == 2) {
			retVal.put("res", "ERROR");
			return retVal;
		}

		retVal.put("res", "FAIL");
		return retVal;
	}

	@PostMapping("/profileImg")
	public String profileImg(String picture) {

		return "redirect:home";
	}

	@GetMapping("/emailCheck")
	@ResponseBody
	public Map<String, Object> emailCheck(@RequestParam("email") String userEmail) {
		Map<String, Object> retVal = new HashMap<String, Object>();

		int res = userService.getUserByEmail(userEmail);

		if (res == 1) {
			retVal.put("res", "OK");

		} else if (res == 0) {
			retVal.put("res", "FAIL");
		} else if (res == 2) {
			retVal.put("res", "ERROR");
		}

		return retVal;
	}

	@PostMapping("/login2")
	@ResponseBody
	public Map<String, Object> login(@RequestParam("email") String userEmail, @RequestParam("password") String userPassword) {
		Map<String, Object> retVal = new HashMap<String, Object>();

		int res = userService.login(userEmail, userPassword);

		if (res == 1) {
			retVal.put("res", "OK");

		} else if (res == 0) {
			retVal.put("res", "FAIL");
		}

		return retVal;
	}

	@GetMapping("/logout")
	public String logout() {

		UserVO user = (UserVO) SessionUtils.getAttribute("LOGINED_USER");

		SessionUtils.destroySession();
		return "redirect:home";
	}

	@PostMapping("/img")
	@ResponseBody
	public Map<String, Object> result(@RequestParam(name = "picture", required = false) MultipartFile userPicture, @RequestParam("email") String userEmail, MultipartHttpServletRequest request) {
		Map<String, Object> retVal = new HashMap<String, Object>();
		UserVO user = new UserVO();

		try {
			if (userPicture == null) {
				// 이미지가 비어있을 경우
				user.setPicture("defaultProfile.jpg");
				user.setEmail(userEmail);
			} else {
				// 파일 업로드 시작
				// String uploadPath = "webapp/resources/images/upload";
				String uploadPath = request.getServletContext().getRealPath("resources/images/upload");
				System.out.println("파일 경로 : " + uploadPath);

				File fileDir = new File(uploadPath);
				if (!fileDir.exists()) {
					fileDir.mkdirs();
				}
				String originalFileExtension = userPicture.getOriginalFilename().substring(userPicture.getOriginalFilename().lastIndexOf("."));
				// 중복없이 저장
				String storedFileName = UUID.randomUUID().toString().replaceAll("-", "") + originalFileExtension;

				if (userPicture.getSize() != 0) {
					// getSize() 메소드는 파일 용량을 구해줌 / 첨부할 파일이 존재할 때 실행
					userPicture.transferTo(new File(uploadPath + "/" + storedFileName)); // 원하는 위치에 저장해줌
					user.setPicture(storedFileName);
					user.setEmail(userEmail);
				}
			}

			userService.registerProfile(user);


		} catch (Exception e) {
			System.out.println("파일업로드 실패!" + e);
		}

		retVal.put("res", "OK");
		return retVal;
	}

	@PostMapping("/withdrawal")
	public String withdrawal(int no) {
		userService.updateWithdrawal(no);

		UserVO user = userService.getUserByNo(no);

		DeletedUserVO duser = new DeletedUserVO();
		BeanUtils.copyProperties(user, duser);
		userService.insertDeletedUser(duser);

		SessionUtils.destroySession();
		return "redirect:/home";
	}
}