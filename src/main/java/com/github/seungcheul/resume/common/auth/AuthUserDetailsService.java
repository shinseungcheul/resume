package com.github.seungcheul.resume.common.auth;

import com.github.seungcheul.resume.vo.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public class AuthUserDetailsService implements UserDetailsService {

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = new User();
        user.setUserId(username);
        AuthUserDetail userDetail = new AuthUserDetail(user, "N/A");

        return userDetail;
    }
}
