package com.tt.User;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@Getter
@Setter
@ToString
public class UserVO {

    private int no;                 // 유저번호
    private String id;              // 아이디
    private String password;        // 비밀번호
    private String email;           // 이메일
    private Date date;              // 생년월일
    private String phone;           // 전화번호
    private String picture;         // 프로필사진
    private String checkEmail;      // 이메일 확인
    private String name;            // 이름
    private String info;            // 소개
    private String isHost;          // 호스트 여부
    private String isAdmin;           // 관리자 여부
    private String deleted;         // 탈퇴 여부
    private Date createdDate;       // 생성일
    private Date updatedDate;       // 수정일

    public UserVO() {}
}
