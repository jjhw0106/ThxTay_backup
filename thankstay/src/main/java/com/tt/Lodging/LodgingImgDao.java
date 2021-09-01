package com.tt.Lodging;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface LodgingImgDao {
	void insertImage(LodgingImgVO lodgingImg);
	
	List<LodgingImgVO> getImgListByLdgNo(Map<String, Integer> condition);

	LodgingImgVO getImgByLdgNo(int lodgingNo);
}
