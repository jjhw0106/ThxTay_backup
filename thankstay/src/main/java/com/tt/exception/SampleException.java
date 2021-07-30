package com.tt.exception;

public class SampleException extends RuntimeException {

	private static final long serialVersionUID = -6710773166728299966L;
	
	// 에러 제목
	private String title;
	
	public SampleException(String title, String message) {
		super(message);
		this.title = title;
	}
	
	public String getTitle() {
		return title;
	}
}
