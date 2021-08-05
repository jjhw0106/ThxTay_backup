package com.tt.Host;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tt.Lodging.LodgingVO;
import com.tt.vo.FilteringVO;

@Service
public class FilteringServiceImpl implements FilteringService {
	
	@Autowired FilteringDao filteringDao;

	@Override
	public List<LodgingVO> getLodgingsByFiltering(FilteringVO filtering) {
		return filteringDao.getLodgingsByFiltering(filtering);
	}
	
}
