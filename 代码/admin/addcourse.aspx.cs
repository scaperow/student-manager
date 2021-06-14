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

public partial class addcourse : System.Web.UI.Page
{
    SqlCommand mycmd;
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        courseid.Attributes.Add("onblur", "checkcourseid()"); 
        string strconn = ConfigurationManager.AppSettings["connStr"];
         conn = new SqlConnection(strconn);

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (courseid.Text.ToString() == "")
        {
            Label7.Text = "课程号不能为空";
        }
        else
        {
            string sqlstr = "";
            sqlstr = "insert into course(courseid,coursename,coursetime,fen,type)values('" + courseid.Text + "','" + coursename.Text + "','" + coursetime.Text + "','" + fen.Text + "','" + type.Text + "')";
            conn.Open();
            mycmd = new SqlCommand(sqlstr, conn);
            mycmd.Dispose();
            try
            {
                mycmd.ExecuteNonQuery();
                Response.Write("<script>javascript:alert('添加成功!!!');</script>");
                //Response.Redirect("student.aspx");
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
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        courseid.Text = "";
        coursename.Text = "";
        coursetime.Text = "";
        fen.Text = "";
        type.Text = "";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("course.aspx");
    }
}
