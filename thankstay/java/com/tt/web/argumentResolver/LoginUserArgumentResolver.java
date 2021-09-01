package com.tt.web.argumentResolver;

import java.util.Objects;

import org.springframework.core.MethodParameter;
import org.springframework.web.bind.support.WebDataBinderFactory;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.method.support.ModelAndViewContainer;

import com.tt.web.annotation.LoginUser;
import com.tt.web.utils.SessionUtils;

/*
 * HandlerMethodArgumentResolver
 * 		- 요청핸들러 메소드의 매개변수를 분석해서 적절한 값을 해당 매개변수에 제공하는 객체들이 구현하는 인터페이스
 * 		- 주요 메소드
 * 			boolean supportsParameter(MethodParameter parameter)
 * 				- 해당 매개변수가 사용자정의 HandlerMethodArgumentResolver의 적용대상인지 여부를 반환한다.
 * 
 * 			Object resolveArgument(MethodParameter parameter, ModelAndViewContainer mavContainer,
				NativeWebRequest webRequest, WebDataBinderFactory binderFactory) throws Exception
				- supportsParameter(MethodParameter parameter) 메소드가 true를 반환할 때만 실행되는 메소드다.
				- 이 메소드의 실행결과로 반환되는 객체가 해당 매개변수에 전달된다.
 */
public class LoginUserArgumentResolver implements HandlerMethodArgumentResolver {

	// 요청핸들러의 매개변수에 @LoginUser 어노테이션이 지정되어 있는 경우에만 true가 반환되도록 재정의하였다. 
	@Override
	public boolean supportsParameter(MethodParameter parameter) {
		// parameter.getParameterAnnotation(LoginUser.class)
		// 		해당 파라미터에서 LoginUser 어노테이션 객체를 조회한다.
		// 		해당 파라미터에 @LoginUser 어노테이션이 지정되어 있는 @LoginUser 객체가 반환되고, 지정되어 있지 않으면 null이 반환된다.
		// Objects.nonNull(객체)
		//		객체가 null이 아니면 true를 반환하고 null이면 false를 반환한다.
		return Objects.nonNull(parameter.getParameterAnnotation(LoginUser.class));
	}

	// 위에 정의된 supportsParameter() 메소드가 true를 반환할 때만 이 메소드가 실행된다.
	// 매개변수에 @LoginUser 어노테이션이 지정되어 있는 경우에만 이 메소드가 실행된다.
	// HttpSession객체에서 LOGINED_USER라는 속성명으로 저장된 객체를 반환하도록 재정의하였다.
	@Override
	public Object resolveArgument(MethodParameter parameter, ModelAndViewContainer mavContainer,
			NativeWebRequest webRequest, WebDataBinderFactory binderFactory) throws Exception {
		// SessionUtils.getAttribute() 메소드를 사용해서 HttpSession객체에서 지정된 속성명으로 조회되는 객체를 반환함.
		// 사용자인증이 완료된 사용자의 요청인 경우 User객체(로그인된 사용자정보가 포함된)가 반환되고, 사용자 인증이 완료되지 않은 경우 null이 반환됨
		return SessionUtils.getAttribute("LOGINED_USER");
	}

}
