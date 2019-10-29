<%@ page import="org.springframework.web.context.request.SessionScope" %><%--
  Created by IntelliJ IDEA.
  User: Ljy
  Date: 2017/7/2
  Time: 19:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body >
<%

%>
<form>
    <table border="1px"align="center"width="90%" height="80%"
           style="background-color:#7DBEE4">
        <caption><h1>个人信息</h1></caption>
        <tr><!--第1行开始-->
            <th>姓名</th>
            <th width="50%">
                ${student.stu_Name}
            </th>
            <th>邮箱</th>
            <th width="50%">
                ${student.stu_Email}
            </th>
        </tr><!--第1行结束-->

        <tr><!--第2行开始-->
            <th>学号</th>
            <th>
                ${student.stu_Id}
            </th>
            <th>性别</th>
            <th>
                ${student.stu_Sex}
            </th>

        </tr><!--第2行结束-->

        <tr><!--第3行开始-->
            <th>年龄</th>
            <th>
                ${student.stu_Age}
            </th>
            <th>班级</th>
            <th>
                ${student.class_Name}
            </th>
        </tr><!--第3行结束-->

        <tr><!--第4行开始-->
            <th>籍贯</th>
            <th colspan="3">
                ${student.stu_Nation}
            </th>
        </tr><!--第4行结束-->

        <tr><!--第5行开始-->
            <th>电话</th>
            <th colspan="3">
                ${student.stu_Phone}
            </th>
        </tr><!--第5行结束-->

        <%--<tr><!--第6行开始-->--%>
            <%--<th>邮箱</th>--%>
            <%--<th colspan="3">--%>
            <%--</th>--%>
        <%--</tr><!--第6行结束-->--%>
    </table>
</form>
</body>
</html>
