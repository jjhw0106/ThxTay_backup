package com.tt.Host;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PriceDao {
	void insertLodgingPrice(PriceDto price);
}
