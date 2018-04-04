package com.github.seungcheul.resume.service.resume;

import com.github.seungcheul.resume.repository.resume.ResumeRepository;
import com.github.seungcheul.resume.vo.Career;
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
    public List<Education> getEducations() {
        return resumeRepository.getEducations();
    }

    @Override
    public List<Career> getCareers() {
        List<Career> careers = resumeRepository.getCareers();
        System.out.println(careers);
        for(Career career : careers ){
            career.setCareerDetails(resumeRepository.getCareerDetails(career.getIdx()));
        }
        System.out.println(careers);
        return careers;
    }

    @Override
    public List<Certification> getCertifications() {
        return resumeRepository.getCertifications();
    }

    @Override
    public Map<String, List> getEducationsAndCertifications(){
        Map<String,List> educations = new HashMap<>();
        educations.put("education", getEducations());
        educations.put("certification", getCertifications());
        return educations;
    }

}
