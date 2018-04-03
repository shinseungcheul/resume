package com.github.seungcheul.resume.repository.resume;


import com.github.seungcheul.resume.vo.Resume;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("resumeRepository")
public interface ResumeRepository {

    List<Resume> getResumeList();
}
