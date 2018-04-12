package com.github.seungcheul.resume.repository.resume;


import com.github.seungcheul.resume.vo.CoverLetter;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface WriteResumeRepository {

    int writeCoverLetter(CoverLetter coverLetter);
    int updateCoverLetter(CoverLetter coverLetter);
    int readCoverLetter(@Param(value = "idx") long idx);
}
