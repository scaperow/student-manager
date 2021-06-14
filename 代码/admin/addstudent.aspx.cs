using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class addstudent : System.Web.UI.Page
{
    SqlCommand mycmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        userid.Attributes.Add("onblur", "checkuserid()"); 
        string strconn = ConfigurationManager.AppSettings["connStr"];
        SqlConnection conn = new SqlConnection(strconn);
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (userid.Text.ToString() =="")
            return;
        string strconn = ConfigurationManager.AppSettings["connStr"];
        SqlConnection conn = new SqlConnection(strconn);
        string sqlstr = "";
        sqlstr = "insert into students(userid,username,sex,minzu,birthday,intime,class,comefrom,beizhu)values('" + userid.Text + "','" + txtusername.Text + "','" + txtsex.SelectedItem.Value + "','" + txtminzu.Text + "','" + txtbirthday.Text + "','" + txtintime.Text + "','" + txtclass.Text + "','" + txtcomefrom.Text + "','" + txtbeizhu.Text + "')";
        conn.Open();
        mycmd = new SqlCommand(sqlstr, conn);  
        mycmd.Dispose();
        try
        {
            mycmd.ExecuteNonQuery();
            string sqlstr1 = "";
            sqlstr1 = "insert into users(userid,username)values('" + userid.Text + "','" + txtusername.Text + "') ";
            SqlCommand mycmd1 = new SqlCommand(sqlstr1, conn);
            mycmd1.Dispose();
            try
            {
                mycmd1.ExecuteNonQuery();
                Response.Write("<script>javascript:alert('添加成功!!!');</script>");
            }
            catch (SqlException)
            {
                Response.Write("<script>javascript:alert('添加失败!!!');</script>");
            }
            finally
            {
                sqlstr1 = "";
            }

        }
        catch (SqlException)
        {
            Response.Write("<script>javascript:alert('添加失败!!!');</script>");
        }
        finally
        {
            conn.Close();
            sqlstr = "";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        userid.Text = "";
        txtusername.Text = "";
        txtminzu.Text = "";
        txtbirthday.Text = "";
        txtintime.Text = "";
        txtclass.Text = "";
        txtcomefrom.Text = "";
        txtbeizhu.Text = "";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("student.aspx");
    }
}

