package com.tt.Lodging;

import java.util.List;

public interface LodgingAmtService {
	void registerAmt(AmenityListVO amenity);
	
	List<String> getAmtCodesByContents(List<String> contents);
}
