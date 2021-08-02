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
import com.tt.Lodging.LodgingVO;
import com.tt.User.UserVO;
import com.tt.vo.CommonCodeVO;
import com.tt.web.annotation.LoginUser;

//어찌짤까? Controller(URL 주소연결)->HostDao->sql->Service->ServiceImpl-> Controller 완성 
@Controller
public class HostMainController {

	private static Logger logger = LogManager.getLogger(HostMainController.class);
	
	
	@Autowired
	HostService hostService;
	

	@GetMapping(path = { "/hosting" })
	public String hosting(Model model) {
		
		return "host/hostMain";
	}
	
	@GetMapping("/lodgingRegister")
	public String lodgingRegisterForm(UserVO user, Model model) {	//ajax라 model 삭제할것
		logger.info("lodgingRegisterForm() 실행");
		
		
		List<CommonCodeVO> commonVo = hostService.getAllCommonCodes();
		for (CommonCodeVO commonCodeVO : commonVo) {
			System.out.println(commonCodeVO.getCommonCode());
		}
		
		String commonCode = hostService.getCommonCodeByContent("숙소타입");
		System.out.println("커몬코드는"+ commonCode);
		
		List<CommonCodeVO> lodgingTypeCodes = hostService.getCommonCodesByParentCode(commonCode);
		System.out.println("사이즈는!!!!:"+lodgingTypeCodes.size());
		System.out.println("DDDSAFS : "+lodgingTypeCodes);
		for (CommonCodeVO commonCodeVO : lodgingTypeCodes) {
			System.out.println("숙소타입목록: "+commonCodeVO.getCommonCode());
		}
		// 숙소 타입 -> 체크박스 (공통코드로 불러와야함) 
		// 나머지는 -> input
		  
		 
		return "host/lodgingRegisterForm";
	}
	

	/* 
	 * 문제점 : 숙소 정보, 숙소 주소를 다른 페이지에서 입력할 건데 not null 제약조건때문에 에러가 발생할 것 같음
	 * 등록한 부분까지 저장해 놓고 다음에 다시 등록하려면 저장한 부분까지 불러오는 방식으로 구현하려 함	
	 */
	@PostMapping("/lodgingRegister")
	public String lodgingRegister() {
		
		return "redirect:hostMain";
	}
	
}
