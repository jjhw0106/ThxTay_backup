<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<div class="container my-3">
	<input type="text" id="message" />
	<input type="button" id="sendBtn" value="submit"/>
	<div id="messageArea"></div>
</div>
<script>
	// 웹소켓
	let websocket;
	function connect() {
		// 웹소켓 주소
		var wsUri = "ws://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/echo/";
		// 소켓 객체 생성
		websocket = new WebSocket(wsUri);
		// 웹 소켓에 이벤트가 발생했을 때 호출될 함수 등록
		websocket.onopen = onOpen;
		websocket.onmessage = onMessage;
	}

	//웹 소켓에 연결되었을 때 호출될 함수
	function onOpen() {
	}

	// * 1 메시지 전송
	function sendMessage(message){
	}

	// * 2 메세지 수신
	function onMessage(evt) {
	}

</script>