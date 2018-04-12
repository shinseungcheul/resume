package com.github.seungcheul.resume.service.user;

import com.github.seungcheul.resume.vo.User;

import java.util.List;

public interface UserService {
    User getUserById(String userId);
    User getUserByIdx(long idx);
    List<User> getAllUser();
    List<User> searchUserByName(String username);


}
