package com.tt.Common;



import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.tt.vo.CommonCodeVO;

@Mapper
public interface CommonDao {
	/* jhw 추가*/
	
	/**
	 * codeContent로 공통코드 획득
	 * @param codeContent
	 * @return
	 */
	String getCommonCodeByCodeContent(String codeContent);
	
	/**
	 * 공통코드로 시작하는 공통코드VO 객체 리스트 획득
	 * @param commonCode
	 * @return
	 */
	List<CommonCodeVO> getCommonCodeVosByCmCode(String commonCode);

	/**
	 * 파라미터로 전달받은 commonCode와 parentCode가 일치하는 공통코드 vo List를 반환
	 * @param commonCode
	 * @return
	 */
	List<CommonCodeVO> getCommonCodeVosByParentCode(String commonCode);
	
	/* jhw 추가*/
}
