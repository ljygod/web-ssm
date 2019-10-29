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
                                        <A class=style2 href="/admin/showAllStudent" target=main>－
                                            学生信息</A>
                                    </TD>
                                </TR>
                                <TR>
                                    <TD class=menuSmall><A class=style2 href="/admin/getAllTeacher"
                                                           target=main>－ 老师信息</A></TD>
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
                                class=span id=table_2Span>＋</SPAN> 信息查询
                        </TD>
                    </TR>
                    <TR>
                        <TD>
                            <TABLE id=table_2 style="DISPLAY: none" cellSpacing=0
                                   cellPadding=2 width=155 align=center border=0>
                                <TBODY>
                                <TR>
                                    <TD class=menuSmall><A class=style2
                                                           href="/jsp/admin/selectStudentMessage.jsp"
                                                           target=main>－学生信息查询</A></TD>
                                </TR>
                                <TR>
                                <TD class=menuSmall><A class=style2 href="/jsp/admin/selectTeacherMessage.jsp"
                                target=main>－老师信息查询</A></TD>
                                </TR>

                                </TBODY>
                            </TABLE>
                        </TD>
                    </TR>
                    <TR>
                        <TD background=../../images/new_027.jpg height=1></TD>
                    </TR>
                    <TR>
                        <TD class=mainMenu onClick="MenuDisplay('table_5');"><SPAN
                                class=span id=table_5Span>＋</SPAN> 用户管理
                        </TD>
                    </TR>
                    <TR>
                        <TD>
                            <TABLE id=table_5 style="DISPLAY: none" cellSpacing=0
                                   cellPadding=2 width=155 align=center border=0>
                                <TBODY>
                                <TR>
                                    <TD class=menuSmall><A class=style2
                                                           href="/jsp/admin/addTeacher.jsp"
                                                           target=main>－添加教师</A></TD>
                                </TR>
                                <TR>
                                    <TD class=menuSmall><A class=style2 href="/jsp/admin/addStudent.jsp"
                                                           target=main>－添加学生</A></TD>
                                </TR>

                                </TBODY>
                            </TABLE>
                        </TD>
                    </TR>
                    <TR>
                        <TD background=../../images/new_027.jpg height=1></TD>
                    </TR>
                    <TR>
                        <TD class=mainMenu onClick="MenuDisplay('table_3');"><SPAN
                                class=span id=table_3Span>＋</SPAN> 账号管理
                        </TD>
                    </TR>
                    <TR>
                        <TD>
                            <TABLE id=table_3 style="DISPLAY: none" cellSpacing=0
                                   cellPadding=2 width=155 align=center border=0>
                                <TBODY>
                                <TR>
                                    <TD class=menuSmall><A class=style2 href="/admin/showAllUser"
                                                           target=main>－ 所有账户</A></TD>
                                </TR>
                                <TR>
                                    <TD class=menuSmall><A class=style2 href="/jsp/admin/addUser.jsp"
                                                           target=main>－ 添加账户</A></TD>
                                </TR>
                                <%--<TR>--%>
                                    <%--<TD class=menuSmall><A class=style2 href="/admin/showAllUser"--%>
                                                           <%--target=main>－ 删除账户</A></TD>--%>
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
                                class=span id=table_4Span>＋</SPAN> 课程管理
                        </TD>
                    </TR>
                    <TR>
                        <TD>
                            <TABLE id=table_4 style="DISPLAY: none" cellSpacing=0
                                   cellPadding=2 width=155 align=center border=0>
                                <TBODY>
                                <TR>
                                    <TD class=menuSmall><A class=style2 href="/course/allCourse"
                                    target=main>－课程信息</A></TD>
                                </TR>
                                <TD class=menuSmall><A class=style2 href="/jsp/admin/addCourse.jsp"
                                                       target=main>－课程录入</A></TD>


                                </TBODY>
                            </TABLE>
                        </TD>
                    </TR>
                    <TR>
                        <TD background=../../images/new_027.jpg height=1></TD>
                    </TR>
                    <TR>
                        <TD class=mainMenu onClick="MenuDisplay('table_6');"><SPAN
                                class=span id=table_6Span>＋</SPAN> 考试管理
                        </TD>
                    </TR>
                    <TR>
                        <TD>
                            <TABLE id=table_6 style="DISPLAY: none" cellSpacing=0
                                   cellPadding=2 width=155 align=center border=0>
                                <TBODY>
                                <TR>
                                    <TD class=menuSmall><A class=style2 href="${pageContext.request.contextPath}/exam/showAllExam"
                                                           target=main>－考试信息</A></TD>
                                </TR>
                                <TR>
                                    <TD class=menuSmall><A class=style2 href="${pageContext.request.contextPath}/jsp/admin/addExam.jsp"
                                                           target=main>－发布课程考试信息</A></TD>
                                </TR>
                                <TR>
                                    <TD class=menuSmall><A class=style2 href="/extraExam/showAllExtraExam"
                                                           target=main>－额外考试信息</A></TD>
                                </TR>
                                <TR>
                                    <TD class=menuSmall><A class=style2 href="/jsp/admin/addExtraExam.jsp"
                                                           target=main>－发布额外考试信息</A></TD>
                                </TR>
                                </TBODY>
                            </TABLE>
                        </TD>
                    </TR>
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
