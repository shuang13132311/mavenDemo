package com.aim.user.service.impl;

import com.aim.entity.User;
import com.aim.user.mapper.UserMapper;
import com.aim.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;
    @Override
    public User selectUserById(int id) {

        return null;
    }

    @Override
    public int addUser(User user) {
        return 0;
    }

    @Override
    public User login(String userName, String userPassword) {
        return null;
    }
}
