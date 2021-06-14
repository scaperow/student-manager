<%@ Page Language="C#" AutoEventWireup="true" CodeFile="score.aspx.cs" Inherits="score" %>
 <%  if (Session["userid"] == null || Session["userpower"].ToString ()!="0") 
        {
            Response.Write("<script>alert('登录错误');window.location.href='../login.aspx'</script>");
        }   
       
 %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>成绩页面</title>
</head>
<body topmargin="0">

		<form id="Form1" method="post" runat="server">
			<FONT face="宋体"></FONT>
			<table align="center" style="WIDTH: 643px; HEIGHT: 48px">
				<tr>
					<asp:Label id="Label3" runat="server"  Font-Bold="True" Font-Size="X-Large">成绩管理</asp:Label></tr>
				<tr>
					<td >
						<asp:Label id="Label4" runat="server">学号</asp:Label>
						<asp:TextBox id="txtscore" runat="server"></asp:TextBox>
					</td>
					<td>
						<asp:Label id="Label5" runat="server">年度</asp:Label>&nbsp;<asp:DropDownList ID="txtyear"
                            runat="server"  DataTextField="year" DataValueField="year">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>2004-2005</asp:ListItem>
                            <asp:ListItem>2005-2006</asp:ListItem>
                            <asp:ListItem>2006-2007</asp:ListItem>
                            <asp:ListItem>2007-2008</asp:ListItem>
                            <asp:ListItem>2008-2009</asp:ListItem>
                            <asp:ListItem>2009-2010</asp:ListItem>
                            <asp:ListItem>2010-2011</asp:ListItem>
                        </asp:DropDownList>
					</td>
					<td>
						<asp:Button id="Button1" runat="server"  Text="查询" OnClick="Button1_Click"></asp:Button>
					</td>
				</tr>
			</table>

			
			<table align="center">
					<tr>
						<td>
							<asp:DataGrid PageSize="4" PagerStyle-Mode="NumericPages" PagerStyle-PageButtonCount="3"
								PagerStyle-HorizontalAlign="center" HeaderStyle-BackColor="#006699" HeaderStyle-ForeColor="#FFFF66"
								AlternatingItemStyle-BackColor="#FFFFFF" itemstyle-backcolor="#FFFFFF" BorderColor="#336666"
								CellPadding="4" Font-Size="10pt" DataKeyField="ID" AutoGenerateColumns="False" Width="631px"
								id="datagrid1" runat="server" BorderWidth="3px" BackColor="White" BorderStyle="Double"
								GridLines="Horizontal" OnPageIndexChanged="datagrid1_PageIndexChanged" AllowPaging="True" >
								<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#339966"></SelectedItemStyle>
								<AlternatingItemStyle BackColor="White"></AlternatingItemStyle>
								<ItemStyle ForeColor="#333333" BackColor="White"></ItemStyle>
								<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#336666"></HeaderStyle>
								<FooterStyle ForeColor="#333333" BackColor="White"></FooterStyle>
								<Columns>
									<asp:BoundColumn DataField="id" HeaderText="ＩＤ"></asp:BoundColumn>
									<asp:BoundColumn DataField="userid" HeaderText="学号"></asp:BoundColumn>
									<asp:BoundColumn DataField="username" HeaderText="姓名"></asp:BoundColumn>
									<asp:BoundColumn DataField="class" HeaderText="班级"></asp:BoundColumn>
									<asp:BoundColumn DataField="courseid" HeaderText="课程号"></asp:BoundColumn>
									<asp:BoundColumn DataField="coursename" HeaderText="课程名"></asp:BoundColumn>
									<asp:BoundColumn DataField="teacher" HeaderText="任课老师"></asp:BoundColumn>
									<asp:BoundColumn DataField="score" HeaderText="成绩"></asp:BoundColumn>
									<asp:HyperLinkColumn Text="编辑/删除" DataNavigateUrlField="id" DataNavigateUrlFormatString="editscore.aspx?id={0}"
									HeaderText="修改"></asp:HyperLinkColumn>
								</Columns>
								<PagerStyle HorizontalAlign="Center" ForeColor="White" BackColor="#336666" PageButtonCount="3"
									Mode="NumericPages"></PagerStyle>
							</asp:DataGrid>
							
							<P style="text-align: center"><FONT face="宋体"><a href ="addscore.aspx" >添加成绩</a></FONT></P>
						</td>
					</tr>
				</table>
		</form>
		
</body>
</html>
