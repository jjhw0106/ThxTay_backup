package com.tt.User;

public interface UserService {

	/**
     * 지정된 사용자정보로 회원가입을 수행하는 서비스
     * @param user 사용자정보
     */
    void registerUser(UserVO user);

    /**
     * 지정된 아이디와 비밀번호로 사용자인증을 수행하는 서비스
     * @param id 사용자 아이디
     * @param password 사용자 비밀번호
     */
    void login(String id, String password);

}
