package com.tt.web.utils;

import javax.servlet.http.HttpSession;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

/**
 * HttpSession객체 획득/폐기, 속성값 추가/조회/삭제 기능을 제공하는 유틸리티 클래스다.
 * @author lee_e
 *
 */
public class SessionUtils {
	
	/*
	 * RequestAttributes
	 * 		- 지금 서버로 요청을 보낸 사용자와 관련된 여러 속성정보를 제공하는 객체다.
	 * 		- 요청객체, 세션객체에 저장된 속성을 조회할 수 있다.
	 * 		- 주요 메소드
	 * 			void setAttribute(String name, Object value, int scope)
	 * 				지정된 스코프에 속성을 저장한다.
	 * 			Object getAttribute(String name, int scope)
	 * 				지정된 스코프에서 속성명에 해당하는 속성값을 반환한다.
	 * 			void removeAttribute(String name, int scope)
	 * 				지정된 스코프에서 속성명에 해당하는 속성값을 삭제한다.
	 * 			* scope변수에는 아래의 값 중 하나를 지정한다.
	 * 				- RequestAttributes.SCOPE_REQUEST	
	 * 				- RequestAttributes.SCOPE_SESSION
	 * RequestContextHolder
	 * 		- 지금 서버로 요청을 보낸 사용자와 관련된 RequestAttributes 객체를 제공한다.
	 * 		- 주요 메소드
	 * 			RequestAttributes currentRequestAttributes()
	 * 				지금 서버로 요청을 보낸 사용자와 관련된 RequestAttributes를 반환한다.
	 * ServletRequestAttributes
	 * 		- 서블릿 기반의 속성정보를 제공하는 객체다.
	 * 		- 주요 메소드
	 * 			Object getAttribute(String name, int scope)
	 * 				지정된 스코프에서 속성명에 해당하는 속성값을 반환한다.
	 * 			HttpServletRequest getRequest()
	 * 				요청객체를 반환한다.
	 * 			HttpServletResponse getResponse()
	 * 				응답객체를 반환한다.
	 * 
	 * HttpServletRequest
	 * 		- 요청객체
	 * 		- 주요 메소드
	 * 			HttpSession getSession(boolean create)
	 * 				HttpSession객체를 반환한다.
	 * 			HttpSession getSession()
	 * 				HttpSession객체를 반환한다.
	 */
	
	/**
	 * 지금 서버로 요청을 보낸 사용자의 세션객체를 반환한다.
	 * @return 세션객체
	 */
	private static HttpSession getSession(boolean create) {
		ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
		return attributes.getRequest().getSession(create);
	}

	/**
	 * HttpSession객체에 속성을 추가한다.
	 * @param name 속성명
	 * @param value 속성값 혹은 객체
	 */
	public static void addAttribute(String name, Object value) {
		getSession(true).setAttribute(name, value);
	}
	
	/**
	 * HttpSession객체에서 지정된 속성이름으로 추가된 속성값을 반환한다.
	 * @param name 속성명
	 * @return 속성값 혹은 객체
	 */
	public static Object getAttribute(String name) {
		return getSession(true).getAttribute(name);
	}
	
	/**
	 * HttpSession객체에서 지정된 이름의 속성을 삭제한다.
	 * @param name 속성명
	 */
	public static void removeAttribute(String name) {
		getSession(true).removeAttribute(name);
	}
	
	/**
	 * HttpSession객체를 폐기한다.
	 */
	public static void destroySession() {
		HttpSession session = getSession(false);
		if (session != null) {
			session.invalidate();
		}
	}
}
