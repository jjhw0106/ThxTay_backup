package com.tt.Explore;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class FirstFilterVO {
	private double latitude;
	private double longitude;
	private String location;
	private Date checkInDate;
	private Date checkOutDate;
	private int guests;
	
	public FirstFilterVO(double latitude, double longitude, String location, Date checkInDate, Date checkOutDate,
			int guests) {
		this.latitude = latitude;
		this.longitude = longitude;
		this.location = location;
		this.checkInDate = checkInDate;
		this.checkOutDate = checkOutDate;
		this.guests = guests;
	}
	public FirstFilterVO(String location, Date checkInDate, Date checkOutDate,
			int guests) {
		this.location = location;
		this.checkInDate = checkInDate;
		this.checkOutDate = checkOutDate;
		this.guests = guests;
	}

}


