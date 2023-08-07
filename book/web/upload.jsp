<%--
  Created by IntelliJ IDEA.
  User: m2068
  Date: 2023/4/1
  Time: 21:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="http://localhost:8080/book/uploadServlet" method="post" enctype="multipart/form-data">
        用户名：<input type="text" name="username">
        头像:<input type="file" name="photo">
        <input type="submit" value="上传">S
    </form>
</body>
</html>
