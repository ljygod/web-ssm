<%--
  Created by IntelliJ IDEA.
  User: Ljy
  Date: 2017/7/5
  Time: 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" media="screen" href="../../css/css-table.css"/>
    <script type="text/javascript" src="../../js/jquery-1.2.6.min.js"></script>
    <script type="text/javascript" src="../../js/style-table.js"></script>
</head>
<body>
<form action="/grade/selectSubjectGrade">
    请输入要查询的课程名称：<input type="text" name="course_name"><input type="submit" value="提交">
</form>

<c:if test="${not empty gradeList}">


    <table id="travel">

        <caption>所有单科成绩</caption>
        <thead>
        <tr>
            <th scope="col">学生ID</th>
            <th scope="col">课程代码</th>
            <th scope="col">课程名称</th>
            <th scope="col">成绩</th>

        </tr>
        </thead>
        <tbody>
        <c:forEach var="grade" items="${gradeList}">
            <tr>
                <th>${grade.stu_Id}</th>
                <th>${grade.course_Id}</th>
                <th>${grade.course_Name}</th>
                <th>${grade.grade}</th>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</c:if>
</body>
</html>
