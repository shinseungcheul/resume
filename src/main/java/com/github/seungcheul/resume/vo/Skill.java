package com.github.seungcheul.resume.vo;

import lombok.Data;

@Data
public class Skill {
    private long idx;
    private String name;
    private String skillDetail;
    private int category;
    private String imageUrl;
}
