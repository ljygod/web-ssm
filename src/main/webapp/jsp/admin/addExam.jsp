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
<form action="/exam/addExam">
    <table border="1px" align="center" width="90%" height="76%"
           style="background-color:#7DBEE4">
        <caption>
            <h1>考试信息</h1>
        </caption>
        <tr><!--第1行开始-->
            <th>考试代码</th>
            <th width=50%>
                <input type="text" value="" name="exam_id" id="exam_id">
            </th>
            <th>考试名称</th>
            <th width=50%>
                <input type="text" value="" id="exam_name" name="exam_name">
            </th>
        </tr><!--第1行结束-->

        <tr><!--第2行开始-->
            <th>考试时间</th>
            <th>
                <input type="text" value="" name="exam_time" id="exam_time" >
            </th>
            <th>考试地址</th>
            <th>
                <input type="text" value="" name="exam_address" id="exam_address">
            </th>

        </tr><!--第2行结束-->

        <tr><!--第3行开始-->
            <th>发布人ID</th>
            <th>
                <input type="text" value="" name="admin_id" id="admin_id">
            </th>
            <th>考试课程ID</th>
            <th>
                <input type="text" value="" name="course_id" id="course_id">
            </th>
        </tr><!--第3行结束-->


        <%--<tr><!--第4行开始-->--%>
            <%--<th>籍贯</th>--%>
            <%--<th colspan="3">--%>
                <%--<input type="text" value="" name="stu_nation" id="stu_nation">--%>
            <%--</th>--%>
        <%--</tr><!--第4行结束-->--%>

        <%--<tr><!--第5行开始-->--%>
            <%--<th>电话</th>--%>
            <%--<th colspan="3">--%>
                <%--<input type="text" value="" id="stu_phone" name="stu_phone">--%>
            <%--</th>--%>
        <%--</tr><!--第5行结束-->--%>

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

