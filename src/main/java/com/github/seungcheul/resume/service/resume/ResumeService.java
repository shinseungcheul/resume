package com.github.seungcheul.resume.service.resume;


import com.github.seungcheul.resume.vo.Career;
import com.github.seungcheul.resume.vo.Certification;
import com.github.seungcheul.resume.vo.Education;
import com.github.seungcheul.resume.vo.Resume;

import java.util.List;
import java.util.Map;

public interface ResumeService {

    List<Resume> getResumeList();
    List<Education> getEducations();
    List<Certification> getCertifications();
    Map<String, List> getEducationsAndCertifications();
    List<Career> getCareers();
}
