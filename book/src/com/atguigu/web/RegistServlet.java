package com.atguigu.web;

import com.atguigu.pojo.User;
import com.atguigu.service.UserService;
import com.atguigu.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class RegistServlet extends HttpServlet {
    private UserService userService = new UserServiceImpl();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String email = req.getParameter("email");
        String code = req.getParameter("code");
        if("abcde".equalsIgnoreCase(code)){
            if(userService.existsUsername(username)){
                System.out.println("bukeyong");
                req.setAttribute("msg","用户名已存在错误");
                req.setAttribute("username","用户名错误");
                req.setAttribute("email","邮箱错误");
                req.getRequestDispatcher("/pages/user/regist.jsp").forward(req,resp);
            }else{
                req.setAttribute("msg","验证码错误");
                req.setAttribute("username","用户名错误");
                req.setAttribute("email","邮箱错误");
                userService.registUser(new User(username,password,email));
                req.getRequestDispatcher("/pages/user/regist_success.jsp").forward(req,resp);
            }
        }else {
            req.getRequestDispatcher("/pages/user/regist.jsp").forward(req,resp);
        }
    }
}
