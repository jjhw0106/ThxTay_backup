package com.tt.Host;

import java.util.List;

import com.tt.vo.TransactionHistoryDTO;
import com.tt.vo.TransactionHistoryVO;
import com.tt.vo.TransactionRegisterVO;

public interface TransactionRegisterService {

	void insertBank(TransactionRegisterVO register);

}
