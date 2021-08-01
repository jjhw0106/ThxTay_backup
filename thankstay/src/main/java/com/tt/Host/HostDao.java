package com.tt.Host;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface HostDao {
	// jhw 추가
	public void insertLdgInfo();
	}
