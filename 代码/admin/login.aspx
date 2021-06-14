<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>登录页面</title>
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
        <table style="text-align: center">
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label1" runat="server" Text="账号"></asp:Label></td>
                <td colspan="2">
                    <asp:TextBox ID="txtid" runat="server" MaxLength="16" Width="120px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtid"
                        ErrorMessage="账号不能为空"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 26px">
                    <asp:Label ID="Label2" runat="server" Text="密码"></asp:Label></td>
                <td colspan="2" style="height: 26px">
                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" MaxLength="16" Width="120px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword"
                        ErrorMessage="密码不能为空"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:Button ID="Button1" runat="server" Text="确定" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="取消" OnClick="txtid_Click" /></td>
                <td style="width: 100px">
                    </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label3" runat="server"></asp:Label></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
