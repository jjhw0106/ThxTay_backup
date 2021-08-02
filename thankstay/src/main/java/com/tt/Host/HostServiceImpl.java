package com.tt.Host;

import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tt.Common.CommonDao;
import com.tt.vo.CommonCodeVO;

@Service
public class HostServiceImpl implements HostService {

	@Autowired
	CommonDao commonDao;

	/* jhw 추가 */
	
	

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
		List<CommonCodeVO> commonCodeVoList = commonDao.getCommonCodeVosByParentCode(commonCode);
		return commonCodeVoList;
		/* return commonDao.getCommonCodeVosByParentCode(commonCode); */
	}

	
	/* jhw 추가 */
}
