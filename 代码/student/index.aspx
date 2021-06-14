<%@ Page Language="C#" ContentType="text/html" ResponseEncoding="gb2312" %>
 <%  if (Session["userid"] == null || Session["userpower"].ToString ()!="1") 
        {
            Response.Write("<script>alert('登录错误');window.location.href='../login.aspx'</script>");
        }   
       
 %> 

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>学生信息管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="index.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--

-->
</style>
</head>
<body>
<div id="container"> 
<form id="form1" method="post" action="" runat="server">
    <div id="top">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
		<img src="../images/bluesky.jpg" alt="f " border="0" usemap="#Map" style="height: 120px; width: 870px;" />
<map name="Map" id="Map"><area shape="rect" coords="40,71,162,118" href="student.aspx" target="right" />
<area shape="rect" coords="258,71,388,118" href="course.aspx" target="right" />
<area shape="rect" coords="481,68,608,121" href="score.aspx" target="right" />
<area shape="rect" coords="699,71,824,121" href="help.aspx" target="right" />
</map>
	</div>
	<div id="left" style="height: 500px">
	             <cc1:Accordion ID="MyAccordion" runat="server" SelectedIndex="0"
             FadeTransitions="true" FramesPerSecond="40" TransitionDuration="250"
              AutoSize="Limit" Height="300" Width="150" HeaderCssClass="accordionHeader"
               ContentCssClass="accordionContent">
              <Panes>
                <cc1:AccordionPane ID="AccordionPane1" runat="server" ContentCssClass="" HeaderCssClass="">
                    <Header>
           <a href ="student.aspx" target ="right" >个人信息</a> 
                    </Header>
                    <Content>
                        <center><font color ="red" size="2px" ><%=Session ["username"] %></font>欢迎您访问！</center><br />

                    </Content>
                </cc1:AccordionPane>
                <cc1:AccordionPane ID="AccordionPane2" runat="server" ContentCssClass="" HeaderCssClass="">
                <Header>
                        <a href="course.aspx"  target ="right">课程信息</a>                    </Header>
                    <Content>
                        <center>欢迎您访问<asp:HyperLink ID="HyperLink2" runat="server" target ="right" NavigateUrl="course.aspx" Text="课程信息" />！</center><br />

                    </Content>
                </cc1:AccordionPane>
                <cc1:AccordionPane ID="AccordionPane3" runat="server" ContentCssClass="" HeaderCssClass="">
                <Header>
                        <a href="score.aspx" target="right">成绩信息</a>
                    </Header>
                    <Content>
                        <center>欢迎您访问<asp:HyperLink ID="HyperLink3" runat="server"  Target ="right" NavigateUrl="score.aspx" Text="成绩信息" />！</center><br />

                    </Content>
                </cc1:AccordionPane>
                                <cc1:AccordionPane ID="AccordionPane4" runat="server" ContentCssClass="" HeaderCssClass="">
                <Header>
                        <a href="modify_pwd.aspx" target ="right">密码修改</a>
                    </Header>
                    <Content>
                        <center>欢迎您访问<asp:HyperLink ID="HyperLink4" runat="server" target ="right" NavigateUrl="modify_pwd.aspx" Text="密码修改" />！</center><br />

                    </Content>
                </cc1:AccordionPane>
                                                <cc1:AccordionPane ID="AccordionPane6" runat="server" ContentCssClass="" HeaderCssClass="">
                <Header>
                        <a href="help.aspx" target ="right">帮助说明</a>
                    </Header>
                    <Content>
                        <center>您的账号：<font color ="red"><%=Session ["userid"] %></font><br />您的密码：<font color ="red"><%=Session ["userpwd"] %></font><br />欢迎您访问<asp:HyperLink ID="HyperLink1" runat="server" target ="right" NavigateUrl="help.aspx" Text="帮助" />！</center><br />

                    </Content>
                </cc1:AccordionPane>
                                <cc1:AccordionPane ID="AccordionPane5" runat="server" ContentCssClass="" HeaderCssClass="">
                <Header>
                        <a href="../login.aspx" >重新登录</a>
                    </Header>
                    <Content>
                        <center>欢迎您访问<asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="../login.aspx" Text="重新登录" />！</center><br />

                    </Content>
                </cc1:AccordionPane>
   

              </Panes>
            </cc1:Accordion>
            
	 
	</div>
	<div id="right">
	    <iframe width="710" height="500" src="student.aspx" name="right" scrolling="no" frameborder="0" contenteditable="inherit"></iframe>
        </div>
</form>
</div>
</body>
</html>
