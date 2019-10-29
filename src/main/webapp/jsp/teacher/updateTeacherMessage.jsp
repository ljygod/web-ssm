<%--
  Created by IntelliJ IDEA.
  User: Ljy
  Date: 2017/7/2
  Time: 19:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/teacher/updateTeacherMessage">
    <table border="1px" align="center" width="80%" height="66%"
           style="background-color:#7DBEE4" >
        <caption>
            <h1>个人信息</h1>
            <h6>(只能更改带*号部分)</h6>
        </caption>
        <tr><!--第1行开始-->
            <th>姓名</th>
            <th width=50%>
                <input type="text" value="${sessionScope.teacher.teacher_Name}" readonly="readonly">
            </th>
            <th>邮箱*</th>
            <th width=50%>
                <input type="text" value="${sessionScope.teacher.teacher_Email}" id="teacher_email" name="teacher_email">
            </th>
        </tr><!--第1行结束-->

        <tr><!--第2行开始-->
            <th>学号</th>
            <th>
                <input type="text" value="${sessionScope.teacher.teacher_Id}" name="teacher_id" id="teacher_id" readonly="readonly">
            </th>
            <th>性别</th>
            <th>
                <input type="text" readonly="readonly" value="${sessionScope.teacher.teacher_Sex}">
            </th>

        </tr><!--第2行结束-->

        <tr><!--第3行开始-->
            <th>年龄</th>
            <th>
                <input type="text" readonly="readonly" value="${sessionScope.teacher.teacher_Age}">
            </th>
            <th>院系</th>
            <th>
                <input type="text" readonly="readonly" value="${sessionScope.teacher.major_Name}">
            </th>
        </tr><!--第3行结束-->

        <tr><!--第4行开始-->
            <th>籍贯</th>
            <th colspan="3">
                <input type="text" value="${sessionScope.teacher.teacher_Nation}" readonly="readonly">
            </th>
        </tr><!--第4行结束-->

        <tr><!--第5行开始-->
            <th>电话*</th>
            <th colspan="3">
                <input type="text" value="${sessionScope.teacher.teacher_Phone}" id="teacher_phone" name="teacher_phone">
            </th>
        </tr><!--第5行结束-->

        <tr><!--第6行开始-->
            <th>职称</th>
            <th colspan="3">
                <input type="text" value="${sessionScope.teacher.teacher_Position}" readonly="readonly"/>
            </th>
        </tr><!--第6行结束-->
    </table>
    <br/>
    <center>
        <input type="submit" value="修改">
    </center>
</form>
</body>
</html>
