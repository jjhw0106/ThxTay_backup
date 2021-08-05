package com.tt.web.form;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@Getter
@Setter
@ToString
public class UserRegisterForm {

    private String name;
    private String birth;
    private String email;
    private String password;
}
