package com.tt.Host;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

//어찌짤까? Controller(URL 주소연결)->HostDao->sql->Service->ServiceImpl-> Controller 완성 
@Controller
public class HostMainController {

	private static Logger logger = LogManager.getLogger(HostMainController.class);

	@GetMapping(path = { "/hosting" })
	public String hosting(Model model) {
		
		
		
		model.addAttribute("인자 전달 성공");
		return "host/hostMain";
	}

}
