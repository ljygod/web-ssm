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
<form action="/user/updateUser">
    <fieldset>
        <legend>修改密码</legend>
        <label for="">
            新密码: <input type="password" required autofocus placeholder="请输入新密码：" name="password" id="password">
        </label>
        <label for="">
            重复新密码: <input type="password"  placeholder="请重复密码：" name="rePassword" id="rePassword">
        </label>
        <%--<label for="">--%>
            <%--成绩: <input type="text" placeholder="请输入成绩" name="grade">--%>
        <%--</label>--%>


        <label for="" class="btn">
            <input type="submit" value="修改" >
        </label>
    </fieldset>
</form>


<script>

//    function check() {
//        var p1 = document.getElementById("password").value;
//        var p2 = document.getElementById("rePassword").value;
//
//        if (p1 !== p2) {
//            alert("2次输入密码不一致！请重新输入")
//            location.href("/jsp/updatePassword1.jsp");
//        }
//    }


</script>

</body>
</html>
