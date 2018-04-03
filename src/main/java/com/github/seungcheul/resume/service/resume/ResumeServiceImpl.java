package com.github.seungcheul.resume.service.resume;

import com.github.seungcheul.resume.repository.resume.ResumeRepository;
import com.github.seungcheul.resume.vo.Certification;
import com.github.seungcheul.resume.vo.Education;
import com.github.seungcheul.resume.vo.Resume;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("resumeService")
public class ResumeServiceImpl implements ResumeService {

    @Autowired
    ResumeRepository resumeRepository;


    @Override
    public List<Resume> getResumeList() {
        return resumeRepository.getResumeList();
    }

    @Override
    public List<Education> getEducation() {
        return resumeRepository.getEducation();
    }

    @Override
    public List<Certification> getCertification() {
        return resumeRepository.getCertification();
    }

    @Override
    public Map<String, List> getEducations(){
        Map<String,List> educations = new HashMap<>();
        educations.put("education",getEducation());
        educations.put("certification",getCertification());
        return educations;
    }

}
