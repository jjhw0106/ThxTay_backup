package com.tt.Common;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommonServiceImpl implements CommonService {
	@Autowired
	CommonDao commonDao;
	
	@Override
	public List<CommonCodeVO> getAllCommonCodes() {
		List<CommonCodeVO> commonCodes= (commonDao.getAllCommonCodeVos());
		for (CommonCodeVO commonCodeVO : commonCodes) {
			System.out.println("Test:" + commonCodeVO.getCommonCode());
		}
		
		return commonDao.getAllCommonCodeVos();
	}

	/**
	 * 숙소타입 등 공통코드의 내용으로 공통코드 찾기(숙소유형 등에 활용)
	 */
	@Override
	public String getCommonCodeByContent(String codeContent) {
		return commonDao.getCommonCodeByCodeContent(codeContent);
	}

	/**
	 * 부모공통코드와 전달받은 공통코드가 일치하는 항목 리스트 획득
	 */
	@Override
	public List<CommonCodeVO> getCommonCodesByParentCode(String commonCode) {
		return  commonDao.getCommonCodeVosByParentCode(commonCode);
	}

	
}
