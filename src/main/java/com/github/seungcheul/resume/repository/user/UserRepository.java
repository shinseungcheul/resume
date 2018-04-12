package com.github.seungcheul.resume.repository.user;

import com.github.seungcheul.resume.vo.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository {

    User getUserById(@Param("id") String userId);
    User getUserByIdx(@Param("idx") long idx);
    List<User> getAllUser();
    List<User> searchUserByName(String username);
}
