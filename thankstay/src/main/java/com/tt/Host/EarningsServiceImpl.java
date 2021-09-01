package com.tt.Host;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import com.tt.User.UserVO;
import com.tt.Lodging.BookingVO;

@Service
public class EarningsServiceImpl implements EarningsService{

	@Autowired HostAnalysisDao hostAnalysisDao;
	
	@Override
	public EarningsVO getEarningsByHashMap(Map<String, Object> map) throws Exception {
		return hostAnalysisDao.getEarningsByHashMap(map);
	}
	
	@Override
	public List<EarningsVO> getEarningsChartbyHashMap(Map<String, Object> map) throws Exception {
		return hostAnalysisDao.getEarningsChartbyHashMap(map);
	}
	
	@Override
	@Scheduled(cron= "0/10 * * * * * ?")
	public void updateEarnings(int userNo) throws Exception {
		//체크아웃이 오늘에 해당하는 것들의 booking_status를 12pm에 BKG0104로 바꾼다.
		//체크인이 오늘에 해당하는 것들을 3pm에 BKG0103로 바꾼다.
		List<BookingVO> bookings = hostAnalysisDao.getAllBookingsByUserNo(userNo);
		List<UserVO> users = hostAnalysisDao.getAllUsers();
		
		SimpleDateFormat formatDate = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String today = formatDate.format(date);
		
		for(UserVO user : users) {
			hostAnalysisDao.getAllBookingsByUserNo(user.getNo());
			
		}
	}
	
	@Override
	public List<BookingVO> getAllBookingsByUserNo(int userNo) throws Exception {
		return hostAnalysisDao.getAllBookingsByUserNo(userNo);
	}
	
	@Override
	public List<UserVO> getAllUsers() throws Exception {
		return hostAnalysisDao.getAllUsers();
	}
}
