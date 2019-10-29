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

    <caption>所有已选课程信息</caption>
    <thead>
    <tr>
        <th scope="col">课程代码</th>
        <th scope="col">课程名称</th>
        <th scope="col">学分</th>
        <th scope="col">课程学时</th>
        <th scope="col">任课老师</th>
        <th scope="col"></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="course" items="${listCourse}">
        <tr>
            <th>${course.course_Id}</th>
            <th>${course.course_Name}</th>
            <th>${course.course_Credit}</th>
            <th>${course.course_Time}</th>
            <th>${course.teacher_Name}</th>
            <th><a href="${pageContext.request.contextPath}/studentCourse/delStudentCourse?course_id=${course.course_Id}">退选</a></th>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>