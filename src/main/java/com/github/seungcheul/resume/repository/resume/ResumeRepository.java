package com.github.seungcheul.resume.repository.resume;


import com.github.seungcheul.resume.vo.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("resumeRepository")
public interface ResumeRepository {

    List<Resume> getResumeList();
    List<Education> getEducations();
    List<Certification> getCertifications();
    List<Career> getCareers();
    List<CareerDetail> getCareerDetails(@Param(value = "idx") long idx);
    List<Skill> getSkills();
}
