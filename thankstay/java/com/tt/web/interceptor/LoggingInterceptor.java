package com.tt.web.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/*
 * HandlerInterceptor
 * 		- 요청핸들러 메소드 실행 전, 실행 후 실행할 작업을 구현할 때 사용되는 인터페이스다.
 * 		- 주요 메소드
 * 			boolean preHandle(request, response, handler)
 * 				- 컨트롤러의 요청핸들러 메소드 실행전 수행할 작업을 구현할 수 있다.
 * 				- 인터셉터의 메소드중 가장 많이 구현되는 메소드다.
 * 				- 이 메소드가 true를 반환하면 요청핸들러 메소드가 실행되고, false를 반환하면 요청핸들러 메소드가 실행되지 않는다.
 * 				- 접근제한, 권한제어 등의 작업을 이 메소드로 구현할 수 있다.
 * 			void postHandle(request, response, handler, modelAndview)
 * 				- 컨트롤러의 요청핸들러 메소드 실행후 수행할 작업을 구현할 수 있다.
 * 				- 요청핸들러 메소드가 응답으로 제공하는 값을 조회/조작할 수 있다.
 * 			afterCompletion(request, response, handler, ex)
 * 				- 클라이언트에게 응답이 완료된 후에 수행할 작업을 구현할 수 있다.
 * 				- 대부분의 인터셉터에 사용되지 않는 기능이다.
 */
public class LoggingInterceptor implements HandlerInterceptor {
	
	private static Logger logger = LogManager.getLogger(LoggingInterceptor.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		logger.info("preHandle(request, response, handler) 실행!");
		HandlerMethod handleMethod = (HandlerMethod) handler;
		String methodName =handleMethod.getMethod().getName();
	
		logger.info("클라이언트의 요청을 처리하는 요청핸들러 메소드 이름: "+  methodName);
		
		return true;
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		logger.info("postHandle(request, response, handler, modelAndView) 실행!");		
	}
	
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		logger.info("afterCompletion(request, response, handler, ex) 실행!");
	}
}
