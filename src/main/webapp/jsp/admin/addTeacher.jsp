<%--
  Created by IntelliJ IDEA.
  User: Ljy
  Date: 2017/7/5
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/admin/addTeacher">
    <table border="1px" align="center" width="90%" height="76%"
           style="background-color:#7DBEE4">
        <caption>
            <h1>个人信息</h1>
            <%--<h6>(只能更改带*号部分)</h6>--%>
        </caption>
        <tr><!--第1行开始-->
            <th>姓名</th>
            <th width=50%>
                <input type="text" value="" name="teacher_name" id="teacher_name">
            </th>
            <th>邮箱</th>
            <th width=50%>
                <input type="text" value="" id="teacher_email" name="teacher_email">
            </th>
        </tr><!--第1行结束-->

        <tr><!--第2行开始-->
            <th>工号</th>
            <th>
                <input type="text" value="" name="teacher_id" id="teacher_id" >
            </th>
            <th>性别</th>
            <th>
                <input type="text" name="teacher_sex" value="" id="teacher_sex">
            </th>

        </tr><!--第2行结束-->

        <tr><!--第3行开始-->
            <th>年龄</th>
            <th>
                <input type="text" name="teacher_age" value="" id="teacher_age">
            </th>
            <th>院系</th>
            <th>
                <input type="text" name="major_id" value="" id="major_id">
            </th>
        </tr><!--第3行结束-->

        <tr><!--第4行开始-->
            <th>籍贯</th>
            <th colspan="3">
                <input type="text" value="" name="teacher_nation" id="teacher_nation">
            </th>
        </tr><!--第4行结束-->

        <tr><!--第5行开始-->
            <th>电话</th>
            <th colspan="3">
                <input type="text" value="" id="teacher_phone" name="teacher_phone">
            </th>
        </tr><!--第5行结束-->

        <tr><!--第6行开始-->
            <th>职称</th>
            <th colspan="3">
                <input type="text" value="" name="teacher_position" id="teacher_position"/>
            </th>
        </tr><!--第6行结束-->
    </table>
    <br/>
    <center>
        <input type="submit" value="添加">
    </center>
</form>
</body>
</html>
