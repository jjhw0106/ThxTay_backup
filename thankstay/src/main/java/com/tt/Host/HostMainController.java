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
import org.springframework.web.bind.annotation.ResponseBody;

import com.tt.Lodging.LodgingService;
import com.tt.Lodging.LodgingVO;
import com.tt.User.UserService;
import com.tt.User.UserVO;
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
	public String hosting(@LoginUser UserVO user, Model model) {
		logger.info(user);
		LodgingVO lodgingRegistering= new LodgingVO();
		lodgingRegistering=lodgingService.getLodgingRegistering(user.getNo());
		
		if(user!=null) {
			model.addAttribute("loginedUser",user);
		}
		model.addAttribute("lodgingRegistering",lodgingRegistering);
		
		return "host/hostMain";
	}
	
	@PostMapping(path= {"/hosting"})
	@ResponseBody
	public boolean hosting(@LoginUser UserVO user, @RequestParam("isHost") String isHost) {
		userService.enrollHost(user.getNo());
		
		user.setIsHost(isHost); 		// 세션의 id정보 업데이트
		
		System.out.println(user.getIsHost());
		return true;
	}
	
	
	
	@GetMapping("/lodgingRegister")	
	public String lodgingRegisterStatus(@LoginUser UserVO user, Model model) {
		
		model.addAttribute("loginedUser",user);
		System.out.println("로그인한 유저:"+user);
		if (user == null) { // 로그인창 ㄱㄱ
			return "redirect:login";
		}

		//로그인한 유저의 숙소정보 전달
		
		//Q. lodgings에서 status가 '등록중'인 lodging(유저당 1개만 존재)이 필요함->  어떤방식으로 model에 변수를 넘기는것이 가장 좋은가?
		/* 1. 애초에 xml에서 getLodging을 만들어서 조회한다.
		 * 2. 컨트롤러에서 for(lodging.status='등록중'=>target = lodging, break;)후 target을 넘긴다
		 * 3. jstl을 이용하여 jsp에서 forEach, if를 통해 lodging을 구한다. ->list 전체를 검색해야 함
		 * 4. json형태로 데이터를 보내서 jsp에서 자바스크립트를 통해 구한다.
		 * 		2번이 제일 편한데 사용해도 되는지?
		 * */
		List<LodgingVO> lodgings = hostService.getLodgingsByLoginedUserNo(user.getNo());
		model.addAttribute("loginedUser", user);
		model.addAttribute("lodgings", lodgings);

		return "host/registerLodging/lodgingRegisterForm";
	}

	@PostMapping("/lodgingRegister")
	public String lodgingRegister() {

		return "redirect:hostMain";
	}

	
}
