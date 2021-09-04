package com.tt.Lodging;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.tt.Common.CommonConstant;
import com.tt.Common.CommonDao;
import com.tt.Common.CommonService;
import com.tt.Host.PriceDao;
import com.tt.Host.PriceDto;
import com.tt.User.UserVO;
import com.tt.web.annotation.LoginUser;
import com.tt.web.form.LodgingRegisterForm;
import com.tt.web.form.PriceRegisterForm;

@Service
public class LodgingServiceImpl implements LodgingService {
	@Autowired
	LodgingDao lodgingDao;
	@Autowired 
	CommonDao commonDao;
	@Autowired
	PriceDao priceDao;
	@Autowired
	CommonService commonService;
	@Autowired
	LodgingAmtService amtService;
	/**
	 * 등록중인 숙소의 detail 저장
	 */
	
	
	@Override
	public List<LodgingVO> getLodgingsByLoginedUserNo(int userNo) {
		return lodgingDao.getLodgingsByUserNo(userNo);
	}

	/**
	 * 로그인한 유저의 숙소 중 상태가 "등록중" 숙소 반환
	 */
	@Override
	public LodgingVO getLodgingRegistering(int userNo) {
		List<LodgingVO> lodgingList=lodgingDao.getLodgingsByUserNo(userNo);
		for (LodgingVO lodgingVO : lodgingList) {
			String statusCode= commonDao.getCommonCodeByCodeContent(CommonConstant.LDG_REGISTERING);	//"등록중" 있던 자리
			
			if(lodgingVO.getStatus().equals(statusCode)) {
				return lodgingVO;
			}
		}
		return null;
	}

	@Override
	public void registerLodging(LodgingVO lodging) {
		lodgingDao.insertLodging(lodging);
	}

	@Override
	public void updateLodging(LodgingVO lodging) {
		lodgingDao.updateLodging(lodging);
	}

	@Override
	public void updateLodgingStatus(int lodgingNo) {
		lodgingDao.updateLodgingStatus(lodgingNo);
	}
	
	/**
	 * 숙소 세부사항 중간저장
	 */
	public void saveProgress(UserVO user, LodgingRegisterForm lrForm) {
		System.out.println("중간저장 실행");
		LodgingVO lodging = new LodgingVO();
		
		// 이미 상태가 등록중인 숙소는 lodgingService의 update작업 실행
				if (!lrForm.getStatus().isEmpty()) {
					BeanUtils.copyProperties(lrForm, lodging);
					int maxGuest=lrForm.getSinglebed()+lrForm.getDoublebed()*2;
					lodging.setMaxGuest(maxGuest);
					updateLodging(lodging);
					System.out.println("업데이트 실행");
					return;
				}

				// 등록상태가 null일 경우 등록상태:등록중 으로 초기화 먼저 실행 후 숙소등록 작업 실행
				lrForm.setStatus(commonService.getCommonCodeByContent(CommonConstant.LDG_REGISTERING));
				BeanUtils.copyProperties(lrForm, lodging);
				int maxGuest=lrForm.getSinglebed()+lrForm.getDoublebed()*2;
				lodging.setMaxGuest(maxGuest);
				lodging.setUserNo(user.getNo());
				
				registerLodging(lodging);
				System.out.println("저장된 숙소의 정보:" + lodging);
	}
	/**
	 * 숙소 편의시설 중간저장
	 */
	public void saveProgress( UserVO user, List<String> amenityList, int ldgNo) {
		AmenityListVO amenity = new AmenityListVO();

		// for문 돌면서 ldgNo 추가, amtCode추가.
		if(amenityList!=null) {
			for (int i = 0; i < amenityList.size(); i++) {
				// for문 마다 db접속됨 -> Q1 해결 시 코드 수정 필요
				String amtCode = commonService.getCommonCodeByContent(amenityList.get(i));
				amenity.setCode(amtCode);
				amenity.setLodgingNo(ldgNo);
				System.out.println("저장될편의시설:" + amenity);
				amtService.registerAmt(amenity); // 편의시설테이블 제약조건 수정필요, amenity_no추가해야함
			}
		}
	}

	/**
	 * 숙소 가격 저장
	 * @param user
	 * @param prForm
	 * @param startDate
	 * @param endDate
	 */
	public void saveProgress(UserVO user, PriceRegisterForm prForm, Date startDate, Date endDate) {
		// 숙소 가격입력
		PriceDto ldgPrice=new PriceDto();
		Calendar cal= Calendar.getInstance();
		Calendar cal2= Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd");

		cal.setTime(startDate);
		cal2.setTime(endDate);

		int difference = Math.abs(cal2.get(Calendar.DATE)-cal.get(Calendar.DATE));
		
		//시작날짜 데이트 삽입
		String dateStr= sdf.format(cal.getTime());
		ldgPrice.setLodgingNo(prForm.getLodgingNo());
		ldgPrice.setLodgingFee(prForm.getLodgingFee());
		ldgPrice.setCleaningFee(prForm.getCleaningFee());
		ldgPrice.setOpenDate(dateStr);
		priceDao.insertLodgingPrice(ldgPrice);
		System.out.println("price check:"+ldgPrice);
		//
		for(int i=0;i<difference;i++) {
			cal.add(Calendar.DATE, +1);
			dateStr= sdf.format(cal.getTime());
			ldgPrice.setLodgingNo(prForm.getLodgingNo());
			ldgPrice.setLodgingFee(prForm.getLodgingFee());
			ldgPrice.setCleaningFee(prForm.getCleaningFee());
			ldgPrice.setOpenDate(dateStr);
			
			System.out.println("price check:"+ldgPrice);
			priceDao.insertLodgingPrice(ldgPrice);
		}
	}

	@Override
	public String registerStatus(String content) {
		return commonDao.getCommonCodeByCodeContent(content);
	}
}
