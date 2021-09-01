package com.tt.Host;

import java.util.List;

import com.tt.Common.CommonCodeVO;

public interface TransactionRegisterService {

	void insertBank(TransactionRegisterVO register);

	List<CommonCodeVO> getCommonCodeByPntCode(String code) throws Exception;
}
