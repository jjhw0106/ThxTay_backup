package com.tt.Host;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.tt.Lodging.LodgingVO;

@Mapper
public interface ListingsDao {
	/*
	 * 유저아이디로 등록한 모든 숙소를 불러온다.
	 */
	List<LodgingVO> getMyLodgingsByUserNo(int userNo);
}
