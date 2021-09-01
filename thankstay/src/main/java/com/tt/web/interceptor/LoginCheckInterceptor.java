package com.tt.web.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.core.MethodParameter;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;

import com.tt.web.annotation.LoginUser;
import com.tt.web.utils.SessionUtils;

/*
 * LoginCheckInterceptor
 * 		- 클라이언트의 요청이 로그인이 필요한 요청인 경우 세션에 로그인된 사용자 정보가 존재하는지 확인한다.
 * 			- 세션에 로그인된 사용자 정보가 존재하면 클라이언트의 요청을 처리할 요청핸들러 메소드를 실행시킨다.
 * 		  		* preHandle(req, res, handler)가 true값을 반환함.
 * 			- 세션에 로그인된 사용자 정보가 존재하지 않으면 요청핸들러 메소드를 실행시키지 않는다.
 * 				* preHandle(req, res, handler)가 false값을 반환함 + 로그인폼을 재요청하는 응답을 보낸다.
 * 				* preHandle(req, res, handler)가 예외를 발생시킨다.
 * 			 
 */
public class LoginCheckInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
//		HandlerMethod handlerMethod = (HandlerMethod) handler;
//		MethodParameter[] methodParameters = handlerMethod.getMethodParameters();
//		
//		boolean hasLoginUserAnnotation = false;
//		for (MethodParameter parameter : methodParameters) {
//			if (parameter.getParameterAnnotation(LoginUser.class) != null) {
//				hasLoginUserAnnotation = true;
//				break;
//			}
//		}
		
//		if (hasLoginUserAnnotation && SessionUtils.getAttribute("LOGINED_USER") == null) {
//			
//			response.sendRedirect("/spring-mvc/login?error=deny");	
//			return false;
//		}
		
		return true;
	}
}
