package com.atguigu.test;

import com.atguigu.pojo.User;
import com.atguigu.service.impl.UserServiceImpl;
import org.junit.Test;

import static org.junit.Assert.*;

public class UserServiceTest {
    private UserServiceImpl usi = new UserServiceImpl();
    @Test
    public void registUser() {
        usi.registUser(new User("jjag","jksadf","aasg"));
    }

    @Test
    public void login() {
        User user = usi.login(new User("guigu", "2234", null));
        System.out.println(user);
    }

    @Test
    public void existsUsername() {
    }
}