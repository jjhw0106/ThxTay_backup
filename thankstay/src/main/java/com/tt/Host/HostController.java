package com.tt.Host;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tt.Lodging.LodgingImgService;
import org.apache.commons.collections4.map.HashedMap;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tt.Common.CommonCodeVO;
import com.tt.Lodging.LodgingVO;
import com.tt.User.UserService;
import com.tt.User.UserVO;
import com.tt.web.annotation.LoginUser;

@Controller
public class HostController {

	private static Logger logger = LogManager.getLogger(HostController.class);
	
	@Autowired ListingsService listingsService;
	@Autowired UserService userService; 
	@Autowired TransactionRegisterService transactionRegisterService;
	@Autowired TransactionHistoryService transactionHistoryService;
	@Autowired EarningsService earningsService;
	@Autowired LodgingImgService lodgingImgService;
	
	/*listings*/
	/* 호스트가 숙소 리스트출력 (메뉴 > 숙소) */
	@GetMapping(path = {"/host/listings"})
	public String listings(@LoginUser UserVO user, Model model) {
		List<LodgingVO> lodgings = listingsService.getMyLodgings(user.getNo());

		model.addAttribute("lodgings",lodgings);
		System.out.println(model);
		return "host/listings";
	}

	/*transaction*/
	/* 호스트 대금 등록(GET) (메뉴 > 대금수령내역) */
	@GetMapping("/host/trans1")
	public String transactionRegisterForm(@LoginUser UserVO user, String code, Model model) throws Exception{
		List<CommonCodeVO> accountCodes = transactionRegisterService.getCommonCodeByPntCode("PMT01%");
		model.addAttribute("accountCodes", accountCodes);
		List<CommonCodeVO> bankCodes = transactionRegisterService.getCommonCodeByPntCode("PMT02%"); 
		model.addAttribute("bankCodes", bankCodes);
		System.out.println(user.getBirth() + "생년월일");
		model.addAttribute("user", user);	
		
		return "host/trans1";
	}
	/* 호스트 대금 등록(POST) (메뉴 > 대금수령내역) */
	@PostMapping("/host/trans2")
	public String transactionRegister(@LoginUser UserVO user, TransactionRegisterVO register) {
		TransactionRegisterVO registerBank = new TransactionRegisterVO();
		BeanUtils.copyProperties(register, registerBank);
		registerBank.setUserNo(user.getNo());
		transactionRegisterService.insertBank(registerBank);
		
		return "host/transactionhome";
	}
	/* 호스트 대금 HOME (메뉴 > 대금수령내역) */
	@GetMapping("/host/transactionhome")
	public String transactionRegisterBankAccount (@LoginUser UserVO user, Model model) throws Exception {	
		TransactionRegisterVO transactionRegister = transactionHistoryService.getTransactionHistoryByUserNo(user.getNo());
		model.addAttribute("transHistory", transactionRegister);
		
		System.out.println("-----------------------------------");
		System.out.println(transactionRegister);
		
		List<LodgingVO> lodgings = transactionHistoryService.getAllLodgingsByUserNo(user.getNo());
		model.addAttribute("lodgings", lodgings);
		
		System.out.println("-----------------------------------");
		System.out.println(lodgings);
		return "host/transactionhome";
	}
	/* 호스트 대금 Ajax (메뉴 > 대금수령내역) */
	@GetMapping("/host/historyJson")
	@ResponseBody
	public List<TransactionHistoryDTO> historyJson(@LoginUser UserVO user,
		@RequestParam("lodging") int lodgingNo,
		@DateTimeFormat(pattern = "yyyy-MM-dd")Date startDate,
		@DateTimeFormat(pattern = "yyyy-MM-dd")Date endDate) throws Exception {
		
		Map<String, Object>map = new HashedMap<String, Object>();
		map.put("userNo", user.getNo());
		map.put("lodgingNo", lodgingNo);
		map.put("startDate", startDate);
		map.put("endDate", endDate);
		List<TransactionHistoryDTO> transHistory = transactionHistoryService.getAllTransactionHistoryByHashMap(map);
		
		System.out.println(transHistory);
		
		return transHistory;
	}
	/* 호스트 대금 EXCEL(CSV다운로드) (메뉴 > 대금수령내역) */
	@RequestMapping(value="/host/transactionhomeexcel")
	public @ResponseBody void excelDown(@ModelAttribute TransactionHistoryDTO download, @LoginUser UserVO user, HttpServletResponse response, HttpServletRequest request) throws Exception {
		
		transactionHistoryService.excelDownload(user, download, response);
	}	
	
	/*earnings*/
	/* 호스트 인사이트 수입 (메뉴 > 인사이트 > 수입) */
	@RequestMapping("host/earnings")
	public String earnings(@LoginUser UserVO user, Model model) throws Exception {
		
		return "host/earnings";
	}
	@RequestMapping("/host/earningsJson")
	@ResponseBody
	public Map<String, Object> earningsJson(@LoginUser UserVO user, @DateTimeFormat(pattern = "yyyy-MM-dd")Date startDate, Model model) throws Exception {
		Map<String, Object> map = new HashedMap<String, Object>();
		map.put("userNo", user.getNo());
		map.put("startDate", startDate);
		EarningsVO earnings = earningsService.getEarningsByHashMap(map);
		List<EarningsVO> earningsList = earningsService.getEarningsChartbyHashMap(map);
		Map<String, Object> result = new HashMap<>();
		result.put("earnings", earnings);
		result.put("chart", earningsList);
		
		return result;
	}
	/*
	@Scheduled(cron= "0/10 * * * * * ?")
	public void updateEarnings(@LoginUser UserVO user) throws Exception {
		earningsService.updateEarnings(user.getNo());
		
		System.out.println("실행" + new Date());
	}
	*/
	
}