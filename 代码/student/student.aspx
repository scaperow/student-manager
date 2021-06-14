<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student.aspx.cs" Inherits="student" %>
 <%  if (Session["userid"] == null || Session["userpower"].ToString ()!="1") 
        {
            Response.Write("<script>alert('登录错误');window.location.href='../login.aspx'</script>");
        }   
       
 %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>学生信息</title>
</head>
<body>
		<form id="Form1" method="post" runat="server">
            &nbsp;
            <table border="1" style="font-size: 10pt; text-align: center;" align="center">
                <tr>
                    <td colspan="5" style="text-align: center; height: 19px;" bgcolor="#33ccff">
                        <span style="font-size: 10pt">学生个人学籍信息</span></td>
                </tr>
                <tr>
                    <td rowspan="4" style="width: 100px">
                        相片<asp:Image ID="Image1" runat="server" /></td>
                    <td style="width: 100px; height: 21px">
                        学号</td>
                    <td style="width: 100px; height: 21px" bordercolor="#ff9999">
                        <asp:Label ID="Label1" runat="server"></asp:Label></td>
                    <td style="width: 100px; height: 21px">
                        姓名</td>
                    <td style="width: 100px; height: 21px" bordercolor="#ff9999">
                        <asp:Label ID="Label2" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        性别</td>
                    <td style="width: 100px" bordercolor="#ff9999">
                        <asp:Label ID="Label3" runat="server"></asp:Label></td>
                    <td style="width: 100px">
                        民族</td>
                    <td style="width: 100px" bordercolor="#ff9999">
                        <asp:Label ID="Label4" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        出生日期</td>
                    <td style="width: 100px" bordercolor="#ff9999">
                        <asp:Label ID="Label5" runat="server"></asp:Label></td>
                    <td style="width: 100px">
                        入学时间</td>
                    <td style="width: 100px" bordercolor="#ff9999">
                        <asp:Label ID="Label6" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        班级</td>
                    <td style="width: 100px" bordercolor="#ff9999">
                        <asp:Label ID="Label7" runat="server"></asp:Label></td>
                    <td style="width: 100px">
                        生源</td>
                    <td style="width: 100px" bordercolor="#ff9999">
                        <asp:Label ID="Label8" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        备注</td>
                    <td style="width: 100px">
                        <asp:Label ID="Label9" runat="server"></asp:Label></td>
                    <td style="width: 100px" bordercolor="#ff9999">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px" bordercolor="#ff9999">
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px" bordercolor="#ff9999">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px" bordercolor="#ff9999">
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px" bordercolor="#ff9999">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px" bordercolor="#ff9999">
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px" bordercolor="#ff9999">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px" bordercolor="#ff9999">
                    </td>
                </tr>
            </table>
		</form>
</body>
</html>
