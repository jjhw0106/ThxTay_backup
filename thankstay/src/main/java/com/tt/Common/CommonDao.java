package com.tt.Common;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CommonDao {
	/* jhw 추가 */

	List<CommonCodeVO> getAllCommonCodeVos();

	/**
	 * codeContent로 공통코드 획득
	 * 
	 * @param codeContent
	 * @return
	 */
	String getCommonCodeByCodeContent(String codeContent);
	
	String getParentCodeByContent(String codeContent);
	/**
	 * 공통코드로 시작하는 공통코드VO 객체 리스트 획득
	 * 
	 * @param commonCode
	 * @return
	 */
	
	List<CommonCodeVO> getCommonCodeVosByParentCode(String commonCode);
	
	/**
	 * 복수의 CodeContents에 해당하는 복수의 CmCodes 반환
	 */
	List<String> getCmCodesByContents(List<String> contents);
	/* jhw 추가 */
}
