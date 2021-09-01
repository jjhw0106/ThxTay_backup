package com.tt.Lodging;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface LodgingAmtDao {
	void insertAmt(AmenityListVO amenity);
}
