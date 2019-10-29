<%--
  Created by IntelliJ IDEA.
  User: Ljy
  Date: 2017/7/9
  Time: 15:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-color: #F7F7F7;
            font-family: '汉仪大隶书繁';
        }

        form {
            max-width: 640px;
            width: 100%;
            margin: 24px auto;
            font-size: 28px;
        }

        label {
            display: block;
            margin: 10px 10px 15px;
            font-size: 24px;
        }

        input {
            display: block;
            width: 100%;
            height: 40px;
            font-size: 22px;
            margin-top: 10px;
            padding: 6px 10px;
            color: #333;
            border: 1px solid #CCC;
            box-sizing: border-box;
        }

        meter, progress {
            display: block;
            width: 100%;
            margin-top: 10px;
        }

        .btn {
            margin-top: 30px;
        }

        .btn input {
            color: #FFF;
            background-color: #2A8DC8;
            border: 0 none;
            outline: none;
            cursor: pointer;
        }

    </style>
</head>
<body>
<form action="/grade/updateGrade">
    <fieldset>
        <legend>录入成绩</legend>
        <label for="">
            学生ID: <input type="text" required autofocus placeholder="请输入学生ID" name="stu_id" id="stu_id">
        </label>
        <label for="">
            课程ID: <input type="text"  placeholder="请输入课程ID" name="course_id" id="course_id">
        </label>
        <label for="">
            成绩: <input type="text" placeholder="请输入成绩" name="grade">
        </label>


        <label for="" class="btn">
            <input type="submit" value="保存">
        </label>
    </fieldset>
</form>




</body>
</html>
