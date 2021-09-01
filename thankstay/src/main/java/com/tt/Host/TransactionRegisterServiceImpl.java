package com.tt.Host;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tt.Common.CommonCodeVO;

@Service
public class TransactionRegisterServiceImpl implements TransactionRegisterService{

	@Autowired HostAnalysisDao hostAnalysisDao;
	
	@Override
	public void insertBank(TransactionRegisterVO register) {
		hostAnalysisDao.insertBank(register);
	}

	@Override
	public List<CommonCodeVO> getCommonCodeByPntCode(String code) throws Exception{
		return hostAnalysisDao.getCommonCodeByPntCode(code);
	}
}
