<%--
  Created by IntelliJ IDEA.
  User: Ljy
  Date: 2017/7/5
  Time: 11:40
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

    <caption>所有教师信息</caption>
    <thead>
    <tr>
        <th scope="col">工号</th>
        <th scope="col">姓名</th>
        <th scope="col">性别</th>
        <th scope="col">年龄</th>
        <th scope="col">邮箱</th>
        <th scope="col">电话</th>
        <th scope="col">职称</th>
        <th scope="col">籍贯</th>
        <th scope="col">学院</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="teacher" items="${teacherList}">
        <tr>
            <th>${teacher.teacher_Id}</th>
            <th>${teacher.teacher_Name}</th>
            <th>${teacher.teacher_Sex}</th>
            <th>${teacher.teacher_Age}</th>
            <th>${teacher.teacher_Email}</th>
            <th>${teacher.teacher_Phone}</th>
            <th>${teacher.teacher_Position}</th>
            <th>${teacher.teacher_Nation}</th>
            <th>${teacher.major_Name}</th>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
