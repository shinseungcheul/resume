package com.github.seungcheul.resume.service.resume;

import com.github.seungcheul.resume.repository.resume.WriteResumeRepository;
import com.github.seungcheul.resume.vo.CoverLetter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("wirteResumeService")
public class WriteResumeServiceImpl implements WriteResumeService {

    @Autowired
    WriteResumeRepository writeResumeRepository;

    @Override
    @Transactional
    public CoverLetter writeOrUpdataCoverLetter(CoverLetter coverLetter) {
        if(coverLetter.getIdx() == 0 || writeResumeRepository.readCoverLetter(coverLetter.getIdx()) <= 0){
            writeResumeRepository.updateCoverLetter(coverLetter);
        }else{
            writeResumeRepository.writeCoverLetter(coverLetter);
        }
        return coverLetter;
    }
}
