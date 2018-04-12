package com.github.seungcheul.resume.common.auth;

import com.github.seungcheul.resume.service.user.UserService;
import com.github.seungcheul.resume.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.authentication.dao.AbstractUserDetailsAuthenticationProvider;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;

public class AuthUserProvider extends AbstractUserDetailsAuthenticationProvider implements AuthenticationProvider{


    @Autowired
    UserService userService;

    @Override
    protected void additionalAuthenticationChecks(UserDetails userDetails, UsernamePasswordAuthenticationToken authentication) throws AuthenticationException {

    }

    @Override
    protected UserDetails retrieveUser(String username, UsernamePasswordAuthenticationToken authentication) throws AuthenticationException {
        AuthUserDetail userDetail = null;
        try {
            User user = userService.getUserById(username);
            userDetail = new AuthUserDetail(user,"n/a");

        }catch (Exception e){
            throw new AuthenticationServiceException("user not vaild");
        }

        return null;
    }


}
