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

public partial class editcourse : System.Web.UI.Page
{
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            string sql = "";
            SqlDataReader reader;
            string uid = "";
            uid = Page.Request["id"];
            string strconn = ConfigurationManager.AppSettings["connStr"];
            SqlConnection conn = new SqlConnection(strconn);
            sql = "select * from course where courseid='" + uid + "'";
            SqlCommand cmd;
            cmd = new SqlCommand(sql, conn);
            conn.Open();
            reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                courseid.Text = reader["courseid"].ToString();
                coursename.Text = reader["coursename"].ToString();
                coursetime.Text = reader["coursetime"].ToString();
                fen.Text = reader["fen"].ToString();
                type.Text = reader["type"].ToString();
               
            }
            cmd.Dispose();
            sql = "";
            conn.Close();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string uid = "";
        uid = Page.Request["id"];
        string strconn = ConfigurationManager.AppSettings["connStr"];
        SqlConnection conn = new SqlConnection(strconn);
        string sql = "";
        sql = "update course set courseid='" + courseid.Text + "',coursename='" + coursename.Text + "',coursetime='" + coursetime.Text + "',fen='" + fen.Text + "',type='" + type.Text + "' where courseid='" + uid + "'";
        cmd = new SqlCommand(sql, conn);
        conn.Open();
        try
        {
            cmd.ExecuteNonQuery();
            Label7.Text = "编辑成功";
            Response.Write("<script>javascript:alert('编辑成功!!!');</script>");
        }
        catch (SqlException)
        {
            Label7.Text = "编辑失败";
        }
        cmd.Dispose();
        conn.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string sql = "";
        string uid = "";
        uid = Page.Request["id"];
        string strconn = ConfigurationManager.AppSettings["connStr"];
        SqlConnection conn = new SqlConnection(strconn);
        sql = "delete from course where courseid='" + uid + "'";
        cmd = new SqlCommand(sql, conn);
        conn.Open();
        try
        {
            cmd.ExecuteNonQuery();
            Label7.Text = "删除成功";
            Response.Write("<script>javascript:alert('删除成功!!!');</script>");
        }
        catch (SqlException)
        {
            Label7.Text = "删除失败";
        }
        cmd.Dispose();
        conn.Close();
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
