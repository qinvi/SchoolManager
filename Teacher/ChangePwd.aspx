<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePwd.aspx.cs" Inherits="Student_ChangePwd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>教务管理系统</title>
    <script>
        function GoBacK_onclick() {
            location.replace('Teacher.aspx');
        }

        // ]]>
    </script>
</head>
<body style="margin:0px; padding:0px;">
    <form id="form1" runat="server">
         <asp:FormView ID="formView" runat="server">
            <ItemTemplate>
             <div style="font-size:13px;color:rgba(30, 116, 173, 0.83)">
                 欢迎你:
                <asp:Label ID="UserName" runat="server" Text='<%#Eval("UserName") %>' />
             </div>
                </ItemTemplate>
        </asp:FormView>
        <div>
            <table class="tbAffiche" style=" background-color:rgba(51, 149, 159, 0.13); width: 100%; height: 100%; border-right: #99ccff 1px solid; border-top: #99ccff 1px solid; border-left: #99ccff 1px solid; border-bottom: #99ccff 1px solid; margin-top: 15px">
                <tr>
                    <td id="SetPwd" style="height: 15px; background-image: url(Images/main_top_bg.gif); text-align: left;" colspan="2" valign="top">
                        <asp:Image ID="Image1" runat="server" Height="17px" ImageUrl="~/Student/Images/main_top_1.gif"
                            Width="21px" />密码修改</td>
                </tr>
                <tr>
                    <td style="height: 435px; vertical-align: top; text-align: right; border-right: #99ccff 0px solid; border-top: #99ccff 0px solid; border-left: #99ccff 0px solid; border-bottom: #99ccff 0px solid;" colspan="2">

                        <table class="changePwd" style="border-collapse:collapse; border-radius:4px; margin:50px auto; width: 499px; height: 121px; border-right: #99ccff 0.05em solid; border-top: #99ccff 0.05em solid; border-left: #99ccff 0.05em solid; border-bottom: #99ccff 0.05em solid;">
                            <tr>
                                <td colspan="2" style="height: 37px; text-align: center">密码修改</td>
                            </tr>
                            <tr>
                                <td style="width: 195px; height: 25px; text-align: right">输入原密码:&nbsp; &nbsp;</td>
                                <td style="width: 278px; height: 25px; text-align: left">
                                    <asp:TextBox ID="txtOldPwd" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtOldPwd"
                                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr style="color: #000000;">
                                <td style="width: 195px; height: 25px; text-align: right">输入新密码:&nbsp; &nbsp;
                                </td>
                                <td style="width: 278px; height: 25px; text-align: left">
                                    <asp:TextBox ID="txtNewPwd" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNewPwd"
                                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr style="color: #000000">
                                <td style="width: 195px; height: 25px; text-align: right">确认新密码: &nbsp;&nbsp;
                                </td>
                                <td style="width: 278px; height: 25px; text-align: left">
                                    <asp:TextBox ID="txtReNewPwd" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtReNewPwd"
                                        ErrorMessage="*"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr style="color: #000000">
                                <td colspan="2" style="height: 23px; text-align: center">&nbsp; &nbsp; &nbsp;&nbsp;
                                <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Width="177px"></asp:Label></td>
                            </tr>
                            <tr>
                                <td colspan="2" style="height: 25px; text-align: center">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:Button ID="btnChangePwd" runat="server"
                                    OnClick="btnChangePwd_Click" Text="修 改" />
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<input id="GoBacK"
                                        type="button" value="返 回" onclick="return GoBacK_onclick()" />&nbsp;</td>
                            </tr>
                        </table>

                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="background-image: url(Images/bottom_bg.gif); height: 23px; text-align: right">power &nbsp;by qingvi &nbsp;&nbsp;
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
