<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StuChoose.aspx.cs" Inherits="Teacher_StuChoose" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>曾庆维-教务管理系统</title>
      <script type ="text/javascript">
         function btnCancel_onclick() {
            location.replace('Teacher.aspx');
        }
    </script>
</head>
<body>
 <form id="form1" runat="server">
      <asp:FormView ID="formView" runat="server">
            <ItemTemplate>
             <div style="font-size:13px;color:rgba(30, 116, 173, 0.83)">
                 欢迎您:
                <asp:Label ID="UserName" runat="server" Text='<%#Eval("UserName") %>' />
             </div>
                </ItemTemplate>
        </asp:FormView>

        <!--成绩查询页面-->
        <div id="wrap1"">
            <table style="border-right: #99ccff 0.1em solid; border-left: #99ccff 0.1em solid; font-size: 12px; width: 100%; margin-top: 14px; height: 100%">
                <tr>
                    <td colspan="3" style="background-image: url(Images/main_top_bg.gif); width: 929px; height: 13px">
                        <asp:Image ID="Image1" runat="server" Height="14px" ImageUrl="~/Student/Images/main_top_1.gif"
                            Width="14px" />
                        学生选课情况<asp:Label ID="lblTitle" runat="server" Text="" Width="658px"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="3" style="border-right: #99ccff 0.1em solid; border-top: #99ccff 0.1em solid; vertical-align: top; border-left: #99ccff 0.1em solid; width: 929px; border-bottom: #99ccff 0.1em solid; height: 435px; text-align: left">
                        <table style="border-right: #99ccff 1px solid; border-top: #99ccff 1px solid; margin-left: 0px; border-left: #99ccff 1px solid; width: 100%; margin-right: 0px; border-bottom: #99ccff 1px solid; height: 180px">
                            <tr>
                           
                           
                            <%--<asp:Button ID="btnView" runat="server" type="button" OnClick="CourseTable_Click" Text="查看" />--%>
                                    <%--<input type="button" name="btnView" value="查看" id ="btnView" onclick ="QueryScore_Click" runat="server"/>--%>
                                                        &nbsp; &nbsp; &nbsp;
                            </td>
                            </tr>
                            <tr>
                                <td   align="center" colspan="6" rowspan="2" style="text-align:left; border-right: #99ccff 0.1em solid; border-top: #99ccff 0.1em solid; border-left: #99ccff 0.1em solid; width: 100%; border-bottom: #99ccff 0.1em solid; height: 359px"
                                    valign="top">
                                    <asp:GridView ID="gv_ScoreTable" runat="server" AutoGenerateColumns="False"  CellPadding="4"
                                        Font-Names="tahoma,arial" Font-Size="13px" ForeColor="#333333" GridLines="None"
                                        PageSize="15" Width="100%">
                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <EmptyDataRowStyle Height="20px" />     
                                        <Columns>
                                           <%-- <asp:BoundField DataField="cb_id" HeaderText="课程代码" />
                                            <asp:BoundField DataField="cb_name" HeaderText="课程名称" />
                                            <asp:BoundField DataField="sc_score" HeaderText="成 绩" />
                                            <asp:BoundField DataField="cb_credithour" HeaderText="学 分" />
                                            <asp:BoundField DataField="ct_type" HeaderText="课程类型" />
                                            <asp:BoundField DataField="sc_year" HeaderText="学  年" />
                                            <asp:BoundField DataField="sc_term" HeaderText="学  期" />
                                            <asp:BoundField DataField="relearnflag" HeaderText="重修标记" />--%>
                                            <asp:BoundField DataField="姓名" HeaderText="学生姓名" />
                                            <asp:BoundField DataField="课程号" HeaderText="课程号" />
                                            <asp:BoundField DataField="课程名" HeaderText="课程名称" />
                                            <asp:BoundField DataField="开课时间" HeaderText="开课时间" />
                                            <asp:BoundField DataField="室号" HeaderText="上课地点" />
                                            <asp:BoundField DataField="学分" HeaderText="学分" />
                                            
                        
                                        </Columns>
                                        <RowStyle BackColor="#EFF3FB" Font-Size="12px" />
                                        <EditRowStyle BackColor="#2461BF" Height="20px" />
                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                        <HeaderStyle BackColor="SkyBlue" Font-Bold="True" Font-Size="12px" ForeColor="White"
                                            Height="12px" />
                                        <AlternatingRowStyle BackColor="White" />
                                    </asp:GridView>
                                </td>
                            </tr>
                            <tr>
                            </tr>

                        </table>
                    </td>
                </tr>
                  <tr>
                        <td colspan="6" style="border-right: #99ccff 0.1em solid; border-top: #99ccff 0.1em solid;
                            border-left: #99ccff 0.1em solid; width: 100%; border-bottom: #99ccff 0.1em solid; text-align: center">
                            <input id="btnCancel"
                                    type="button" value="返 回" onclick="return btnCancel_onclick()" /></td>
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
