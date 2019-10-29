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

    <caption>所有成绩信息</caption>
    <thead>
    <tr>
        <th scope="col">学生ID</th>
        <th scope="col">课程代码</th>
        <th scope="col">课程名称</th>
        <th scope="col">成绩</th>

    </tr>
    </thead>
    <tbody>
    <c:forEach var="grade" items="${listGrade}">
        <tr>
            <th>${grade.stu_Id}</th>
            <th>${grade.course_Id}</th>
            <th>${grade.course_Name}</th>
            <th>${grade.grade}</th>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>