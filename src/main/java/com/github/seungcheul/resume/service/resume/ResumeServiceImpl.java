package com.github.seungcheul.resume.service.resume;

import com.github.seungcheul.resume.repository.resume.ResumeRepository;
import com.github.seungcheul.resume.vo.Resume;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("resumeService")
public class ResumeServiceImpl implements ResumeService {

    @Autowired
    ResumeRepository resumeRepository;


    @Override
    public List<Resume> getResumeList() {
        return resumeRepository.getResumeList();
    }
}
