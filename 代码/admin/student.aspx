<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student.aspx.cs" Inherits="student" %>
 <%  if (Session["userid"] == null || Session["userpower"].ToString ()!="0") 
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
            <asp:Panel ID="Panel1" runat="server" Height="50px" Width="125px">
			<table cellSpacing="0" borderColorDark="#ffffff" cellPadding="2" width="710" align="center"
				borderColorLight="#000000">
				<tr>
					<td style="width: 710px; height: 139px" valign="top">
						<asp:DataGrid AllowPaging="True"   PagerStyle-Mode="NumericPages" PagerStyle-PageButtonCount="3"
							PagerStyle-HorizontalAlign="Right" HeaderStyle-BackColor="#006699" HeaderStyle-ForeColor="#FFFF66"
							AlternatingItemStyle-BackColor="#FFFFFF" itemstyle-backcolor="#FFFFFF" BorderColor="#CC9966"
							CellPadding="4" Font-Size="10pt" DataKeyField="userid" AutoGenerateColumns="False" Width="710px"
							id="Datagrid1" runat="server" BorderWidth="0px" BackColor="White" BorderStyle="None" OnPageIndexChanged="Datagrid1_PageIndexChanged" PageSize="5">
							<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
							<AlternatingItemStyle BackColor="White"></AlternatingItemStyle>
							<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
							<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#FF80FF"></HeaderStyle>
							<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
							<Columns>
								<asp:BoundColumn DataField="userid" HeaderText="学号"></asp:BoundColumn>
								<asp:BoundColumn DataField="username" HeaderText="姓名"></asp:BoundColumn>
								<asp:BoundColumn DataField="sex" HeaderText="性别"></asp:BoundColumn>
								<asp:BoundColumn DataField="minzu" HeaderText="民族"></asp:BoundColumn>
								<asp:BoundColumn DataField="birthday" HeaderText="出生日期" DataFormatString="{0:d}"></asp:BoundColumn>
								<asp:BoundColumn DataField="intime" HeaderText="入学时间" DataFormatString="{0:d}"></asp:BoundColumn>
								<asp:BoundColumn DataField="class" HeaderText="班级"></asp:BoundColumn>
								<asp:BoundColumn DataField="comefrom" HeaderText="生源"></asp:BoundColumn>
								<asp:BoundColumn DataField="beizhu" HeaderText="备注"></asp:BoundColumn>
								<asp:HyperLinkColumn Text="编辑/删除" DataNavigateUrlField="userid" DataNavigateUrlFormatString="editstudent.aspx?id={0}"
									HeaderText="修改"></asp:HyperLinkColumn>
							</Columns>
							<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC" Mode="NumericPages" PageButtonCount="3" ></PagerStyle>
						</asp:DataGrid></td>
				</tr>
				<tr>
					<td align="center" style="width: 710px">
						<a href="addstudent.aspx">增加学生</a>
					</td>
				</tr>
			</table>
            </asp:Panel>
            <br />
 
            <br />
		</form>
</body>
</html>
