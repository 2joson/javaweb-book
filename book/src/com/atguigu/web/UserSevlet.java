package com.atguigu.web;

import com.atguigu.pojo.User;
import com.atguigu.service.UserService;
import com.atguigu.service.impl.UserServiceImpl;
import com.atguigu.utils.WebUtils;
import com.google.gson.Gson;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

import static com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY;

public class UserSevlet extends BaseServlet {
    //当创建子类对象后，会先执行父类的代码（因为子类要使用父类中的代码。但并不创建父类对象),再执行子类对象代码

    private UserService us = new UserServiceImpl();

    protected void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        User loginUser = us.login(new User(username, password, null));
        if(loginUser == null){
            req.setAttribute("msg","用户名或密码错误");
            req.setAttribute("username",username);
            System.out.println("error");
            req.getRequestDispatcher("/pages/user/login.jsp").forward(req,resp);
        }else {
            req.getSession().setAttribute("user",loginUser);
            req.getRequestDispatcher("/pages/user/login_success.jsp").forward(req,resp);
        }
    }
    protected void regist(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String username = req.getParameter("username");
//        String password = req.getParameter("password");
//        String email = req.getParameter("email");
        String token = (String)req.getSession() .getAttribute(KAPTCHA_SESSION_KEY);
        req.getSession().removeAttribute(KAPTCHA_SESSION_KEY);
        String code = req.getParameter("code");


        User user = WebUtils.copyParamToBean(req.getParameterMap(), new User());
        if(token != null && token.equalsIgnoreCase(code)){
            if(us.existsUsername(user.getUsername())){
                System.out.println("bukeyong");
                req.setAttribute("msg","用户名已存在错误");
                req.setAttribute("username","用户名错误");
                req.setAttribute("email","邮箱错误");
                req.getRequestDispatcher("/pages/user/regist.jsp").forward(req,resp);
            }else{
                req.setAttribute("msg","验证码错误");
                req.setAttribute("username","用户名错误");
                req.setAttribute("email","邮箱错误");
                us.registUser(user);
                req.getRequestDispatcher("/pages/user/regist_success.jsp").forward(req,resp);
            }
        }else {
            req.getRequestDispatcher("/pages/user/regist.jsp").forward(req,resp);
        }
    }

    protected void logOut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getSession().invalidate();
        resp.sendRedirect(req.getContextPath());
    }
    protected void ajaxExistsUsername(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        boolean existsUsername = us.existsUsername(username);
        Map<String,Object> resultMap = new HashMap<>();
        resultMap.put("existsUsername",existsUsername);
        Gson gson = new Gson();
        String json = gson.toJson(resultMap);
        resp.getWriter().write(json);
    }
}


