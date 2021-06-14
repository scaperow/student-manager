<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addcourse.aspx.cs" Inherits="addcourse" %>
 <%  if (Session["userid"] == null || Session["userpower"].ToString ()!="0") 
        {
            Response.Write("<script>alert('登录错误');window.location.href='../login.aspx'</script>");
        }   
       
 %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>添加课程</title>
    <style type="text/css">
<!--
    .Error{border:1px solid #A2553B;background-color:#FEF1E1;margin-left:2px;color:#4F4F4F;font-size:15px;}
    .Right{border:1px solid #A2553B;background-color:#EDFCE7;margin-left:2px;color:#4F4F4F;font-size:15px;}
    
-->
</style>
</head>
<body>
 <script language="javascript" src="createObject.js"></script>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td style="width: 75px">
                </td>
                <td align="center" colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="添加课程信息"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 75px">
                </td>
                <td style="width: 100px">
                    <asp:Label ID="Label2" runat="server" Text="课程号"></asp:Label></td>
                <td style="width: 163px">
                    <asp:TextBox ID="courseid" runat="server" MaxLength="16"></asp:TextBox>
                    <asp:Label ID="check" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 75px; height: 21px">
                </td>
                <td style="width: 100px; height: 21px">
                    <asp:Label ID="Label3" runat="server" Text="课程名"></asp:Label></td>
                <td style="width: 163px; height: 21px">
                    <asp:TextBox ID="coursename" runat="server" MaxLength="16"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 75px">
                </td>
                <td style="width: 100px">
                    <asp:Label ID="Label4" runat="server" Text="课时"></asp:Label></td>
                <td style="width: 163px">
                    <asp:TextBox ID="coursetime" runat="server" MaxLength="16"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 75px">
                </td>
                <td style="width: 100px">
                    <asp:Label ID="Label5" runat="server" Text="学分"></asp:Label></td>
                <td style="width: 163px">
                    <asp:TextBox ID="fen" runat="server" MaxLength="10"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 75px">
                </td>
                <td style="width: 100px">
                    <asp:Label ID="Label6" runat="server" Text="课程类型"></asp:Label></td>
                <td style="width: 163px">
                    <asp:TextBox ID="type" runat="server" MaxLength="10"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 75px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 163px">
                </td>
            </tr>
            <tr>
                <td style="width: 75px">
                </td>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="提交" /><asp:Button
                        ID="Button2" runat="server" OnClick="Button2_Click" Text="重填" />
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="返回" /></td>
            </tr>
            <tr>
                <td style="width: 75px">
                </td>
                <td style="width: 100px">
                    <asp:Label ID="Label7" runat="server" ForeColor="Fuchsia"></asp:Label></td>
                <td style="width: 163px">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
