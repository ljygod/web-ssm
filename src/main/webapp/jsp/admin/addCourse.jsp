<%--
  Created by IntelliJ IDEA.
  User: Ljy
  Date: 2017/7/6
  Time: 9:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%--<form action="/course/addCourse">--%>

        <%--课程编号：<input type="text" name="course_id"><br>--%>
        <%--课程名称：<input type="text" name="course_name"><br>--%>
        <%--学分：<input type="text" name="course_credit"><br>--%>
        <%--学时：<input type="text" name="course_time"><br>--%>
        <%--任课教师编号：<input type="text" name="teacher_id"><br>--%>
        <%--<input type="submit" value="提交">--%>
    <%--</form>--%>

    <form action="/course/addCourse">
        <table border="1px" align="center" width="90%" height="76%"
               style="background-color:#7DBEE4">
            <caption>
                <h1>课程信息</h1>
            </caption>
            <tr><!--第1行开始-->
                <th>课程编号</th>
                <th width=50%>
                    <input type="text" value="" name="course_id" id="course_id">
                </th>
                <th>课程名称</th>
                <th width=50%>
                    <input type="text" value="" id="course_name" name="course_name">
                </th>
            </tr><!--第1行结束-->

            <tr><!--第2行开始-->
                <th>学分</th>
                <th>
                    <input type="text" value="" name="course_credit" id="course_credit" >
                </th>
                <th>学时</th>
                <th>
                    <input type="text" value="" name="course_time" id="course_time">
                </th>

            </tr><!--第2行结束-->

            <tr><!--第3行开始-->
                <th>任课教师编号</th>
                <th>
                    <input type="text" value="" name="teacher_id" id="teacher_id">
                </th>
                <%--<th>考试课程ID</th>--%>
                <%--<th>--%>
                    <%--<input type="text" value="" name="course_id" id="course_id">--%>
                <%--</th>--%>
            </tr><!--第3行结束-->

        </table>
        <br/>
        <center>
            <input type="submit" value="添加">
        </center>
    </form>
</body>
</html>
