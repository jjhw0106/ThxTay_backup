package com.tt.Host;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.tt.Lodging.LodgingVO;
import com.tt.vo.FilteringVO;

@Mapper
public interface FilteringDao {

		List<LodgingVO> getLodgingsByFiltering(FilteringVO filtering);
}
