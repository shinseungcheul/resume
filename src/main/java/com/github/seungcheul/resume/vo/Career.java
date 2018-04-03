package com.github.seungcheul.resume.vo;

import lombok.Data;

import java.sql.Timestamp;
import java.util.List;

@Data
public class Career {

    private long idx;
    private Timestamp startDate;
    private Timestamp endDate;
    private String companyName;
    private String location;
    private String position;
    private String state;
    private String period;

    private List<CareerDetail> careerDetails;

}
