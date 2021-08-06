package com.tt.Host;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tt.Common.CommonDao;
import com.tt.Lodging.LodgingService;
import com.tt.Lodging.LodgingVO;
import com.tt.User.UserDao;
import com.tt.User.UserService;
import com.tt.User.UserVO;
import com.tt.vo.CommonCodeVO;
import com.tt.web.annotation.LoginUser;

//어찌짤까? Controller(URL 주소연결)->HostDao->sql->Service->ServiceImpl-> Controller 완성 
@Controller
public class HostMainController {

	private static Logger logger = LogManager.getLogger(HostMainController.class);

	@Autowired
	HostService hostService;
	@Autowired
	UserService userService;
	@Autowired
	LodgingService lodgingService;
	

	@GetMapping(path = { "/hosting" })
	public String hosting(UserVO user, Model model) {

		return "host/hostMain";
	}
	
	
	
	@GetMapping("/lodgingRegister")
	public String lodgingRegisterStatus(UserVO user, Model model) { // ajax라 model 삭제할것
		logger.info("lodgingRegisterStatus() 실행");
		UserVO loginedUser = userService.getUserByNo(1);
		logger.info(loginedUser);
		
		if (loginedUser == null) { // 로그인창 ㄱㄱ
			return "home";
		}
		
		String commonCode = hostService.getCommonCodeByContent("숙소타입");

		//로그인한 유저의 숙소정보 전달
		List<LodgingVO> lod = hostService.getLodgingsByLoginedUserNo(loginedUser.getNo());
		logger.info("userNo"+loginedUser.getNo());
		logger.info("lodgings size:"+lod.size());
		logger.info("lodgings:"+lod.toString());
		model.addAttribute("loginedUser", loginedUser);
		model.addAttribute(lod);


		List<CommonCodeVO> lodgingTypeCodes = hostService.getCommonCodesByParentCode(commonCode);
		// 숙소 타입 -> 체크박스 (공통코드로 불러와야함)

		// 주소 입력시 카카오 지도 api에서 구해주는 위경도 값 입력해야함 -> 남미씨 쪽이랑 연관
		// 나머지는 -> input

		return "host/lodgingRegisterForm";
	}

	/*
	 * Q. 문제점 : 숙소 정보, 숙소 주소를 다른 페이지에서 입력할 건데 not null 제약조건때문에 에러가 발생할 것 같음 등록한 부분까지
	 * 저장해 놓고 다음에 다시 등록하려면 저장한 부분까지 불러오는 방식으로 구현하려 함
	 */
	@PostMapping("/lodgingRegister")
	public String lodgingRegister() {

		return "redirect:hostMain";
	}

	@GetMapping("/lodgingAdd")
	public String lodgingAddForm() {
		logger.info("lodgingAddForm() 실행");

		return "host/lodgingAddForm";
	}

}
