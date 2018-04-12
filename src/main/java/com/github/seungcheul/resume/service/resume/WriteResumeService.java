package com.github.seungcheul.resume.service.resume;

import com.github.seungcheul.resume.vo.CoverLetter;

public interface WriteResumeService {

    CoverLetter writeOrUpdataCoverLetter(CoverLetter coverLetter);
}
