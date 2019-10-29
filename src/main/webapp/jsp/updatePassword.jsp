<%--
  Created by IntelliJ IDEA.
  User: Ljy
  Date: 2017/7/7
  Time: 19:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="/user/updateUser">
        请输入新密码：<input type="text" name="password" id="password"><br>
        请重复密码：<input type="text" name="rePassword" id="rePassword"><br>
        <input type="submit" value="修改">
    </form>
</body>
</html>
