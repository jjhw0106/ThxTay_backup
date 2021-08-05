package com.tt.User;

import com.tt.exception.LoginException;
import com.tt.exception.UserRegisterException;
import com.tt.web.form.UserRegisterForm;
import com.tt.web.utils.SessionUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

/*
 * @Controller
 * 		- 클라이언트의 요청을 처리하는 컨트롤러 클래스임을 나타낸다.
 * 		- <context:component-scan /> 태그를 xml에 설정했을 때 자동으로 스프링 컨테이너의 빈으로 등록된다.
 */
@Controller
public class UserController {

	@Autowired UserService userService;

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

	/*
	@PostMapping("/register")
	public String register(@RequestParam("id") String userId,
			@RequestParam("password") String userPassword,
			@RequestParam("passwordConfirm") String userPasswordConfirm,
			@RequestParam("name") String userName,
			@RequestParam("email") String userEmail,
			@RequestParam("phone") String userPhone) {
		logger.debug("register() 실행됨");
		logger.info("회원정보를 등록함");

		logger.debug("register() 종료됨");
		return "redirect:home";
	}

	@PostMapping("/register")
	public String register(String id, String password, String passwordConfirm,
			String name, String email, String phone) {
		logger.debug("register() 실행됨");
		logger.info("회원정보를 등록함");

		logger.debug("register() 종료됨");
		return "redirect:home";
	}
	 */

	@PostMapping("/register")
	@ResponseBody
	public Map<String, Object> register(UserRegisterForm userRegisterForm) {
		Map<String, Object> retVal = new HashMap<String, Object>();
		// User객체를 생성하고, UserRegisterForm의 값을 User객체로 복사한다.
		UserVO user = new UserVO();
		BeanUtils.copyProperties(userRegisterForm, user);

		// UserService의 registerUser(user)를 호출해서 업무로직을 수행한다.
		userService.registerUser(user);

		retVal.put("res", "OK");
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
		System.out.println("res 값은 :" + res);
		if (res == 1) {
			retVal.put("res", "OK");

		} else if (res == 0) {
			retVal.put("res", "FAIL");
		}

		return retVal;
	}

	@GetMapping("/login")
	public String loginform() {
		return "loginForm";
	}

	@PostMapping("/login2")
	public String login(@RequestParam("email") String userEmail, @RequestParam("password") String userPassword) {

		userService.login(userEmail, userPassword);

		// 로그인 전 페이지로 되돌아가기
		String returnPath = (String) SessionUtils.getAttribute("returnPath");
		SessionUtils.removeAttribute("returnPath");
		if (returnPath != null) {
			return "redirect:" + returnPath;
		}

		return "redirect:/home";
	}

	@GetMapping("/logout")
	public String logout() {
		SessionUtils.destroySession();
		return "redirect:home";
	}
}