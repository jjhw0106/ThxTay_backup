package com.tt.Lodging;

import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

import com.tt.User.UserVO;
import com.tt.web.annotation.LoginUser;
import com.tt.web.form.LodgingRegisterForm;

public interface LodgingService {
	// 로그인한 유저의 숙소 중 commonCode가 LDG0301인 숙소 조회
		LodgingVO getLodgingRegistering(int userNo);

		String registerStatus(String content);
		
		List<LodgingVO> getLodgingsByLoginedUserNo(int userNo);
		
		void registerLodging(LodgingVO lodging);
		
		void updateLodging(LodgingVO lodging);
		
		void updateLodgingStatus(int lodgingNo);
		
		void saveProgress(@LoginUser UserVO user, LodgingRegisterForm lrForm);
	
		void saveProgress(UserVO user,  List<String> amenityList,  int ldgNo);
}
