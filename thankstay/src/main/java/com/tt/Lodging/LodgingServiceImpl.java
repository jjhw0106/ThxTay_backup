package com.tt.Lodging;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LodgingServiceImpl implements LodgingService {
	
	@Autowired
	LodgingDao lodgingDao;
	
	/* jhw 추가 */
	@Override
	public LodgingVO getLodgingRegistering(String status) {
		return null;
	}
	
	
	
	/* jhw 추가 */
}
