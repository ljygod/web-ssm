<%--
  Created by IntelliJ IDEA.
  User: Ljy
  Date: 2017/7/2
  Time: 20:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" media="screen" href="../../css/css-table.css" />
    <script type="text/javascript" src="../../js/jquery-1.2.6.min.js"></script>
    <script type="text/javascript" src="../../js/style-table.js"></script>
</head>
<body>
<table id="travel">

    <caption>所有账户信息</caption>
    <thead>
    <tr>
        <th scope="col">账号</th>
        <th scope="col">密码</th>
        <th scope="col">权限</th>
        <th scope="col"></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="user" items="${userList}">
        <tr>
            <th>${user.use_Id}</th>
            <th>${user.user_Password}</th>
            <th>${user.user_Auth}</th>
            <th><a href="/admin/delUser?u_id=${user.use_Id}">删除</a></th>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
