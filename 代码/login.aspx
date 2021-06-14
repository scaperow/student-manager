<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>学生信息管理系统登录页面</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <table style="text-align: center" border="1">
            <tr>
                <td bgcolor="buttonshadow" colspan="3" style="height: 16px; text-align: left">
                    <span style="font-size: 9pt">用户登录</span></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 26px;" colspan="">
                    <asp:Label ID="Label1" runat="server" Text="账号" Font-Size="10pt"></asp:Label></td>
                <td colspan="2" style="height: 26px">
                    <asp:TextBox ID="txtid" runat="server" MaxLength="16" Width="120px">51aspx</asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtid"
                        ErrorMessage="账号不能为空" Font-Size="10pt"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 26px" colspan="">
                    <asp:Label ID="Label2" runat="server" Text="密码" Font-Size="10pt"></asp:Label></td>
                <td colspan="2" style="height: 26px">
                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" MaxLength="16" Width="120px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword"
                        ErrorMessage="密码不能为空" Font-Size="10pt"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 27px;" colspan="">
                </td>
                <td style="width: 100px; height: 27px;" colspan="">
                    <asp:Button ID="Button1" runat="server" Text="确定" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="取消" OnClick="txtid_Click" /></td>
                <td style="width: 100px; height: 27px;" colspan="">
                    </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label3" runat="server" Font-Size="9pt" ForeColor="Red"></asp:Label></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
