<%--
  Created by IntelliJ IDEA.
  User: Ljy
  Date: 2017/7/5
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body >
<form action="/admin/addStudent">
    <table border="1px" align="center" width="90%" height="76%"
           style="background-color:#7DBEE4">
        <caption>
            <h1>个人信息</h1>
        </caption>
        <tr><!--第1行开始-->
            <th>姓名</th>
            <th width=50%>
                <input type="text" value="" name="stu_name" id="stu_name">
            </th>
            <th>邮箱</th>
            <th width=50%>
                <input type="text" value="" id="stu_email" name="stu_email">
            </th>
        </tr><!--第1行结束-->

        <tr><!--第2行开始-->
            <th>学号</th>
            <th>
                <input type="text" value="" name="stu_id" id="stu_id" >
            </th>
            <th>性别</th>
            <th>
                <input type="text" value="" name="stu_sex" id="stu_sex">
            </th>

        </tr><!--第2行结束-->

        <tr><!--第3行开始-->
            <th>年龄</th>
            <th>
                <input type="text" value="" name="stu_age" id="stu_age">
            </th>
            <th>班级ID</th>
            <th>
                <input type="text" value="" name="class_id" id="class_id">
            </th>
        </tr><!--第3行结束-->

        <tr><!--第4行开始-->
            <th>籍贯</th>
            <th colspan="3">
                <input type="text" value="" name="stu_nation" id="stu_nation">
            </th>
        </tr><!--第4行结束-->

        <tr><!--第5行开始-->
            <th>电话</th>
            <th colspan="3">
                <input type="text" value="" id="stu_phone" name="stu_phone">
            </th>
        </tr><!--第5行结束-->

        <%--<tr><!--第6行开始-->--%>
        <%--<th>邮箱</th>--%>
        <%--<th colspan="3">--%>
        <%--<input type="text">--%>
        <%--</th>--%>
        <%--</tr><!--第6行结束-->--%>
    </table>
    <br/>
    <center>
        <input type="submit" value="修改">
    </center>
</form>
</body>
</html>
