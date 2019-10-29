<%--
  Created by IntelliJ IDEA.
  User: Ljy
  Date: 2017/7/2
  Time: 15:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <STYLE type=text/css>
        BODY {
            PADDING-RIGHT: 0px;
            PADDING-LEFT: 0px;
            PADDING-BOTTOM: 0px;
            MARGIN: 0px;
            PADDING-TOP: 0px;
            BACKGROUND-COLOR: #2a8dc8
        }

        BODY {
            FONT-SIZE: 12px;
            COLOR: #003366;
            FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif
        }

        TD {
            FONT-SIZE: 12px;
            COLOR: #003366;
            FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif
        }

        DIV {
            FONT-SIZE: 12px;
            COLOR: #003366;
            FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif
        }

        P {
            FONT-SIZE: 12px;
            COLOR: #003366;
            FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif
        }
    </STYLE>

</head>
<BODY>

<FORM id=form1 name=form1 action="" method=post>
    <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
            <TD width=10><IMG src="../../images/new_001.jpg" border=0></TD>
            <TD background=../../images/new_002.jpg><FONT size=5><B>学生信息管理系统v1.0</B></FONT></TD>
            <TD background=../../images/new_002.jpg>
                <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                        <TD align=right height=35></TD>
                    </TR>
                    <TR>
                        <TD height=35 align="right">
                            当前用户：${sessionScope.teacher.teacher_Name}
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <A href="${pageContext.request.contextPath}/jsp/updatePassword1.jsp" target=_top><FONT color=red>修改密码</FONT></A>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <A href="/user/logout" target=_top><FONT color=red>安全退出</FONT></A>
                        </TD>
                    </TR>
                    </TBODY>
                </TABLE>
            </TD>
            <TD width=10><IMG src="../../images/new_003.jpg" border=0></TD>
        </TR>
        </TBODY>
    </TABLE>
</FORM>
</BODY>
</html>
