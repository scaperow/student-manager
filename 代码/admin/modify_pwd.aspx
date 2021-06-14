<%@ Page Language="C#" AutoEventWireup="true" CodeFile="modify_pwd.aspx.cs" Inherits="modify_pwd" %>
 <%  if (Session["userid"] == null || Session["userid"].ToString() == "" ||Session ["userpwd"].ToString() =="") 
        {
            
            Response.Redirect("login.aspx");
            Response.Write("<script>alert(\"登录错误\");</script>");
        }   
       
 %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>密码修改</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <br />
        <br />
        <br />
        <br />
        <br />
        <table>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label1" runat="server" Text="原密码"></asp:Label></td>
                <td colspan="2">
                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label2" runat="server" Text="新密码"></asp:Label></td>
                <td colspan="2">
                    <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label3" runat="server" Text="密码确认"></asp:Label></td>
                <td colspan="2">
                    <asp:TextBox ID="password1" runat="server" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td colspan="2">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="确定" OnClick="Button1_Click" /><asp:Button ID="Button2"
                        runat="server" Text="返回" OnClick="Button2_Click" /></td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label4" runat="server" ForeColor="Fuchsia"></asp:Label></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
