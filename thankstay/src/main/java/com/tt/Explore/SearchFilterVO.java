package com.tt.Explore;


import java.util.Date;
import java.util.List;

import com.tt.User.UserVO;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
public class SearchFilterVO {

	private String location;
	private double east;	//nonNull for int/double?
	private double west;
	private double south;
	private double north;
	private Date checkInDate;
	private Date checkOutDate;
	private int guests;
	private String Status;
	private String Type;
	private String immApproval;
	private List<String> amenity;
	private int userNo;
}
