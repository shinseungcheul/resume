package com.github.seungcheul.resume.service.resume;


import com.github.seungcheul.resume.vo.Certification;
import com.github.seungcheul.resume.vo.Education;
import com.github.seungcheul.resume.vo.Resume;

import java.util.List;
import java.util.Map;

public interface ResumeService {

    List<Resume> getResumeList();
    List<Education> getEducation();
    List<Certification> getCertification();
    Map<String, List> getEducations();
}
