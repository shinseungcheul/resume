package com.github.seungcheul.resume.service.user;

import com.github.seungcheul.resume.repository.user.UserRepository;
import com.github.seungcheul.resume.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    UserRepository userRepository;


    @Override
    public User getUserById(String userId) {
        return userRepository.getUserById(userId);
    }

    @Override
    public User getUserByIdx(long idx) {
        return userRepository.getUserByIdx(idx);
    }

    @Override
    public List<User> getAllUser() {
        return userRepository.getAllUser();
    }

    @Override
    public List<User> searchUserByName(String username) {
        return userRepository.searchUserByName(username);
    }
}
