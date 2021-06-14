<%@ Page Language="C#" AutoEventWireup="true" CodeFile="course.aspx.cs" Inherits="course" %>
 <%  if (Session["userid"] == null || Session["userpower"].ToString ()!="0") 
        {
            Response.Write("<script>alert('登录错误');window.location.href='../login.aspx'</script>");
        }   
       
 %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>课程管理</title>
</head>
<body style="text-align: center">
		<form id="Form1" method="post" runat="server">
			<asp:label id="Label1" style="Z-INDEX: 101; LEFT: 184px; POSITION: absolute; TOP: -32px" runat="server"
				Font-Size="X-Large" Width="168px">课程信息</asp:label>
			<table align="center">
				<tr>
					<td><asp:datagrid id="grdMain" runat="server" Font-Size="10pt" Width="700px" AllowCustomPaging="True"
							BorderStyle="None" BackColor="White" BorderWidth="0px" AutoGenerateColumns="False" DataKeyField="courseid"
							CellPadding="4" BorderColor="#3366CC" itemstyle-backcolor="#FFFFFF" AlternatingItemStyle-BackColor="#FFFFFF"
							HeaderStyle-ForeColor="#FFFF66" HeaderStyle-BackColor="#006699" PagerStyle-HorizontalAlign="Right"
							PagerStyle-PageButtonCount="3" PagerStyle-Mode="NumericPages" PageSize="8" AllowPaging="True">
							<SelectedItemStyle Font-Bold="True" ForeColor="#CCFF99" BackColor="#009999"></SelectedItemStyle>
							<ItemStyle ForeColor="#003399" BackColor="White"></ItemStyle>
							<HeaderStyle Font-Bold="True" ForeColor="#CCCCFF" BackColor="#003399"></HeaderStyle>
							<FooterStyle ForeColor="#003399" BackColor="#99CCCC"></FooterStyle>
							<Columns>
								<asp:BoundColumn DataField="courseid" HeaderText="课程号"></asp:BoundColumn>
								<asp:BoundColumn DataField="coursename" HeaderText="课程名"></asp:BoundColumn>
								<asp:BoundColumn DataField="coursetime" HeaderText="课时"></asp:BoundColumn>
								<asp:BoundColumn DataField="fen" HeaderText="学分"></asp:BoundColumn>
								<asp:BoundColumn DataField="type" HeaderText="课程类型"></asp:BoundColumn>
																<asp:HyperLinkColumn Text="编辑/删除" DataNavigateUrlField="courseid" DataNavigateUrlFormatString="editcourse.aspx?id={0}"
									HeaderText="修改"></asp:HyperLinkColumn>
							</Columns>
							<PagerStyle HorizontalAlign="Left" ForeColor="#003399" BackColor="#99CCCC" PageButtonCount="3"
								Mode="NumericPages"></PagerStyle>
                        <AlternatingItemStyle BackColor="White" />
						</asp:datagrid><a href="addcourse.aspx">添加课程</a></td>
				</tr>
			</table>
            <br />

	
			<br>
            <asp:Label ID="Label2" runat="server" Text="查询结果"></asp:Label><br>
			<table align="center">
				<tr>
					<td><asp:datagrid id="Datagrid1" runat="server" Font-Size="10pt" Width="700px" AllowCustomPaging="True"
							BackColor="LightGoldenrodYellow" BorderWidth="1px" AutoGenerateColumns="False" DataKeyField="courseid"
							CellPadding="2" BorderColor="Tan" itemstyle-backcolor="#FFFFFF" AlternatingItemStyle-BackColor="#FFFFFF"
							HeaderStyle-ForeColor="#FFFF66" HeaderStyle-BackColor="#006699" PagerStyle-HorizontalAlign="Right"
							PagerStyle-PageButtonCount="3" PagerStyle-Mode="NumericPages" PageSize="3" AllowPaging="True"
							GridLines="None" ForeColor="Black">
							<SelectedItemStyle ForeColor="GhostWhite" BackColor="DarkSlateBlue"></SelectedItemStyle>
							<AlternatingItemStyle BackColor="PaleGoldenrod"></AlternatingItemStyle>
							<HeaderStyle Font-Bold="True" BackColor="Tan"></HeaderStyle>
							<FooterStyle BackColor="Tan"></FooterStyle>
							<Columns>
								<asp:BoundColumn DataField="courseid" HeaderText="课程号"></asp:BoundColumn>
								<asp:BoundColumn DataField="coursename" HeaderText="课程名"></asp:BoundColumn>
								<asp:BoundColumn DataField="coursetime" HeaderText="课时"></asp:BoundColumn>
								<asp:BoundColumn DataField="fen" HeaderText="学分"></asp:BoundColumn>
								<asp:BoundColumn DataField="type" HeaderText="课程类型"></asp:BoundColumn>
							</Columns>
							<PagerStyle HorizontalAlign="Center" ForeColor="DarkSlateBlue" BackColor="PaleGoldenrod" PageButtonCount="3"></PagerStyle>
						</asp:datagrid></td>
				</tr>
			</table>
            <table>
                <tr>
                    <td style="width: 100px; height: 21px">
                        <asp:Label ID="Label7" runat="server" Text="课程号"></asp:Label></td>
                    <td style="width: 100px; height: 21px">
                        <asp:TextBox ID="courseid" runat="server"></asp:TextBox></td>
                    <td style="width: 100px; height: 21px">
                        <asp:Label ID="Label8" runat="server" Text="课程名"></asp:Label></td>
                    <td style="width: 100px; height: 21px">
                        <asp:TextBox ID="coursename" runat="server"></asp:TextBox></td>
                    <td style="width: 100px; height: 21px">
                        <asp:Button ID="Button1" runat="server" Text="查询" OnClick="Button1_Click" /></td>
                </tr>
            </table>
		</form>
</body>
</html>
