package com.tt.Host;

import java.util.List;

import com.tt.Lodging.LodgingVO;

public interface HostService {
	/* jhw 추가 */
	
	/**
	 * 숙소타입, 예약상태 등 공통코드로  체크박스 리스트 불러오기
	 * @return
	 */
	
	/*
	 * 1. codecontent(숙소 유형 등)로 commonCode 구하기
	 * 2. 1번의 commonCode와 동일한 parentCode를 갖는 commonCodeVO 리스트 획득
	 */
	
//	String getCommonCodeByContent(String codeContent);
//	
//	List<CommonCodeVO> getCommonCodesByParentCode(String commonCode);
//	
//	List<CommonCodeVO> getAllCommonCodes();
	
	List<LodgingVO> getLodgingsByLoginedUserNo(int userNo);
	
	

	
	/* jhw 추가 */
}
