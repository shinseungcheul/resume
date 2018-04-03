package com.github.seungcheul.resume.vo;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class Education {
    private long idx;
    private Timestamp startDate;
    private Timestamp endDate;
    private String description;
    private String institutions;
    private String complete;
    private int isSchool;
    private String extra;
}
