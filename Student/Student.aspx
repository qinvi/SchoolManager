<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="height: 100%; overflow: hidden;">
<head runat="server">
    <title>曾庆维-教务管理系统</title>
    <link href="Css/Default.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="JS/JavaScript.js"></script>
</head>
<body style="width: auto; height: 100%; border: 5px solid rgba(54, 90, 209, 0.69); margin: 0; padding: 0;">
    <form id="form1" runat="server">
        <div style="margin: -2px; width: 100%; height: 100%" align="center">
            <table style="width: 100%;">
                <div id="stu_header">
                    <asp:Image ImageUrl="../Images/logo_school.png" runat="server" Style="position: relative; left: -250px;" />
                    <asp:Image ImageUrl="../Images/logo_jw.png" runat="server" Style="position: relative; left: -250px; top: 15px;" />
                </div>

                <tr>
                    <td colspan="3" style="width: 100%; height: 1px;" align="left" rowspan="" valign="top">
                        <div class="imrcmain0 imgl" style="width: 100%; z-index: 999999; position: relative; left: 0px; top: 0px;">
                            <div class="imcm imde" id="imouter0">
                                <ul id="imenus0" style="text-decoration: none; list-style: none; line-height: 30px;">
                                    <li class="imatm" style="float: left; width: 100px;"><a class="" href="#" style="color: #3F6FC3; text-decoration: none;"><span class="imea imeam"><span></span></span>公告信息</a>

                                    </li>


                                    <li class="imatm" style="float: left; width: 100px;"><a href="#" style="color: #3F6FC3; text-decoration: none;"><span class="imea imeam"><span></span></span>活动报名</a>

                                        <div class="imsc"></div>
                                    </li>

                                    <li class="imatm" style="float: left; width: 100px;"><a href="Default.aspx" style="color: #3F6FC3; text-decoration: none;"><span class="imea imeam"><span></span></span>信息维护</a>

                                        <div id="item1" class="imsc">
                                            <div class="imsubc" style="width: 120px; top: 0px; left: 0px;">
                                                <ul style="list-style: none; background-color: rgba(46, 132, 241, 0.36); border: 1px gray solid">
                                                    <li><a href="#">个人信息</a></li>
                                                    <li><a href="ChangePwd.aspx">修改密码</a></li>


                                                </ul>
                                            </div>
                                        </div>
                                    </li>

                                    <li class="imatm" style="float: left; width: 100px;"><a href="Default.aspx" style="color: #3F6FC3; text-decoration: none;"><span class="imea imeam"><span></span></span>信息查询</a>

                                        <div class="imsc">
                                            <div class="imsubc" style="width: 120px; top: 0px; left: 0px;">
                                                <ul style="list-style: none;">
                                                    <li><a href="TeacherCourse.aspx">教师个人课表查询</a></li>
                                                    <li><a href="CourseTable.aspx">个人课表查询</a></li>
                                                    <%--href="QueryScore.aspx"  --%>
                                                    <li><a href="QueryScore.aspx">成绩查询</a></li>
                                                    <li><a href="QueryExam.aspx">考试查询</a></li>
                                                    <li><a href="#">教室查询</a></li> <%--QueryRoom.aspx--%>
                                                    <li><a href="#">学生选课情况查询</a></li>  <%--QuerySelected.aspx--%>
                                                    <li><a href="#">培养计划</a></li>  <%--PlanCourse.aspx--%>

                                                </ul>
                                            </div>
                                        </div>
                                    </li>


                                    <li class="imatm" style="float: left; width: 100px;"><a href="Default.aspx" style="color: #3F6FC3; text-decoration: none;"><span class="imea imeam"><span></span></span>网上选课</a>

                                        <div class="imsc">
                                            <div class="imsubc" style="width: 140px; top: 0px; left: 0px;">
                                                <ul style="list-style: none;">
                                                    <li><a href="ChooseCourse.aspx">学生选课</a></li>
                                                    <li><a href="#">实验选题</a></li>
                                                    <li><a href="#">重修学习报名</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </li>

                                    <li class="imatm" style="float: left; width: 100px;"><a href="Default.aspx" style="color: #3F6FC3; text-decoration: none;"><span class="imea imeam"><span></span></span>系统维护</a>

                                        <div class="imsc">
                                            <div class="imsubc" style="width: 120px; top: 0px; left: 0px;">
                                                <ul style="list-style: none;">
                                                    <li><a href="Loginout.aspx">注销登陆</a></li>
                                                    <li><a href="" onclick="window.close()">退出系统</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </li>

                                </ul>
                                <div class="imclear">&nbsp;</div>
                            </div>
                            <span id ="label"></span>
                            <span style="color: #2775ca; font-weight: bold; white-space: pre;">当前位置 -- </span>
                            <span id ="announ" style="color: #2775ca; font-weight: bold;">通知公告</span>
                            <div id="wrap" style="border-radius: 6px; clear: left; background-color: white; border: 5px solid rgba(47, 136, 189, 0.60); width: 99%; margin-left: 3px; margin-right: 30px; margin-top: 14px; height: 100%; white-space: pre;">     
                            </div>


                     
                        </div>
                        <script language="JavaScript" src="Jscript/Jscript.js" type="text/javascript"></script>

                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="height: 421px; text-align: left; width: 100%;" valign="top">
                        <table style="width: 357px; margin-bottom: -20px;">
                            <tr>
                                <td colspan="3" style="height: 18px; width: 100%; font-size: 12px">
                                    <asp:Label ID="lblLoginWel" runat="server" Width="500px" Height="15px"></asp:Label></td>
                            </tr>
                        </table>
                        <%--   <asp:ContentPlaceHolder ID="ContentPlaceHolder1" runat="server">
                        </asp:ContentPlaceHolder>--%>
                    </td>
                </tr>
                <tr>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
