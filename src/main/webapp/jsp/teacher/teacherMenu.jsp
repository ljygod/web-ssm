<%--
  Created by IntelliJ IDEA.
  User: Ljy
  Date: 2017/7/2
  Time: 16:13
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
            FONT-SIZE: 11px;
            COLOR: #003366;
            FONT-FAMILY: Verdana
        }

        TD {
            FONT-SIZE: 11px;
            COLOR: #003366;
            FONT-FAMILY: Verdana
        }

        DIV {
            FONT-SIZE: 11px;
            COLOR: #003366;
            FONT-FAMILY: Verdana
        }

        P {
            FONT-SIZE: 11px;
            COLOR: #003366;
            FONT-FAMILY: Verdana
        }

        .mainMenu {
            FONT-WEIGHT: bold;
            FONT-SIZE: 14px;
            cursor: pointer;
            COLOR: #000000
        }

        A.style2:link {
            PADDING-LEFT: 4px;
            COLOR: #0055bb;
            TEXT-DECORATION: none
        }

        A.style2:visited {
            PADDING-LEFT: 4px;
            COLOR: #0055bb;
            TEXT-DECORATION: none
        }

        A.style2:hover {
            PADDING-LEFT: 4px;
            COLOR: #ff0000;
            TEXT-DECORATION: none
        }

        A.active {
            PADDING-LEFT: 4px;
            COLOR: #ff0000;
            TEXT-DECORATION: none
        }

        .span {
            COLOR: #ff0000;
        }
    </STYLE>
    <SCRIPT language=javascript>
        function MenuDisplay(obj_id) {
            for (var i = 1; i <= 9; i++) {
                var obj = document.getElementById('table_' + i);
                if (obj) {
                    document.getElementById('table_' + i).style.display = 'none';
                    document.getElementById('table_' + i + 'Span').innerText = '＋';
                }

            }
            var obj = document.getElementById(obj_id);
            if (obj) {
                if (obj.style.display == 'none') {
                    obj.style.display = 'block';
                    document.getElementById(obj_id + 'Span').innerText = '－';
                } else {
                    obj.style.display = 'none';
                    document.getElementById(obj_id + 'Span').innerText = '＋';
                }
            }

        }
    </SCRIPT>
