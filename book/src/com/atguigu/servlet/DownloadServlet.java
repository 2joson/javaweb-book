package com.atguigu.servlet;

import org.apache.commons.io.IOUtils;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class DownloadServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String downloadFileName = "a.png";
        ServletContext sc = getServletContext();
        String mime = sc.getMimeType("/file/" + downloadFileName);

        resp.setContentType(mime);
        resp.setHeader("Content-Disposition","attachment;filement" + downloadFileName);
        InputStream is = sc.getResourceAsStream("/file/" + downloadFileName);
        ServletOutputStream os = resp.getOutputStream();
        IOUtils.copy(is, os);

    }
}
