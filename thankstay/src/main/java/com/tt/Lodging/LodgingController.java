package com.tt.Lodging;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tt.Common.CommonConstant;
import com.tt.Common.CommonService;
import com.tt.Host.HostMainController;
import com.tt.Host.HostService;
import com.tt.Host.PriceService;
import com.tt.User.UserService;
import com.tt.User.UserVO;
import com.tt.Common.CommonCodeVO;
import com.tt.web.annotation.LoginUser;
import com.tt.web.form.LodgingRegisterForm;
import com.tt.web.form.PriceRegisterForm;

@Controller
public class LodgingController {
	private static Logger logger = LogManager.getLogger(HostMainController.class);

	@Autowired
	CommonService commonService;
	@Autowired
	HostService hostService;
	@Autowired
	UserService userService;
	@Autowired
	LodgingService lodgingService;
	@Autowired
	LodgingImgService lodgingImgService;
	@Autowired
	LodgingAmtService lodgingAmtService;
	@Autowired
	PriceService priceService;

	@GetMapping("/lodgingTypeAdd")
	public String lodgingAddForm(@LoginUser UserVO user, Model model) {
		logger.info("로그인 유저:" + user);
		logger.info("lodgingTypeAddForm() 실행");

		String commonCode = commonService.getCommonCodeByContent("숙소타입");
		List<CommonCodeVO> lodgingTypeCodes = commonService.getCommonCodesByParentCode(commonCode);
		LodgingVO lodgingRegistering=lodgingService.getLodgingRegistering(user.getNo());
		
		
		model.addAttribute("lodgingRegistering",lodgingRegistering);
		model.addAttribute("lodgingTypes", lodgingTypeCodes);

		return "host/registerLodging/lodgingTypeAddForm";
	}

	@PostMapping("/lodgingDetailAdd")
	public String lodgingDetailAddForm(@LoginUser UserVO user, Model model, LodgingRegisterForm lrForm,
			@RequestParam("ldgType") String type) { // ,
		logger.info("lodgingDetailAddForm 실행");

		String typeCmCode = commonService.getCommonCodeByContent(type);
		// 로그인한 유저의 숙소 중 숙소 상태가 "등록중"인 숙소 반환
		LodgingVO lodgingRegistering = lodgingService.getLodgingRegistering(user.getNo());

		model.addAttribute("loginedUser", user);
		model.addAttribute("lodgingRegistering", lodgingRegistering == null ? lrForm : lodgingRegistering);
		model.addAttribute("ldgType", typeCmCode);

		System.out.println("숙소타입의 공통코드:" + typeCmCode);
		System.out.println("등록중인 숙소는:" + lodgingRegistering);
		return "host/registerLodging/lodgingDetailAddForm";
	}

	@PostMapping("/lodgingAddressAdd")
	public String lodgingAddressAddForm(@LoginUser UserVO user, LodgingRegisterForm lrForm, Model model) {
		logger.info("lodgingAddressAddForm 실행");
		LodgingVO lodgingRegistering = lodgingService.getLodgingRegistering(user.getNo());

		model.addAttribute("loginUser", user);

		if (lodgingRegistering == null) {
			lodgingRegistering = new LodgingVO();
			BeanUtils.copyProperties(lrForm, lodgingRegistering);
		}
		lodgingRegistering.setName(lrForm.getName());
		lodgingRegistering.setBedroom(lrForm.getBedroom());
		lodgingRegistering.setBathroom(lrForm.getBathroom());
		lodgingRegistering.setSinglebed(lrForm.getSinglebed());
		lodgingRegistering.setDoublebed(lrForm.getDoublebed());
		lodgingRegistering.setDescription(lrForm.getDescription());

		System.out.println("등록중인 lodgingRegistering:" + lodgingRegistering);
		System.out.println("등록중인 lrForm:" + lrForm);

		model.addAttribute("lodgingRegistering", lodgingRegistering);// lodgingRegistering == null ? lrForm :
																		// lodgingRegistering);

		return "host/registerLodging/lodgingAddressAddForm";
	}

	@GetMapping("/lodgingAmenityAdd")
	public String lodgingAmenityAddForm(@LoginUser UserVO user,LodgingRegisterForm lrForm, Model model) {
		logger.info("lodgingAmenityAddForm 실행");
		lodgingService.saveProgress(user, lrForm);
		
		LodgingVO lodgingRegistering = lodgingService.getLodgingRegistering(user.getNo());

		String amnCode = commonService.getCommonCodeByContent(CommonConstant.AMN_TYPE);
		List<CommonCodeVO> amnTypes = commonService.getCommonCodesByParentCode(amnCode);

		model.addAttribute("loginUser", user);
		model.addAttribute("lodgingRegistering", lodgingRegistering);
		model.addAttribute("amnTypes", amnTypes);

		System.out.println("등록중인 숙소는:" + lodgingRegistering);
		return "host/registerLodging/lodgingAmenityAddForm";
	}

	@PostMapping("/lodgingAmenityAdd")
	@ResponseBody
	public List<CommonCodeVO> lodgingAmenityAddForm(@RequestParam(name = "codeContent", required = false) String codeContent) {
		List<CommonCodeVO> retVal = new ArrayList<CommonCodeVO>();

		String cmCode = commonService.getCommonCodeByContent(codeContent);
		retVal = commonService.getCommonCodesByParentCode(cmCode);
		for (CommonCodeVO val : retVal) {
			System.out.println("조회된값:" + val);
		}
		return retVal;

	}

