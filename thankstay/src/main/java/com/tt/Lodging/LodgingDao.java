package com.tt.Lodging;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface LodgingDao {
	LodgingVO getLodingByStatus(String status);
	
	List<LodgingVO> getLodgingsByUserNo(int no);
}
