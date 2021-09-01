package com.tt.Common;

import org.springframework.stereotype.Controller;

import java.util.Date;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tt.exception.LoginException;
import com.tt.exception.UserRegisterException;
import com.tt.Explore.ExploreFilterDao;
import com.tt.Explore.ExploreFilterService;
import com.tt.Explore.FirstFilterVO;
import com.tt.Host.HostMainController;
import com.tt.Lodging.LodgingVO;
import com.tt.User.UserService;
import com.tt.User.UserVO;
import com.tt.web.form.UserRegisterForm;
import com.tt.web.utils.SessionUtils;

/*
 * @Controller
 * 		- 클라이언트의 요청을 처리하는 컨트롤러 클래스임을 나타낸다.
 * 		- <context:component-scan /> 태그를 xml에 설정했을 때 자동으로 스프링 컨테이너의 빈으로 등록된다.
 */
@Controller
public class CommonController {
	private static Logger logger = LogManager.getLogger(CommonController.class);
	@Autowired ExploreFilterService exploreFilterService;
	
	/*
	 * @RequestMapping, @GetMapping, @PostMapping, @PutMapping, @DeleteMapping
	 * 		- 요청URL와 요청핸들러 메소드를 매핑시킨다.
	 * 		- 요청URL은 "/"로 시작한다.(절대경로 이런거 아님, 그냥 경로라는 것 나타내기 위해서 단순하게 붙인 것임)
	 * 		- @RequestMapping은 메소드, 클래스 두 군데 붙일 수 있고, 나머지는 메소드에만 붙일 수 있다.
	 * 		- 다양한 속성값을 가질 수 있다.
	 * 			* path 혹은 value
	 * 					요청핸들러 메소드와 매핑되는 요청 URL을 지정할 때 사용한다.
	 * 					2개 이상의 요청URL과 매핑되는 경우 배열형식으로 요청URL을 정의한다.
	 * 					작성예
	 * 						@RequestMapping("/home")
	 * 						@RequestMapping(value = "/home")
	 * 						@RequestMapping(path = "/home")
	 * 						@RequestMapping(value = {"/home"})
	 * 						@RequestMapping(path = {"/home"})
	 * 						@RequestMapping(value = {"/", "/home", "/main"})
	 * 						@RequestMapping(path = {"/", "/home", "/main"})
	 */

	/*
	 * Model
	 * 		- 뷰객체 혹은 뷰페이지(JSP)에 값을 전달할 때 사용하는 객체다.
	 * 		- 요청핸들러 메소드의 매개변수로 Model객체를 정의하면 HandlerAdapter가
	 * 		  요청핸들러 호출할 때 Model객체를 전달해준다.
	 * 		- 요청핸들러 메소드에서 Model객체에 값 혹은 객체를 저장하면 HttpServletRequest객체의
	 * 		  속성으로 옮겨진다.(JSP 기반의 웹 애플리케이션에 한함)
	 */
	@GetMapping(path = {"/", "/home"})
	public String home() {
		return "index";	// /WEB-INF/views/home.jsp 경로에서 "/WEB-INF/views/"와 ".jsp"를 제외한 이름
	}
	
	@GetMapping(path = {"/explore/list"})
	public String Search(String location, Model model) {
		model.addAttribute("location", location);
		return "explore/list";
	}
	
//	@GetMapping(path = {"/explore/list"})
//	public String MakeList(
			//	@RequestParam(value="lat", required=false) double latitude,
			//	@RequestParam(value="lng", required=false) double longitude,
			//	@RequestParam("location") String location,
			//	@RequestParam("check-in")@DateTimeFormat Date checkIn, 
			//	@RequestParam("check-out")@DateTimeFormat Date checkOut,
			//	@RequestParam(value="guests", required=false, defaultValue="2") int guests, 
		//	Model model) {
		//	FirstFilterVO firstFilter = new FirstFilterVO(location, checkIn, checkOut, guests);
		//	List<LodgingVO> lodgings = exploreFilterService.getLodgingsByFirstFilter(firstFilter);
		
		//	model.addAttribute("lodgings", lodgings);
		//	return "explore/list";
//	}
	
//	@GetMapping(path = "/explore")
//	public String list(Model model) {
//		List<LodgingVO> lodgings = listingsService.getMyLodgings(userNo);
//		model.addAttribute("lodgings",lodgings);
//		String requirements;
//		System.out.println(requirements);
//		return "list";
//	}
	
	/*
	 * 요청핸들러 메소드의 반환값
	 * 		- String
	 * 			* 내부이동할 JSP페이지의 이름을 반환한다.
	 * 				내부이동할 JSP페이지의 이름은 /WEB-INF/views/ 폴더에 있는 jsp 파일의 파일명이다.
	 * 				내부이동할 JSP페이지가 /WEB-INF/views/home.jsp인 경우는 "home"다.
	 * 				내부이동할 JSP페이지가 /WEB-INF/views/board/list.jsp인 경우는 "board/list"다
	 * 				내부이동하는 경로를 적을 때는 "/"로 시작할 필요가 없음
	 * 				InternalResourView, JstlView가 해당 경로의 jsp로 내부이동시킨다.
	 * 			* 클라이언트가 재요청할 URL을 반환한다.
	 * 				재요청할 URL은 "redirect:"로 시작한다.
	 * 				"redirect:list"와 "redirect:/list"는 서로 다른 경로다.
	 * 				"redirect:list"는 상대주소표기법으로 작성된 경로다.
	 * 				"redirect:/list"는 절대주소표기법으로 작성된 경로다.
	 * 				RedirectView가 해당 URL을 재요청URL로 클라이언트에게 응답으로 보낸다.
	 * 			작성예
	 * 				@Controller
	 * 				@RequestMapping("/board")
	 * 				public class BoardController {
	 *
	 * 					@GetMapping("/list")
	 * 					public String boardList() {
	 * 						...
	 * 						return "board/list";	// 실제 jsp 경로는 /WEB-INF/views/board/list.jsp다
	 * 					}
	 *
	 * 				}
	 *
	 * 		- VO객체, List객체, Map객체
	 * 			* JSP 페이지로 이동하는 것이 아니다.
	 * 			* 요청 핸들러 메소드가 반환하는 값이 직접 응답으로 클라이언트에게 전달된다.
	 * 			* 주로 JSON, XML 형태로 변환되어서 전달된다.
	 * 			* 대부분의 경우, 컨트롤러 클래스에 @Controller 대신 @RestController이 지정되어 있다.
	 * 			작성예
	 * 				@RestController
	 * 				@RequestMapping("/board")
	 * 				public class BoardController {
	 *
	 * 					@GetMapping("/detail")
	 * 					public Board getBoardDetail() {...}
	 *
	 * 					@GetMapping("/list")
	 * 					public List<Board> getBoardList() {...}
	 * 				}
	 */
}