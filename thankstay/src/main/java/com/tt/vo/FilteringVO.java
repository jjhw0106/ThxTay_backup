package com.tt.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class FilteringVO {
//전부 String으로 해야 관리하기 편함
	
	/* 필터 for 편의시설 */
	private String kitchen;			//주방
	private String ac;				//에어컨
	private String heater;			//히터
	private String washer;			//세탁기
	private String drier;			//건조기
	private String wifi;			//와이파이
	private String parkingLot;		//주차장
	private String gym;				//헬스장
	private String pool;			//수영장
	private String terrace;			//테라스
	private String garden;			//공원
	private String nearLake;		//호수와 가까움
	private String nearBeach;		//해변과 가까움
	/* 숙소 상태 */
	private String isRegistering;	//등록중
	private String standby;			//승인 대기
	private String isApproved;		//승인
	private String isStopped;		//휴업


}
