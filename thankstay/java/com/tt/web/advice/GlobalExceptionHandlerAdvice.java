package com.tt.web.advice;

import org.springframework.dao.DataAccessException;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import com.tt.exception.SampleException;

@ControllerAdvice
public class GlobalExceptionHandlerAdvice {
	
	/*
	 * SampleException
	 * 		- 애플리케이션에서 업무로직 예외와 관련 모든 예외클래스의 부모클래스다.
	 * 		- 애플리케이션에서 업무로직 예외가 발생하면 handleSampeException()가 예외를 처리한다.
	 * 		- 본 예외처리 메소드에서는 error폴더의 business.jsp로 내부이동시킨다.
	 */
	@ExceptionHandler(SampleException.class)
	public String handleSampleException(SampleException ex, Model model) {
		model.addAttribute("error", ex);
		return "error/business";
	}

	/*
	 * DataAccessException
	 * 		- 스프링 애플리케이션에서 데이터베이스 엑세스와 관련 모든 예외클래스의 부모클래스다.
	 * 		- 애플리케이션에서 데이터베이스 엑세스 작업중 예외가 발생하면 handleDataAccessException()가 예외를 처리한다.
	 * 		- 본 예외처리 메소드에서는 error폴더의 db.jsp로 내부이동시킨다.
	 */
	@ExceptionHandler(DataAccessException.class)
	public String handleDataAccessException(DataAccessException ex) {
		ex.printStackTrace();
		return "error/db";		// WEB-INF/views/error/db.jsp로 이동함
	}
	
	/*
	 * Exception
	 * 		- Exception은 모든 예외클래스의 부모클래스기 때문에 예상하지 못한 모든 예외에 대해서 handException()가 예외를 처리한다.
	 *		- 본 예외처리 메소드에서는 error폴더의 server.jsp로 내부이동시킨다.
	 */
	@ExceptionHandler(Exception.class)
	public String handleException(Exception ex) {
		ex.printStackTrace();
		return "error/server";	// WEB-INF/views/error/server.jsp로 이동함
	}
}
