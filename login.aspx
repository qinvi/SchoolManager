<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>曾庆维-教务管理系统</title>
</head>
<body style="height:100%; overflow:hidden;">
    <form id="form1" runat="server">
        <div style="text-align: center;">
            <div style="background-color: cornflowerblue">
                <span style="position: relative; right: -460px; top: 0px; font-size: 10px; font-family: Courier New, Courier, monospace; font-weight: 600">13信计1班</span>
                <br />
                <span style="position: relative; right: -460px; top: 0px; font-size: 10px; font-family: Courier New, Courier, monospace; font-weight: 600">曾庆维</span>
                <br />
                <img src="Images/logo_school.png" alt="广东工业大学" style="position: relative; left: -200px" />
                <img src="Images/logo_jw.png" alt="教务管理系统" style="position: relative; left: -170px; bottom: -15px" />
            </div>

            <div style="width: 100%; text-align: center; margin-top: 50px; vertical-align: middle;">
                <table border="0" style="width: 322px; height: 194px; border-right: #99ccff 0.05em solid; border-top: #99ccff 0.05em solid; border-left: #99ccff 0.05em solid; border-bottom: #99ccff 0.05em solid; font-size: 12pt; vertical-align: middle; margin: 0 auto;" backcolor="White" bordercolor="#507CD1" borderstyle="Solid" borderwidth="1px" font-names="Verdana" font-size="0.8em" forecolor="#284E98">
                    <tr>
                        <td align="center" colspan="2" style="font-weight: bold; font-size: 0.8em; color: white; background-image: url(Images/main_top_bg.gif); height: 12px;">用户登陆</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 113px; height: 15px;">
                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" ForeColor="#507CD1" Font-Size="0.7em">用户名:</asp:Label></td>
                        <td style="text-align: left; height: 15px; width: 194px; font-size: 12pt; color: #000000;">
                            <asp:TextBox ID="UserName" runat="server" Font-Size="0.7em" Width="105px" BorderColor="#99CCFF"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                ErrorMessage="请输入用户名" ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr style="font-size: 12pt">
                        <td align="right" style="height: 13px; width: 113px;">
                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" ForeColor="#507CD1" Font-Size="0.7em">密　码:</asp:Label></td>
                        <td style="height: 13px; text-align: left; width: 194px; font-size: 12pt; color: #000000;">
                            <asp:TextBox ID="Password" runat="server" Font-Size="0.7em" TextMode="Password" Width="105px" BorderColor="#9CCFF1" CssClass="border:0.05em"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                ErrorMessage="请输入密码." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr style="font-size: 12pt">
                        <td colspan="2" style="height: 30px; border-top: #99ccff 0.05em solid; border-bottom: #99ccff 0.05em solid;">
                            <asp:RadioButton ID="btnDept" runat="server" GroupName="userType" Text="部门" ForeColor="#284E98" Font-Size="0.7em" />&nbsp;
                        &nbsp;<asp:RadioButton ID="btnTeacher" runat="server" GroupName="userType" Text="老师" ForeColor="#284E98" Font-Size="0.7em" />&nbsp;
                        <asp:RadioButton ID="btnStudent" runat="server" Checked="True" GroupName="userType" ForeColor="#284E98" Text="学生" Font-Size="0.7em" />&nbsp;
                        <asp:RadioButton ID="btnGuest" runat="server" GroupName="userType" Text="游客" ForeColor="#284E98" Font-Size="0.7em" />&nbsp;</td>
                    </tr>
                    <tr style="font-size: 12pt">
                        <td align="center" colspan="2" style="color: red; font-size: 0.7em; height: 23px;">
                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False" Text="游客:不需要用户名密码"></asp:Literal>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" colspan="2" style="text-align: center; height: 23px;">
                            <asp:Button ID="LoginButton" runat="server" BackColor="White" BorderColor="#507CD1"
                                BorderStyle="Solid" BorderWidth="1px" CommandName="Login" Font-Names="Verdana"
                                Font-Size="0.7em" ForeColor="#284E98" Text="登 陆" ValidationGroup="Login1" OnClick="LoginButton_Click" />
                            &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:Button ID="btnClose" runat="server" OnClick="btnClose_Click" Text="关 闭" BackColor="White" BorderColor="#507CD1"
                            BorderStyle="Solid" BorderWidth="0.1em" CommandName="Login" Font-Names="Verdana" Font-Size="0.7em" ForeColor="#284E98" /></td>
                    </tr>
                </table>
            </div>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
