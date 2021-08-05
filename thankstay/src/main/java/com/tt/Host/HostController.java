package com.tt.Host;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tt.Lodging.LodgingVO;
import com.tt.vo.FilteringVO;

@Controller
public class HostController {

	private static Logger logger = LogManager.getLogger(HostController.class);
	
	int userNo = 1001;
	
	@Autowired ListingsService listingsService;
	
	
	@GetMapping(path = {"/host/listings"})
	public String listings(Model model) {
		List<LodgingVO> lodgings = listingsService.getMyLodgings(userNo);
		model.addAttribute("lodgings",lodgings);
		System.out.println(model);
		return "host/listings";
	}
	
	@Autowired FilteringService filteringService;
	
	@GetMapping(path = {"/host/filtering"})
	public @ResponseBody ResponseEntity<List<LodgingVO>> doFilteringLodgings(FilteringVO filtering){
		//filtering.getKitchen();
		System.out.println(filtering);
		logger.info("filter실행");
		
		//List<LodgingVO> lodgings = 
		//return new ResponseEntity<List<LodgingVO>>(, HttpStatus.OK);
		return null;
	}
	
//	@GetMapping("filtering/json")
//	public ModelAndView filteringJson(@RequestParam("filtering") String filtering) {
//		
//	}
}


