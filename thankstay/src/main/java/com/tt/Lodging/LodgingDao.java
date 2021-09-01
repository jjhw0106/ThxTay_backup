package com.tt.Lodging;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface LodgingDao {
	LodgingVO getLodingByStatus(String status);
	
	List<LodgingVO> getLodgingsByUserNo(int userNo);
	
	void insertLodging(LodgingVO lodging);
	
	/**
	 * 숙소정보 한번에 업데이트
	 * @param lodging
	 */
	void updateLodging(LodgingVO lodging);
	
	/**
	 * 숙소상태 업데이트
	 * @param userNo
	 */
	void updateLodgingStatus(int lodgingNo);
}
