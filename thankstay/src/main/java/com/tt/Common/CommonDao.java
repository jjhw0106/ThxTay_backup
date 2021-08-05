package com.tt.Common;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.tt.vo.CommonCodeVO;

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

	/**
	 * 공통코드로 시작하는 공통코드VO 객체 리스트 획득
	 * 
	 * @param commonCode
	 * @return
	 */
	
	List<CommonCodeVO> getCommonCodeVosByParentCode(String commonCode);
	
	List<String> getAllCommonCodes();
	
	List<String> getAllParentCodes();
	/* jhw 추가 */
}
