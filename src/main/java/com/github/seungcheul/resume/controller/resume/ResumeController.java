package com.github.seungcheul.resume.controller.resume;


import com.github.seungcheul.resume.service.resume.ResumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(path = "/resume")
public class ResumeController {


    @Autowired
    ResumeService resumeService;

    @GetMapping(path = "/index")
    public String getResumeList(ModelMap map){
        map.addAttribute("resumeList", resumeService.getResumeList());
        map.addAttribute( "educations", resumeService.getEducations());
        map.addAttribute( "certifications", resumeService.getCertifications());
        map.addAttribute( "careers", resumeService.getCareers());
        return "resume/index";
    }


//    @GetMapping(path = "/education")
//    @ResponseBody
//    public Map<String,List> getEducationsAndCertifications(){
//        return resumeService.getEducationsAndCertifications();
//    }
//
//    @GetMapping(path = "/career")
//    @ResponseBody
//    public String getCareer(){
//        return null;
//    }

//    @GetMapping(path = "skills")
//    @ResponseBody
//    public List<>

}


