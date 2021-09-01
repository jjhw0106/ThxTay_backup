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
	
	
	
	@GetMapping("/lodgingRegister")	// q. 이 부분이 lodgingController에 들어가야하는지?? // 58번줄 hostService->lodgingService로 옮기는 것이 맞는지?
	public String lodgingRegisterStatus(UserVO user, Model model) { // ajax라 model 삭제할것
		UserVO loginedUser = userService.getUserByNo(1);
		
		if (loginedUser == null) { // 로그인창 ㄱㄱ
			return "home";
		}
		
		

		//로그인한 유저의 숙소정보 전달
		
		//Q. lodgings에서 status가 '등록중'인 lodging(유저당 1개만 존재)이 필요함->  어떤방식으로 model에 변수를 넘기는것이 가장 좋은가?
		/* 1. 애초에 xml에서 getLodging을 만들어서 조회한다.
		 * 2. 컨트롤러에서 for(lodging.status='등록중'=>target = lodging, break;)후 target을 넘긴다
		 * 3. jstl을 이용하여 jsp에서 forEach, if를 통해 lodging을 구한다. ->list 전체를 검색해야 함
		 * 4. json형태로 데이터를 보내서 jsp에서 자바스크립트를 통해 구한다.
		 * 		2번이 제일 편한데 사용해도 되는지?
		 * */
		List<LodgingVO> lodgings = hostService.getLodgingsByLoginedUserNo(loginedUser.getNo());
		model.addAttribute("loginedUser", loginedUser);
		model.addAttribute("lodgings", lodgings);



		// 주소 입력시 카카오 지도 api에서 구해주는 위경도 값 입력해야함 -> 남미씨 쪽이랑 연관
		// 나머지는 -> input

		return "host/lodgingRegisterForm";
	}

	@PostMapping("/lodgingRegister")
	public String lodgingRegister() {

		return "redirect:hostMain";
	}

	@GetMapping("/lodgingTypeAdd")
	public String lodgingAddForm(UserVO user, Model model ) {
		UserVO loginedUser = userService.getUserByNo(1);

		logger.info("lodgingAddForm() 실행");
		String commonCode = hostService.getCommonCodeByContent("숙소타입");
		List<CommonCodeVO> lodgingTypeCodes = hostService.getCommonCodesByParentCode(commonCode);
	
		model.addAttribute("lodgingTypes", lodgingTypeCodes);
		// 숙소 타입 -> 체크박스 (공통코드로 불러와야함)
		

		return "host/lodgingTypeAddForm";
	}

}
