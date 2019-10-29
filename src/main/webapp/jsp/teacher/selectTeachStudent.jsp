<%--
  Created by IntelliJ IDEA.
  User: Ljy
  Date: 2017/7/4
  Time: 19:52
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
<%--<%--%>
    <%--String teacher_id = request.getParameter("teacher_id");--%>
    <%--pageContext.setAttribute("teacher_id", teacher_id);--%>
<%--%>--%>
<body>
    <form action="/student/selectTeachStudent">
    输入查询的课程名称：<input type="text" name="course_name"><input type="submit" value="查询">
    </form>
    <c:if test="${not empty studentList}">
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
                <%--<th scope="col">学生班级</th>--%>
                <th scope="col">学生籍贯</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="students" items="${studentList}">
                <tr>
                    <th>${students.stu_Id}</th>
                    <th>${students.stu_Name}</th>
                    <th>${students.stu_Sex}</th>
                    <th>${students.stu_Age}</th>
                    <th>${students.stu_Email}</th>
                    <th>${students.stu_Phone}</th>
                    <th>${students.stu_Nation}</th>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </c:if>
</body>
</html>
