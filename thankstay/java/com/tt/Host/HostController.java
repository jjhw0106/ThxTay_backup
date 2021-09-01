package com.tt.Host;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tt.Lodging.LodgingVO;
import com.tt.vo.FilteringVO;
import com.tt.vo.TransactionHistoryDTO;
import com.tt.vo.TransactionHistoryVO;
import com.tt.vo.TransactionRegisterVO;

@Controller
public class HostController {

	private static Logger logger = LogManager.getLogger(HostController.class);
	
	int userNo = 1001;
	
	@Autowired ListingsService listingsService;
	
	/* 호스트가 등록한 숙소 리스트출력 (메뉴 > 숙소) */
	@GetMapping(path = {"/host/listings"})
	public String listings(Model model) {
		List<LodgingVO> lodgings = listingsService.getMyLodgings(userNo);
		model.addAttribute("lodgings",lodgings);
		System.out.println(model);
		return "host/listings";
	}
	
	/* 호스트가 등록한 숙소 필터링 (메뉴 > 숙소) */
	@GetMapping(path = {"/host/filtering"})
	public @ResponseBody ResponseEntity<List<LodgingVO>> doFilteringLodgings(FilteringVO filtering){
		//filtering.getKitchen();
		System.out.println("#########################################시작");
		System.out.println(filtering);
		logger.info("filter실행");
		
		List<LodgingVO> lodgings = listingsService.getLodgingsByFiltering(filtering);
		return new ResponseEntity<List<LodgingVO>>(lodgings, HttpStatus.OK);
	}
	
	@Autowired TransactionRegisterService transactionRegisterService;
	@Autowired TransactionHistoryService transactionHistoryService;
	
	/* 호스트 대금 등록 HOME & 대금수령 리스트 출력 (메뉴 > 대금수령내역) */
	@GetMapping("/host/transactionhome")
	public String getAllTransactionHistory(Model model) throws Exception {
		List<TransactionHistoryDTO> transHistory = transactionHistoryService.getAllTransactionHistory(userNo);
		System.out.println("#########################################시작");
		System.out.println(transHistory);
		model.addAttribute("transHistory", transHistory);
		return "host/transactionhome";
	}

	/* 호스트 대금 등록 FORM (GET) (메뉴 > 대금수령내역) */
	@GetMapping("/host/trans1")
	public String transactionRegisterForm() {
		return "host/trans1";
	}
	/* 호스트 대금 등록 FORM (POST) (메뉴 > 대금수령내역) */
	@PostMapping("/host/trans1")
	public String transactionRegister(TransactionRegisterVO register) {
		TransactionRegisterVO registerBank = new TransactionRegisterVO();
		BeanUtils.copyProperties(register, registerBank);
		
		transactionRegisterService.insertBank(registerBank);
		
		return "host/transactionhome";
	}
	
	/* 대금수령 리스트 EXCEL(CSV다운로드) (메뉴 > 대금수령내역) */
	@RequestMapping(value="/host/transactionhome")
	@ResponseBody
	public void excelDown(@ModelAttribute TransactionHistoryDTO download, HttpServletResponse response, HttpServletRequest request) throws Exception {
		transactionHistoryService.excelDownload(download, response);
	}

	/* 호스트 인사이트 수입 (메뉴 > 인사이트 > 수입) */
	@GetMapping("/host/earnings")
	public String earnings() {
		return "host/earnings";
	}
	

}