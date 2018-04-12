package com.github.seungcheul.resume.vo;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class CoverLetter {
    private long idx ;
    private String title;
    private String content;
    private Timestamp regTime;
    private Timestamp updateTime;
    private int order;
    private int category;
    private int currentVersion;
}
