<%--
  Created by IntelliJ IDEA.
  User: Ljy
  Date: 2017/7/7
  Time: 20:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form ACTION="/grade/updateGrade">

        学生ID：<input type="text" name="stu_id" id="stu_id"><br>
        课程ID：<input type="text" name="course_id" id="course_id"><br>
        成绩：<input type="text" name="grade"><BR>
        <input type="submit" value="提交">
    </form>
</body>
</html>
