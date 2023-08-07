package com.atguigu.dao;

import com.atguigu.pojo.User;
import org.junit.Test;

import javax.jws.soap.SOAPBinding;

public interface UserDao {

    public User queryUserByUsername(String username);
    public int saveUser(User user);
    public User queryUserByUsernameAndPassword(String username,String password);



}
