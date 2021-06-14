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

public partial class modify_pwd : System.Web.UI.Page
{
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strconn = ConfigurationManager.AppSettings["connStr"];
         conn = new SqlConnection(strconn);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql="";
        SqlCommand cmd;
        string uid;
        string pwd;
        uid = Session["userid"].ToString ();
        pwd = Session["userpwd"].ToString();
        if (txtpassword.Text == "")
        {
            Label4.Text = "原密码不能为空";
        }
        else if (password.Text == "")
        {
            Label4.Text = "新密码不能为空";
        }
        else if (password.Text != password1.Text)
        {
            Label4.Text = "新密码和确认密码不一致";
        }
        else if (txtpassword.Text != pwd)
        {
            Label4.Text = "原密码不正确";
        }
        else
        {

            sql = "";
            sql = "update users set userpwd='" + password.Text + "'where userid='" + uid + "'";
            cmd = new SqlCommand(sql, conn);
            conn.Open();
            try
            {
                cmd.ExecuteNonQuery();
                Label4.Text = "密码修改成功";
            }
            catch (SqlException)
            {
                Label4.Text = "密码修改失败";
            }
            finally
            {
                conn.Close();
            }


        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("student.aspx");
    }
}
