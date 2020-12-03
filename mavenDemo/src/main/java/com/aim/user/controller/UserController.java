package com.aim.user.controller;

import com.aim.entity.User;
import com.aim.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/selectUserById")
    public String selectUserById(int id, Model model){
        System.out.println("执行了controller FROM GITHUB");
        User user = userService.selectUserById(id);
        model.addAttribute("user" ,user);
        return "user";
    }


    @RequestMapping("/register")
    public String register(User user){
        System.out.println("1111111");
        int flag = userService.addUser(user);
        if(flag != 0){
            System.out.println("添加成功！FROM IDEA");
            return "login";
        }else {
            return "error";
        }
    }
}
