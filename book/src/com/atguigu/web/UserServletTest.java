package com.atguigu.web;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class UserServletTest {
    public void login(){
        System.out.println("login");
    }
    public void regist(){
        System.out.println("regist");
    }
    public void updatePassword(){
        System.out.println("updatep");
    }

    public static void main(String[] args) {
        String action = "login";
        try {
            Method method = UserServletTest.class.getDeclaredMethod(action);
            method.invoke(new UserServletTest());
        } catch (NoSuchMethodException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e) {
            throw new RuntimeException(e);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        }

    }
}
