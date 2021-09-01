package com.tt.Explore;

import java.util.List;

import com.tt.Lodging.LodgingVO;

public interface ExploreFilterService {

	List<LodgingVO> getLodgingsByFirstFilter(FirstFilterVO firstFilter);
}
