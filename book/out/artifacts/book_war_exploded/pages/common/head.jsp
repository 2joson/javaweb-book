<%--
  Created by IntelliJ IDEA.
  User: m2068
  Date: 2023/4/2
  Time: 22:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme()
    + "://"
    + request.getServerName()
    + ":"
    + request.getServerPort()
    + request.getContextPath()
    + "/";
    pageContext.setAttribute("basePath",basePath);
%>

<base href=<%=basePath%>>
<link type="text/css" rel="stylesheet" href="static/css/style.css" >
<script src="static/script/jquery-3.0.0.js"></script>

