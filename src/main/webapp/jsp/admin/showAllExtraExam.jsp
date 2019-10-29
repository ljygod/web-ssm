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
<body>
<table id="travel">

    <caption>所有考试信息</caption>
    <thead>
    <tr>
        <th scope="col">考试代码</th>
        <th scope="col">考试名称</th>
        <th scope="col">考试时间</th>
        <th scope="col">考试地址</th>
        <th scope="col">考试花费</th>
        <th scope="col">考试发布人</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="exam" items="${extraExamList}">
        <tr>
            <th>${exam.extraexam_Id}</th>
            <th>${exam.extraexam_Name}</th>
            <th>${exam.extraexam_Time}</th>
            <th>${exam.extraexam_Address}</th>
            <th>${exam.extraexam_Cost}</th>
            <th>${exam.admin_Name}</th>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>