<%@ Page Language="C#" ContentType="text/html" ResponseEncoding="gb2312" %>
 <%  if (Session["userid"] == null || Session["userpower"].ToString ()!="1") 
        {
            Response.Write("<script>alert('��¼����');window.location.href='../login.aspx'</script>");
        }   
       
 %> 

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>ѧ����Ϣ����ϵͳ</title>
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
           <a href ="student.aspx" target ="right" >������Ϣ</a> 
                    </Header>
                    <Content>
                        <center><font color ="red" size="2px" ><%=Session ["username"] %></font>��ӭ�����ʣ�</center><br />

                    </Content>
                </cc1:AccordionPane>
                <cc1:AccordionPane ID="AccordionPane2" runat="server" ContentCssClass="" HeaderCssClass="">
                <Header>
                        <a href="course.aspx"  target ="right">�γ���Ϣ</a>                    </Header>
                    <Content>
                        <center>��ӭ������<asp:HyperLink ID="HyperLink2" runat="server" target ="right" NavigateUrl="course.aspx" Text="�γ���Ϣ" />��</center><br />

                    </Content>
                </cc1:AccordionPane>
                <cc1:AccordionPane ID="AccordionPane3" runat="server" ContentCssClass="" HeaderCssClass="">
                <Header>
                        <a href="score.aspx" target="right">�ɼ���Ϣ</a>
                    </Header>
                    <Content>
                        <center>��ӭ������<asp:HyperLink ID="HyperLink3" runat="server"  Target ="right" NavigateUrl="score.aspx" Text="�ɼ���Ϣ" />��</center><br />

                    </Content>
                </cc1:AccordionPane>
                                <cc1:AccordionPane ID="AccordionPane4" runat="server" ContentCssClass="" HeaderCssClass="">
                <Header>
                        <a href="modify_pwd.aspx" target ="right">�����޸�</a>
                    </Header>
                    <Content>
                        <center>��ӭ������<asp:HyperLink ID="HyperLink4" runat="server" target ="right" NavigateUrl="modify_pwd.aspx" Text="�����޸�" />��</center><br />

                    </Content>
                </cc1:AccordionPane>
                                                <cc1:AccordionPane ID="AccordionPane6" runat="server" ContentCssClass="" HeaderCssClass="">
                <Header>
                        <a href="help.aspx" target ="right">����˵��</a>
                    </Header>
                    <Content>
                        <center>�����˺ţ�<font color ="red"><%=Session ["userid"] %></font><br />�������룺<font color ="red"><%=Session ["userpwd"] %></font><br />��ӭ������<asp:HyperLink ID="HyperLink1" runat="server" target ="right" NavigateUrl="help.aspx" Text="����" />��</center><br />

                    </Content>
                </cc1:AccordionPane>
                                <cc1:AccordionPane ID="AccordionPane5" runat="server" ContentCssClass="" HeaderCssClass="">
                <Header>
                        <a href="../login.aspx" >���µ�¼</a>
                    </Header>
                    <Content>
                        <center>��ӭ������<asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="../login.aspx" Text="���µ�¼" />��</center><br />

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
