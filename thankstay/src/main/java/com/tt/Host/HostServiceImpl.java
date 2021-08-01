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
	public List<CommonCodeVO> showLodgingTypes(String codeContent) {
		String commonCode=commonDao.getCommonCodeByCodeContent("숙소타입");	//param: codeContent 
		
		List<CommonCodeVO> commonCodeVos = commonDao.getCommonCodeVosByParentCode(commonCode);
		
		System.out.println(commonCodeVos);
		return commonCodeVos;
	}
	
	/* jhw 추가 */
}
