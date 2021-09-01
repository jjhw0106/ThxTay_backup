package com.tt.Chat;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

@Controller
public class WebSocketHandler extends TextWebSocketHandler {

    //접속한 사용자의 세션을 보관하기 위해 정의
    private Set<WebSocketSession> sessionSet = new HashSet<WebSocketSession>();

    public WebSocketHandler() {
        super();
        System.out.println("create SocketHandler instance!");
    }

    //클라이언트에서 연결을 종료할때 발생하는 이펙트
    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
        super.afterConnectionClosed(session, status);

        sessionSet.remove(session);
        System.out.println("remove session!");
    }

    //클라이언트에서 접속에 성공할 경우 발생하는 이펙트
    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        super.afterConnectionEstablished(session);

        sessionSet.add(session);
        System.out.println("add session!");
    }

    //클라이언트에서 send를 이용해 메시지 발송할때 이벤트 핸들링
    @Override
    public void handleMessage (WebSocketSession session, WebSocketMessage<?> message) throws Exception {
        super.handleMessage(session, message);

        //session.getAttribute() : HandshakeInterceptor의 beforeHandshake() 메서드에 저장한 map을 가져온다.
        Map<String, Object> map = session.getAttributes();

        String userId = (String)map.get("mem_nick");
        System.out.println("전송자 아이디 : " + userId);

        for (WebSocketSession client_session:this.sessionSet) {
            if (client_session.isOpen()) {
                try {
                    client_session.sendMessage(message);
                }
                catch (Exception ignored) {
                    System.out.println("fail to send message!" + ignored);
                }
            }
        }
    }

    //전송 에러 발생시 호출
    @Override
    public void handleTransportError (WebSocketSession session, Throwable exception) throws Exception {
        System.out.println("web socket error!" + exception);
    }

    //메시지가 긴 경우 분할할 수 있는지 여부를 결정하는 메소드
    @Override
    public boolean supportsPartialMessages() {
        System.out.println("call method!");

        return false;
    }
}