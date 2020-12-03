package com.aim.user.mapper;

import com.aim.entity.User;

import javax.annotation.Resource;

@Resource
public interface UserMapper {
    public User selectUserById(int id);

    public int addUser(User user);

    public User login(String userName,String userPassword);

}
