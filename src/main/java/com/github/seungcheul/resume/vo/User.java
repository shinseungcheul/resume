package com.github.seungcheul.resume.vo;

import lombok.Data;

import java.io.Serializable;
import java.sql.Date;

@Data
public class User implements Serializable {

    private String uid;
    private String userId;
    private String userName;
    private String password;
    private String email;
    private Date createDate;
    private Date updateDate;
    private String registUid;
    private String updateUserUid;

}
