package com.tt.web.form;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class LodgingRegisterForm {

	// 세부정보
	private int no; // 숙소 번호
	private int userNo;	// 호스트 유저번호
	private int bedroom; // 침실 수
	private int bathroom; // 욕실 수
	private int doublebed; // 2인용 침대
	private int singlebed; // 1인용 침대
	private int maxGuest; // 최대 인원수
	private String name; // 숙소이름
	private String status; // 숙소상태
	private String description; // 숙소설명
	private String lodgingTypeCode; // 숙소_타입코드

	// 주소
	private String address; // 주소 상세주소
	private String addressRest; // 주소 나머지주소
	private String city; // 주소 시군구
	private String postNo; // 주소 우편번호
	private double latitude; // 숙소 위도
	private double longitude; // 숙소 경도

	// 숙소가격
	private int lodgingFee;
	private int cleaningFee;
	private double checkIn; // 체크인

	private boolean immApproval; // 즉시승인여부

	public LodgingRegisterForm() {
	}
}
