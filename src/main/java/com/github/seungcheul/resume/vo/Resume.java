package com.github.seungcheul.resume.vo;

import lombok.Data;

import java.io.Serializable;
import java.sql.Timestamp;

@Data
public class Resume implements Serializable {

    private long idx ;
    private String name;
    private Timestamp create_time;
    private Timestamp update_time;
    private int order;
    private String description;
    private long owner_idx;


}
