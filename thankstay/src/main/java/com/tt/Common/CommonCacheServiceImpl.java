package com.tt.Common;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tt.vo.CommonCodeVO;

@Service
public class CommonCacheServiceImpl implements CommonCacheService{

	@Autowired
	CommonDao commonDao;


	@Override
	public List<CommonCodeVO> getCommonCodeList() {
		return commonDao.getAllCommonCodeVos();
	}


	@Override
	public List<String> getCommonCodes() {
		return commonDao.getAllCommonCodes();
	}


	@Override
	public List<String> getParentCodes() {
		return commonDao.getAllParentCodes();
	}
}
