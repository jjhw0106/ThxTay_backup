package com.tt.Host;

import java.util.List;

import com.tt.Lodging.LodgingVO;
import com.tt.vo.FilteringVO;

public interface FilteringService {

	/*
	 *  유저가 등록한 모든 숙소 중 필터링을 거친 숙소들을 나타낸다.
	 */
	List<LodgingVO> getLodgingsByFiltering(FilteringVO filtering);
}
