package com.atguigu.test;

import com.atguigu.dao.impl.UserDaoImpl;
import com.atguigu.pojo.User;
import org.junit.Test;

import static org.junit.Assert.*;

public class UserDaoTest {
    UserDaoImpl userDao = new UserDaoImpl();

    @Test
    public void queryUserByUsername() {

        User guigu = userDao.queryUserByUsername("guigu");
        System.out.println(guigu);
    }

    @Test
    public void saveUser() {
        User user = new User("guiji", "445", "3490");

        UserDaoImpl userDao = new UserDaoImpl();
        userDao.saveUser(user);
    }

    @Test
    public void queryUserByUsernameAndPassword() {
        User guigu = userDao.queryUserByUsernameAndPassword("guigu", "2234");
        System.out.println(guigu);
    }
}