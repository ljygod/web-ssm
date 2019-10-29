<%--
  Created by IntelliJ IDEA.
  User: Ljy
  Date: 2017/7/5
  Time: 13:04
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
    <form action="/admin/getStudentById">
        请输入学生ID：<input type="text" name="stu_id"><input type="submit" value="提交">
    </form>

<c:if test="${not empty student}">

    <table id="travel">

        <caption>学生信息</caption>
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

            <tr>
                <th>${student.stu_Id}</th>
                <th>${student.stu_Name}</th>
                <th>${student.stu_Sex}</th>
                <th>${student.stu_Age}</th>
                <th>${student.stu_Email}</th>
                <th>${student.stu_Phone}</th>
                <th>${student.class_Name}</th>
                <th>${student.stu_Nation}</th>
            </tr>
        </tbody>
</c:if>

</body>
</html>
