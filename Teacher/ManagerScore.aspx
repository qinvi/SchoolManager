<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeFile="ManagerScore.aspx.cs" Inherits="Teacher_ManagerScore" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/style1.css" rel="stylesheet" type="text/css" />
    <script language="javascript" type="text/javascript">
        function btnCancel_onclick() {
            location.replace('Teacher.aspx');
        }
    </script>
</head>
<body style="width: auto; height: 100%; border: 2px solid rgba(54, 90, 209, 0.69); margin: 0; padding: 0;">
    <form id="form1" runat="server">
        <asp:FormView ID="formView" runat="server">
            <ItemTemplate>
                <div style="font-size: 13px; color: rgba(30, 116, 173, 0.83)">
                    欢迎你:
                <asp:Label ID="UserName" runat="server" Text='<%#Eval("UserName") %>' />
                </div>
            </ItemTemplate>
        </asp:FormView>
        <br />
        <div>
            <table style="border-right: #99ccff 0.1em solid; border-left: #99ccff 0.1em solid; width: 100%; margin-top: -3px; height: 100%; overflow: hidden;">
                <tr>
                    <td colspan="3" style="background-image: url(Images/main_top_bg.gif); width: 929px; height: 13px">
                        <asp:Image ID="Image1" runat="server" Height="14px" ImageUrl="~/Student/Images/main_top_1.gif"
                            Width="14px" />
                        成绩录入<asp:Label ID="lblTime" runat="server" Text="" Width="466px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <%--#99ccff--%>
                    <td colspan="3" style="vertical-align: top; width: 929px; text-align: left">
                        <table style="border-right: #99ccff 1px solid; border-top: #99ccff 1px solid; border-left: #99ccff 1px solid; border-bottom: #99ccff 1px solid; margin-left: 0px; margin-right: 0px; width: 100%; overflow: hidden;">
                            <tr>
                                <td colspan="6" style="border-right: #99ccff 0.1em solid; border-top: #99ccff 0.1em solid; border-left: #99ccff 0.1em solid; border-bottom: #99ccff 0.1em solid; height: 21px; text-align: left; width: 100%;">
                                    <asp:Label ID="lblTitle" runat="server" Text="成绩录入" Width="658px" CssClass="Css/style1"></asp:Label></td>
                            </tr>
                            <span></span>
                            <tr>
                                <td colspan="6" rowspan="2" style="text-align: left; width: 100%;"
                                    align="center" valign="top">
                                    <%--gv_ChooseClassTb--%>
                                    <asp:GridView ID="gv_ChooseClassTb" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                        Font-Names="tahoma,arial" Font-Size="13px" ForeColor="#333333" GridLines="None"
                                        PageSize="15" Width="100%" AllowPaging="false">
                                        <EmptyDataRowStyle Height="20px" />
                                        <RowStyle BackColor="#EFF3FB" Font-Size="12px" />
                                        <EditRowStyle BackColor="#2461BF" Height="20px" />
                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                        <HeaderStyle BackColor="SkyBlue" Font-Bold="True" ForeColor="White" Font-Size="12px" Height="12px" />
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <%--<asp:BoundField DataField="cb_id" HeaderText="课程代码" />
                                            <asp:BoundField DataField="cb_name" HeaderText="课程名称" />
                                            <asp:BoundField DataField="cb_credithour" HeaderText="学时" />
                                            <asp:BoundField DataField="ct_type" HeaderText="课程类型" />
                                            <asp:BoundField DataField="te_name" HeaderText="上课老师" />
                                            <asp:BoundField DataField="pc_classtime" HeaderText="上课时间" />
                                            <asp:BoundField DataField="pc_personcount" HeaderText="限选人数" />
                                            <asp:TemplateField HeaderText="状  态">--%>
                                            
                                            <asp:boundfield datafield="课程号" headertext="选课课号" />
                                            <asp:boundfield datafield="课程名" headertext="课程名称" />
                                            <asp:BoundField DataField="学号" HeaderText="学号" />
                                            <asp:BoundField DataField="姓名" HeaderText="学生姓名" />

                                            <asp:TemplateField HeaderText="成绩">
                                                <ItemTemplate>
                                                    <asp:TextBox runat="server" ID="SCORE" Width ="70px"></asp:TextBox>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="添加">
                                                <ItemTemplate>
                                                    <asp:Button ID="btnSelectCourse" CauseValidation="False" runat="server" OnClick="SelectCourse_Click" Text="添 加" />&nbsp;
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <%--   <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lbtnOperate" runat="server" CommandArgument='<%#Eval("pc_id")%>' Text='<%# SetCommandText()%>' CommandName='<%# SetCommandName()%>'  OnClick="lbtnOperate_Click"></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>--%>
                                        </Columns>
                                    </asp:GridView>
                                    <%--<asp:Button ID="btnChangePwd" runat="server" Text="添 加" />--%>
                                </td>

                            </tr>

                            <%--     <tr>
                                <td colspan="6" style="border-right: #99ccff 0.1em solid; border-top: #99ccff 0.1em solid; border-left: #99ccff 0.1em solid; border-bottom: #99ccff 0.1em solid; height: 33px; text-align: center; width: 100%;">
                                    <input id="ourSpChoose" type="button" value="本专业选课" onserverclick="ourSpChoose_ServerClick" />
                                    <input id="btnCancel" type="button" value="退出选课" onclick="    return btnCancel_onclick()" />
                                </td>
                            </tr>--%>
                        </table>
                    </td>
                </tr>


                <%--已选课程--%>
                <tr>
                    <td colspan="3" style="vertical-align: top; width: 929px; text-align: left">
                        <table style="margin-top:8px; border-right: #99ccff 1px solid; border-top: #99ccff 1px solid; border-left: #99ccff 1px solid; border-bottom: #99ccff 1px solid; margin-left: 0px; margin-right: 0px; width: 100%; overflow: hidden;">
                            <tr>
                                <td colspan="6" style="border-right: #99ccff 0.1em solid; border-top: #99ccff 0.1em solid; border-left: #99ccff 0.1em solid; border-bottom: #99ccff 0.1em solid; height: 21px; text-align: left; width: 100%;">
                                    <asp:Label ID="Label1" runat="server" Text="学生成绩" Width="658px" CssClass="Css/style1"></asp:Label></td>
                            </tr>
                            <tr>
                                <td colspan="6" rowspan="2" style="text-align: left; width: 100%;"
                                    align="center" valign="top">
                                    <%--gv_ChooseClassTb--%>
                                    <asp:GridView ID="gv_SelectedClassTb" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                        Font-Names="tahoma,arial" Font-Size="13px" ForeColor="#333333" GridLines="None"
                                        PageSize="15" Width="100%">
                                        <EmptyDataRowStyle Height="20px" />
                                        <RowStyle BackColor="#EFF3FB" Font-Size="12px" />
                                        <EditRowStyle BackColor="#2461BF" Height="20px" />
                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                        <HeaderStyle BackColor="SkyBlue" Font-Bold="True" ForeColor="White" Font-Size="12px" Height="12px" />
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <%--<asp:BoundField DataField="cb_id" HeaderText="课程代码" />
                                            <asp:BoundField DataField="cb_name" HeaderText="课程名称" />
                                            <asp:BoundField DataField="cb_credithour" HeaderText="学时" />
                                            <asp:BoundField DataField="ct_type" HeaderText="课程类型" />
                                            <asp:BoundField DataField="te_name" HeaderText="上课老师" />
                                            <asp:BoundField DataField="pc_classtime" HeaderText="上课时间" />
                                            <asp:BoundField DataField="pc_personcount" HeaderText="限选人数" />
                                            <asp:TemplateField HeaderText="状  态">--%>

                                            <asp:BoundField DataField="课程号" HeaderText="选课课号" />
                                            <asp:BoundField DataField="课程名" HeaderText="课程名称" />
                                            <asp:BoundField DataField="姓名" HeaderText="教师姓名" />
                                            <asp:BoundField DataField="开课时间" HeaderText="开课时间" />
                                            <asp:BoundField DataField="室号" HeaderText="上课地点" />
                                            <asp:BoundField DataField="学分" HeaderText="学分" />

                                            <%-- <asp:BoundField DataField="座位号" HeaderText="座位号" />
                                                <ItemTemplate>
                                                    <asp:Label ID="lblStatus" runat="server" Text='<%# GetChooseStstue()%>'></asp:Label>&nbsp;
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lbtnOperate" runat="server" CommandArgument='<%#Eval("pc_id")%>' Text='<%# SetCommandText()%>' CommandName='<%# SetCommandName()%>'  OnClick="lbtnOperate_Click"></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>--%>
                                        </Columns>
                                    </asp:GridView>
                                </td>

                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="6" style="height: 33px; text-align: center; width: 100%;">
                        <input id="btnCancel" type="button" value="退出选课" onclick="    return btnCancel_onclick()" />
                    </td>
                </tr>
                <tr>
                    <td align="right" colspan="3" style="border-right: #99ccff 0.1em solid; border-top: #99ccff 0.1em solid; background-image: url(Images/bottom_bg.gif); border-left: #99ccff 0.1em solid; width: 100%; border-bottom: #99ccff 0.1em solid; height: 25px; text-align: right"
                        valign="middle">power &nbsp;by qingvi
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
