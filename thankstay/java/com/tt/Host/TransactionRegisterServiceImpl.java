package com.tt.Host;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tt.vo.TransactionHistoryDTO;
import com.tt.vo.TransactionHistoryVO;
import com.tt.vo.TransactionRegisterVO;

@Service
public class TransactionRegisterServiceImpl implements TransactionRegisterService{

	@Autowired HostAnalysisDao hostAnalysisDao;
	
	@Override
	public void insertBank(TransactionRegisterVO register) {
		hostAnalysisDao.insertBank(register);
	}

}
