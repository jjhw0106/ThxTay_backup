package com.tt.Host;

import java.util.List;

import com.tt.Lodging.LodgingVO;
import com.tt.vo.FilteringVO;

public interface ListingsService {
	
	/*
	 * 유저가 등록한 모든 숙소를 불러온다.
	 */
	List<LodgingVO> getMyLodgings(int userNo);
	
	List<LodgingVO> getLodgingsByFiltering(FilteringVO filtering);
}
