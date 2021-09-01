package com.tt.Lodging;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tt.Common.CommonDao;

@Service
public class LodgingAmtServiceImpl implements LodgingAmtService {

	@Autowired
	CommonDao commonDao;
	@Autowired
	LodgingAmtDao amtDao;
	/**
	 * 복수의 편의시설 codeContent를 받아서 조건에 해당하는 commonCode들을 반환 
	 */
	@Override
	public List<String> getAmtCodesByContents(List<String> contents) {
		List<String> amtCodes = commonDao.getCmCodesByContents(contents);
		return amtCodes;
	}

	/**
	 * 숙소 편의시설 등록
	 */
	@Override
	public void registerAmt(AmenityListVO amenity) {
		amtDao.insertAmt(amenity);
	}
}
