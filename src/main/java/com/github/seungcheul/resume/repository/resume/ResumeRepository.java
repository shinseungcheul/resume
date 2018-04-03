package com.github.seungcheul.resume.repository.resume;


import com.github.seungcheul.resume.vo.Certification;
import com.github.seungcheul.resume.vo.Education;
import com.github.seungcheul.resume.vo.Resume;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("resumeRepository")
public interface ResumeRepository {

    List<Resume> getResumeList();
    List<Education> getEducation();
    List<Certification> getCertification();
}
