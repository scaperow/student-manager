<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editstudent.aspx.cs" Inherits="images_editstudent" %>
 <%  if (Session["userid"] == null || Session["userpower"].ToString ()!="0") 
        {
            Response.Write("<script>alert('登录错误');window.location.href='../login.aspx'</script>");
        }   
       
 %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>学生信息编辑</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td style="width: 30px">
                </td>
                <td colspan="2" align ="center" >
                    <asp:Label ID="Label2" runat="server" Text="学生信息编辑" ></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 30px">
                </td>
                <td style="width: 125px">
                    <asp:Label ID="Label1" runat="server" Text="学号："></asp:Label></td>
                <td style="width: 190px">
                    <asp:TextBox ID="userid" runat="server" MaxLength="16" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 30px">
                </td>
                <td style="width: 125px">
                    <asp:Label ID="Label10" runat="server" Text="姓名"></asp:Label></td>
                <td style="width: 190px">
                    <asp:TextBox ID="txtusername" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 30px">
                </td>
                <td style="width: 125px">
                    <asp:Label ID="Label3" runat="server" Text="出生日期："></asp:Label></td>
                <td style="width: 190px">
                    <asp:TextBox ID="txtbirthday" runat="server" ></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 30px">
                </td>
                <td style="width: 125px">
                    <asp:Label ID="Label4" runat="server" Text="民族："></asp:Label></td>
                <td style="width: 190px">
                    <asp:TextBox ID="txtminzu" runat="server" MaxLength="10"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 30px">
                </td>
                <td style="width: 125px">
                    <asp:Label ID="Label5" runat="server" Text="性别："></asp:Label></td>
                <td style="width: 190px">
                    <asp:RadioButtonList ID="txtsex" runat="server" RepeatDirection="Horizontal" Width="128px">
                        <asp:ListItem Selected="True">男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:RadioButtonList></td>
            </tr>
            <tr>
                <td style="width: 30px">
                </td>
                <td style="width: 125px">
                    <asp:Label ID="Label6" runat="server" Text="入学日期："></asp:Label></td>
                <td style="width: 190px">
                    <asp:TextBox ID="txtintime" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 30px">
                </td>
                <td style="width: 125px">
                    <asp:Label ID="Label7" runat="server" Text="班级："></asp:Label></td>
                <td style="width: 190px">
                    <asp:TextBox ID="txtclass" runat="server" MaxLength="20"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 30px">
                </td>
                <td style="width: 125px">
                    <asp:Label ID="Label8" runat="server" Text="生源地："></asp:Label></td>
                <td style="width: 190px">
                    <asp:TextBox ID="txtcomefrom" runat="server" MaxLength="20"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 30px">
                </td>
                <td style="width: 125px">
                    <asp:Label ID="Label9" runat="server" Text="备注："></asp:Label></td>
                <td style="width: 190px">
                    <asp:TextBox ID="txtbeizhu" runat="server" MaxLength="50" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 30px">
                </td>
                <td colspan="2" align ="center" >
                    <asp:Button ID="Button1" runat="server" Text="编辑" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="删除" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" Text="返回" OnClick="Button3_Click" /></td>
            </tr>
            <tr>
                <td style="width: 30px; height: 21px">
                </td>
                <td align="center" colspan="2" style="height: 21px">
                    <asp:Label ID="Label11" runat="server"></asp:Label></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
