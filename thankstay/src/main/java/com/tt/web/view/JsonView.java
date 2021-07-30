package com.tt.web.view;

import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.view.AbstractView;

/*
 * 사용자정의 View 구현하기
 * 		- View인터페이스를 구현하거나, AbstractView클래스를 상속받아서 작성한다.
 * 		- 주요 메소드
 * 			void render(Map<String, Object> model, HttpServletRequest request, HttpServletResponse response)
 * 
 * 			void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request, HttpServletResponse response)
 * 
 * 
 */
@Component
public class JsonView extends AbstractView {

	Gson gson;

	public JsonView() {
		GsonBuilder builder = new GsonBuilder();
		builder.setDateFormat("yyyy-MM-dd");
		gson = builder.create();
	}

	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		// ModelAndView에 "data"라는 이름으로 저장된 객체를 조회한다.
		Object data = model.get("data");
		// gson의 toJson(객체)을 실행해서 자바객체를 json형식의 text로 변환한다.
		String jsonText = gson.toJson(data);

		// 클라이언트로 내려보낼 컨텐츠의 ContentType을 설정한다
		response.setContentType("application/json; charset=UTF-8");
		// 클라이언트와 연결된 문자열 전용 출력스트림을 얻는다.
		PrintWriter out = response.getWriter();
		// json 형식의 텍스트 데이터를 응답으로 내려보냄
		out.write(jsonText);
		out.flush();
		out.close();

	}
}