	@GetMapping("/lodgingImgAdd")
	public String lodgingImgAddForm(@LoginUser UserVO user, Model model, @RequestParam("selected-items") List<String> amenityList, @RequestParam("no") int ldgNo) {
		logger.info("lodgingImgAddForm 실행");
		lodgingService.saveProgress(user, amenityList, ldgNo);
		
		LodgingVO lodgingRegistering = lodgingService.getLodgingRegistering(user.getNo());
		int lodgingNo = lodgingRegistering.getNo();
		int getCnt = 4;

		Map<String, Integer> condition = new HashMap<String, Integer>();
		condition.put("lodgingNo", lodgingNo);
		condition.put("getCnt", getCnt);
		List<LodgingImgVO> imgList = lodgingImgService.getImgListByLdgNo(condition);
		model.addAttribute("imgList", imgList);

		System.out.println("등록중인 숙소는:" + lodgingRegistering);
		System.out.println("숙소번호: " + lodgingNo);
		System.out.println("이미지 정보: " + imgList);
		return "host/registerLodging/lodgingImgAddForm";
	}

	@PostMapping("/lodgingImgAdd")
	@ResponseBody
	public Map<String, Object> lodgingImgAddForm(@RequestParam(name = "picture", required = false) MultipartFile upfile,
			@LoginUser UserVO user, MultipartHttpServletRequest req, Model model) throws IOException {

		LodgingVO lodgingRegistering = lodgingService.getLodgingRegistering(user.getNo());
		int lodgingNo = lodgingRegistering.getNo();

		// 파일 업로드
		// 프로퍼티스 파일에 경로 설정해서 뿌리기
		String uploadPath = req.getSession().getServletContext().getRealPath("/"); // Q. .metadata 안의 경로로 저장이됨
		String filename = System.currentTimeMillis() + upfile.getOriginalFilename();
		FileItem fileItem = new FileItem();
		fileItem.setFilename(filename);
		FileCopyUtils.copy(upfile.getInputStream(), new FileOutputStream(new File(uploadPath + "resources/images/lodgings", filename)));

		File fileDir = new File(uploadPath + "resources/images/lodgings");
		if (!fileDir.exists()) {
			fileDir.mkdirs();
		}

		// 등록중인 숙소의 번호로 숙소이미지리스트 vo 조회 후 insert
		LodgingImgVO lodgingImg = new LodgingImgVO();
		lodgingImg.setUri("/resources/images/lodgings/" + fileItem.getFilename());
		lodgingImg.setLodgingNo(lodgingNo);
		lodgingImgService.addImg(lodgingImg);

		System.out.println("업로드 파일 주소:" + uploadPath);

		/* 숙소 이미지파일 조회&화면뿌리기 */
		// 내려주는 파일
		Map<String, Integer> condition = new HashMap<String, Integer>();
		int getCnt = 4;
		condition.put("lodgingNo", lodgingNo);
		condition.put("getCnt", getCnt);
		List<LodgingImgVO> pictures = lodgingImgService.getImgListByLdgNo(condition);

		Map<String, Object> retVal = new HashMap<String, Object>();
		retVal.put("upfile", pictures);// MultipartFile객체는 바이너리 데이터를 포함하고 있어서 json으로 변환이 되지 않는다.
		logger.info("보내는 파일 " + pictures);
		logger.info("리턴밸류 " + retVal);

		System.out.println("pictures=" + pictures);
		return retVal;
	}

	@GetMapping("/lodgingPriceAdd")
	public String lodgingPriceAddForm(@LoginUser UserVO user, Model model) {
		logger.info("lodgingPriceAddForm 실행");

		LodgingVO lodgingRegistering = lodgingService.getLodgingRegistering(user.getNo());
		model.addAttribute("lodgingRegistering", lodgingRegistering);
		System.out.println("등록중 숙소" + lodgingRegistering);

		return "host/registerLodging/lodgingPriceAddForm";
	}

	//중간저장  "/saveTemp" 하나로 보내고 싶은데 how?
	@PostMapping("/saveTemp")
	public String saveTemp(@LoginUser UserVO user, LodgingRegisterForm lrForm) {
		logger.info("saveTemp 실행");
		LodgingVO lodging = new LodgingVO();

		lodgingService.saveProgress(user, lrForm);
		return "redirect:lodgingRegister";
	}

	@PostMapping("/saveTemp3")
	public String saveTemp3(@LoginUser UserVO user, @RequestParam("selected-items") List<String> amenityList, @RequestParam("no") int ldgNo) {
		
		System.out.println("유저번호:" + user.getNo());
		System.out.println("등록중숙소번호:" + ldgNo);
		for (String amenity : amenityList) {
			System.out.println("편의시설:" + amenity);
		}
		
		lodgingService.saveProgress(user, amenityList, ldgNo);
		return "redirect:lodgingRegister";
	}

	@PostMapping("/saveTemp4")
	public String lodgingPriceAddForm(@LoginUser UserVO user, PriceRegisterForm prForm, @RequestParam("startDate") Date startDate, @RequestParam("endDate") Date endDate) {
		logger.info("lodgingPriceAddForm 실행");
		System.out.println("prForm" + prForm);
		priceService.RegisterPrice(prForm, startDate, endDate);
		lodgingService.updateLodgingStatus(prForm.getLodgingNo());
		return "redirect:hosting";
	}
}
