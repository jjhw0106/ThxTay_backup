package com.tt.Lodging;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LodgingImgServiceImpl implements LodgingImgService{

	@Autowired
	LodgingImgDao lodgingImgDao;
	
	@Override
	public List<LodgingImgVO> getImgListByLdgNo(Map<String , Integer> condition) {
		return lodgingImgDao.getImgListByLdgNo(condition);
	}

	@Override
	public LodgingImgVO getImgByLdgNo(int lodgingNo) {
		return lodgingImgDao.getImgByLdgNo(lodgingNo);
	}

	@Override
	public void addImg(LodgingImgVO lodgingImg) {
		lodgingImgDao.insertImage(lodgingImg);
	}
	
}
