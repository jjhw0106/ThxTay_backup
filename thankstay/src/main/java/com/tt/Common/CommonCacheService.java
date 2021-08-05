package com.tt.Common;

import java.util.List;

import com.tt.vo.CommonCodeVO;

public interface CommonCacheService {
	List<CommonCodeVO> getCommonCodeList();
	List<String> getCommonCodes();
	List<String> getParentCodes();
}
