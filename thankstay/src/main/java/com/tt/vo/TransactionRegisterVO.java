package com.tt.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class TransactionRegisterVO {

    private int no;                 // 대금등록 번호
    private int userNo;             // 유저_번호
    private int bankCode;           // 은행_코드
    private String name;            // 대금등록 이름
    private String email;           // 대금등록 이메일
    private String account;         // 대금등록 계좌

    public TransactionRegisterVO() {}
}
