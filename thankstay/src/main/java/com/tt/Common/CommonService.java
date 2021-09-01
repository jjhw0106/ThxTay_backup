package com.tt.Common;

import java.util.List;

public interface CommonService {
	String getCommonCodeByContent(String codeContent);
	
	List<CommonCodeVO> getCommonCodesByParentCode(String commonCode);
	
	List<CommonCodeVO> getAllCommonCodes();
	
	
}
