<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addscore.aspx.cs" Inherits="addscore" %>
 <%  if (Session["userid"] == null || Session["userpower"].ToString ()!="0") 
        {
            Response.Write("<script>alert('登录错误');window.location.href='../login.aspx'</script>");
        }   
       
 %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>添加成绩</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td style="width: 100px">
                </td>
                <td colspan="2" align ="center" >
                    <asp:Label ID="Label1" runat="server" Text="添加成绩"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    </td>
                <td style="width: 251px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:Label ID="Label3" runat="server" Text="学号"></asp:Label></td>
                <td style="width: 251px">
                    &nbsp;<asp:DropDownList ID="userid" runat="server" DataSourceID="SqlDataSource1"
                        DataTextField="userid" DataValueField="userid" OnSelectedIndexChanged="userid_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:studentsConnectionString %>"
                        SelectCommand="SELECT [userid] FROM [students]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:Label ID="Label4" runat="server" Text="姓名"></asp:Label></td>
                <td style="width: 251px">
                    <asp:TextBox ID="username" runat="server" MaxLength="16" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:Label ID="Label5" runat="server" Text="班级"></asp:Label></td>
                <td style="width: 251px">
                    <asp:TextBox ID="txtclass" runat="server" MaxLength="20"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:Label ID="Label6" runat="server" Text="课程号"></asp:Label></td>
                <td style="width: 251px">
                    &nbsp;<asp:DropDownList ID="txtcourseid" runat="server" DataSourceID="courseid"
                        DataTextField="courseid" DataValueField="courseid" OnSelectedIndexChanged="txtcourseid_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList><asp:SqlDataSource ID="courseid" runat="server" ConnectionString="<%$ ConnectionStrings:studentsConnectionString %>"
                        SelectCommand="SELECT [courseid] FROM [course]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:Label ID="Label7" runat="server" Text="课程名"></asp:Label></td>
                <td style="width: 251px">
                    <asp:TextBox ID="coursename" runat="server" MaxLength="16" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:Label ID="Label8" runat="server" Text="任课老师"></asp:Label></td>
                <td style="width: 251px">
                    <asp:TextBox ID="teacher" runat="server" MaxLength="16"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:Label ID="Label9" runat="server" Text="成绩"></asp:Label></td>
                <td style="width: 251px">
                    <asp:TextBox ID="score" runat="server" MaxLength="10"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:Label ID="Label10" runat="server" Text="年度"></asp:Label></td>
                <td style="width: 251px">
                    <asp:DropDownList ID="txtyear" runat="server">
                        <asp:ListItem>2004-2005</asp:ListItem>
                        <asp:ListItem>2005-2006</asp:ListItem>
                        <asp:ListItem>2006-2007</asp:ListItem>
                        <asp:ListItem>2007-2008</asp:ListItem>
                        <asp:ListItem>2008-2009</asp:ListItem>
                        <asp:ListItem>2009-2010</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="重填" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" Text="返回" OnClick="Button3_Click" /></td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td colspan="2">
                    <asp:Label ID="Label11" runat="server" ForeColor="#FF80FF"></asp:Label></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
