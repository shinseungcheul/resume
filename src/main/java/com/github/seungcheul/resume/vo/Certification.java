package com.github.seungcheul.resume.vo;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class Certification {
    private long idx;
    private Timestamp passDate;
    private String certificationName;
    private String institutions;
    private String complete;
}
