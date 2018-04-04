package com.github.seungcheul.resume.service.resume;


import com.github.seungcheul.resume.vo.*;

import java.util.List;
import java.util.Map;

public interface ResumeService {

    List<Resume> getResumeList();
    List<Education> getEducations();
    List<Certification> getCertifications();
    Map<String, List> getEducationsAndCertifications();
    List<Career> getCareers();
    List<Skill> getSkills();
}
