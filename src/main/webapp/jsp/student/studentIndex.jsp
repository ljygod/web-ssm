<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>主页</title>
</head>
<html>
<%

 //   pageContext.setAttribute("student", );
    //request.getAttribute("student");

%>

<FRAMESET frameSpacing=0 rows=80,* frameBorder=0>
    <FRAME name=top src="/jsp/student/studentTop.jsp" frameBorder=0 noResize scrolling=no>
    <FRAMESET cols=220,*>
        <FRAME name=menu src="/jsp/student/studentMenu.jsp" frameBorder=0 noResize>
        <FRAME name=main src="/jsp/student/studentWelcome.jsp" frameBorder=0>
    </FRAMESET>
    <NOFRAMES>
        <p>This page requires frames, but your browser does not support
            them.</p>
    </NOFRAMES>
</FRAMESET>
</html>
