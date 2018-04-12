package com.github.seungcheul.resume.controller.resume;


import com.github.seungcheul.resume.service.resume.WriteResumeService;
import com.github.seungcheul.resume.vo.CoverLetter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/resume/wirte")
public class WriteResumeController {

    @Autowired
    WriteResumeService writeResumeService;

    @PostMapping("/coverletter")
    @ResponseBody
    public CoverLetter writeCoverLetter(CoverLetter coverletter){

        return writeResumeService.writeOrUpdataCoverLetter(coverletter);
    }
}
