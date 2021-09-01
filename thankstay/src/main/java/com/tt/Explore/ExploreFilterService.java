package com.tt.Explore;

import java.util.List;

import com.tt.Lodging.LodgingVO;

public interface ExploreFilterService {

	List<LodgingListVO> getLodgingListBySearchFilter(SearchFilterVO searchFilter);
	List<LodgingListVO> getLodgingListByGuests(int guests);
}