</head>
<BODY>
<FORM id=form1 name=form1 action=YHMenu.aspx method=post>
    <TABLE cellSpacing=0 cellPadding=0 width=210 align=center border=0>
        <TBODY>
        <TR>
            <TD width=15><IMG src="../../images/new_005.jpg" border=0></TD>
            <TD align=middle width=180 background=../../images/new_006.jpg
                height=35><B>信息系统 －功能菜单</B></TD>
            <TD width=15><IMG src="../../images/new_007.jpg" border=0></TD>
        </TR>
        </TBODY>
    </TABLE>
    <TABLE cellSpacing=0 cellPadding=0 width=210 align=center border=0>
        <TBODY>
        <TR>
            <TD width=15 background=../../images/new_008.jpg></TD>
            <TD vAlign=top width=180 bgColor=#ffffff>
                <TABLE cellSpacing=0 cellPadding=3 width=165 align=center border=0>
                    <TBODY>
                    <TR>
                        <TD class=mainMenu onClick="MenuDisplay('table_1');"><SPAN
                                class=span id=table_1Span>＋</SPAN> 信息管理
                        </TD>
                    </TR>
                    <TR>
                        <TD>
                            <TABLE id=table_1 style="DISPLAY: none" cellSpacing=0
                                   cellPadding=2 width=155 align=center border=0>
                                <TBODY>
                                <TR>
                                    <TD class=menuSmall>
                                        <A class=style2 href="/teacher/selectTeacherById?teacher_id=${sessionScope.teacher.teacher_Id}" target=main>－
                                            查看信息</A>
                                    </TD>
                                </TR>
                                <TR>
                                    <TD class=menuSmall><A class=style2 href="/jsp/teacher/updateTeacherMessage.jsp"
                                                           target=main>－ 修改信息</A></TD>
                                </TR>

                                </TBODY>
                            </TABLE>
                        </TD>
                    </TR>
                    <TR>
                        <TD background=../../images/new_027.jpg height=1></TD>
                    </TR>
                    <TR>
                        <TD class=mainMenu onClick="MenuDisplay('table_2');"><SPAN
                                class=span id=table_2Span>＋</SPAN> 课程信息
                        </TD>
                    </TR>
                    <TR>
                        <TD>
                            <TABLE id=table_2 style="DISPLAY: none" cellSpacing=0
                                   cellPadding=2 width=155 align=center border=0>
                                <TBODY>
                                <TR>
                                    <TD class=menuSmall><A class=style2
                                                           href="/course/selectCourseByTeacherId?teacher_id=${sessionScope.teacher.teacher_Id}"
                                                           target=main>－ 任课课程</A></TD>
                                </TR>
                                <%--<TR>--%>
                                <%--<TD class=menuSmall><A class=style2 href="linkmanServlet?method=list"--%>
                                <%--target=main>－联系人列表</A></TD>--%>
                                <%--</TR>--%>

                                </TBODY>
                            </TABLE>
                        </TD>
                    </TR>
                    <TR>
                        <TD background=../../images/new_027.jpg height=1></TD>
                    </TR>
                    <TR>
                        <TD class=mainMenu onClick="MenuDisplay('table_5');"><SPAN
                                class=span id=table_5Span>＋</SPAN> 学生信息
                        </TD>
                    </TR>
                    <TR>
                        <TD>
                            <TABLE id=table_5 style="DISPLAY: none" cellSpacing=0
                                   cellPadding=2 width=155 align=center border=0>
                                <TBODY>
                                <TR>
                                    <TD class=menuSmall><A class=style2
                                                           href="/jsp/teacher/selectTeachStudent.jsp"
                                                           target=main>－教授课程学生</A></TD>
                                </TR>
                                <%--<TR>--%>
                                    <%--<TD class=menuSmall><A class=style2 href="#"--%>
                                                           <%--target=main>－客户拜访列表</A></TD>--%>
                                <%--</TR>--%>

                                </TBODY>
                            </TABLE>
                        </TD>
                    </TR>
                    <TR>
                        <TD background=../../images/new_027.jpg height=1></TD>
                    </TR>
                    <TR>
                        <TD class=mainMenu onClick="MenuDisplay('table_3');"><SPAN
                                class=span id=table_3Span>＋</SPAN> 综合查询
                        </TD>
                    </TR>
                    <TR>
                        <TD>
                            <TABLE id=table_3 style="DISPLAY: none" cellSpacing=0
                                   cellPadding=2 width=155 align=center border=0>
                                <TBODY>
                                <TR>
                                    <TD class=menuSmall><A class=style2 href="/jsp/teacher/selectStudentMessage.jsp"
                                                           target=main>－ 学生信息查询</A></TD>
                                </TR>
                                <TR>
                                    <TD class=menuSmall><A class=style2 href="/jsp/teacher/selectSubject.jsp"
                                                           target=main>－ 单科成绩查询</A></TD>
                                </TR>
                                <%--<TR>--%>
                                    <%--<TD class=menuSmall><A class=style2 href="#"--%>
                                                           <%--target=main>－ 客户拜访记录查询</A></TD>--%>
                                <%--</TR>--%>
                                </TBODY>
                            </TABLE>
                        </TD>
                    </TR>
                    <TR>
                        <TD background=../../images/new_027.jpg height=1></TD>
                    </TR>
                    <TR>
                        <TD class=mainMenu onClick="MenuDisplay('table_4');"><SPAN
                                class=span id=table_4Span>＋</SPAN> 成绩管理
                        </TD>
                    </TR>
                    <TR>
                        <TD>
                            <TABLE id=table_4 style="DISPLAY: none" cellSpacing=0
                                   cellPadding=2 width=155 align=center border=0>
                                <TBODY>
                                <TR>
                                    <TD class=menuSmall><A class=style2 href="/jsp/teacher/updateGrade.jsp"
                                                           target=main>－录入成绩</A></TD>
                                </TR>
                                <%--<TR>--%>
                                    <%--<TD class=menuSmall><A class=style2 href="#"--%>
                                                           <%--target=main>－客户来源统计</A></TD>--%>
                                <%--</TR>--%>

                                </TBODY>
                            </TABLE>
                        </TD>
                    </TR>
                    <%--<TR>--%>
                        <%--<TD background=../../images/new_027.jpg height=1></TD>--%>
                    <%--</TR>--%>
                    <%--<TR>--%>
                        <%--<TD class=mainMenu onClick="MenuDisplay('table_6');"><SPAN--%>
                                <%--class=span id=table_6Span>＋</SPAN>系统管理--%>
                        <%--</TD>--%>
                    <%--</TR>--%>
                    <%--<TR>--%>
                        <%--<TD>--%>
                            <%--<TABLE id=table_6 style="DISPLAY: none" cellSpacing=0--%>
                                   <%--cellPadding=2 width=155 align=center border=0>--%>
                                <%--<TBODY>--%>
                                <%--<TR>--%>
                                    <%--<TD class=menuSmall><A class=style2 href="#"--%>
                                                           <%--target=main>－角色管理</A></TD>--%>
                                <%--</TR>--%>
                                <%--<TR>--%>
                                    <%--<TD class=menuSmall><A class=style2 href="#"--%>
                                                           <%--target=main>－用户管理</A></TD>--%>
                                <%--</TR>--%>
                                <%--<TR>--%>
                                    <%--<TD class=menuSmall><A class=style2 href="#"--%>
                                                           <%--target=main>－数据字典</A></TD>--%>
                                <%--</TR>--%>
                                <%--</TBODY>--%>
                            <%--</TABLE>--%>
                        <%--</TD>--%>
                    <%--</TR>--%>
                    </TBODY>
                </TABLE>
            </TD>
            <TD width=15 background=../../images/new_009.jpg></TD>
        </TR>
        </TBODY>
    </TABLE>
    <TABLE cellSpacing=0 cellPadding=0 width=210 align=center border=0>
        <TBODY>
        <TR>
            <TD width=15><IMG src="../../images/new_010.jpg" border=0></TD>
            <TD align=middle width=180 background=../../images/new_011.jpg
                height=15></TD>
            <TD width=15><IMG src="../../images/new_012.jpg" border=0></TD>
        </TR>
        </TBODY>
    </TABLE>
</FORM>
</BODY>
</html>
