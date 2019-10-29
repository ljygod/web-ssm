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

    <caption>所有学生信息</caption>
    <thead>
    <tr>
        <th scope="col">学生ID</th>
        <th scope="col">学生姓名</th>
        <th scope="col">学生性别</th>
        <th scope="col">学生年龄</th>
        <th scope="col">学生邮箱</th>
        <th scope="col">学生电话</th>
        <th scope="col">学生班级</th>
        <th scope="col">学生籍贯</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="students" items="${listStudent}">
        <tr>
            <th>${students.stu_Id}</th>
            <th>${students.stu_Name}</th>
            <th>${students.stu_Sex}</th>
            <th>${students.stu_Age}</th>
            <th>${students.stu_Email}</th>
            <th>${students.stu_Phone}</th>
            <th>${students.class_Name}</th>
            <th>${students.stu_Nation}</th>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
