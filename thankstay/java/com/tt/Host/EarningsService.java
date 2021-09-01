package com.tt.Host;

import com.tt.vo.BookingVO;

public interface EarningsService {
	
	BookingVO getAmountByBookingNo(int bookingNo) throws Exception;
}
