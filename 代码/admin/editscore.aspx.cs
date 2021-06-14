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

public partial class editscore : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection conn;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            string sql = "";
            SqlDataReader reader;
            string uid = "";
            uid = Page.Request["id"];
            string strconn = ConfigurationManager.AppSettings["connStr"];
             conn = new SqlConnection(strconn);
            sql = "select * from score where id='" + uid + "'";
            SqlCommand cmd;
            cmd = new SqlCommand(sql, conn);
            conn.Open();
            reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                id.Text = reader["id"].ToString();
                userid.Text = reader["userid"].ToString();
                username.Text = reader["username"].ToString();
                txtclass.Text = reader["class"].ToString();
                txtcourseid.Text = reader["courseid"].ToString();
                coursename.Text = reader["coursename"].ToString();
                teacher.Text = reader["teacher"].ToString();
                score.Text = reader["score"].ToString();
      //          txtyear.Text = reader["[year]"].ToString();


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
        string sql = "";
        string strconn = ConfigurationManager.AppSettings["connStr"];
        conn = new SqlConnection(strconn);
        sql = "update score set userid='" + userid.SelectedValue + "',username='" + username.Text  + "',class='" + txtclass.Text + "',courseid='" + txtcourseid.SelectedValue + "',coursename='" + coursename.Text + "',teacher='" + teacher.Text + "' ,score='" + score.Text + "',[year]='" + txtyear.SelectedValue + "'where id='" + uid + "'";
        cmd = new SqlCommand(sql,conn );
        conn.Open();
        try
        {
            cmd.ExecuteNonQuery();
            Label11.Text = "编辑成功";
            Response.Write("<script>javascript:alert('编辑成功!!!');</script>");
        }
        catch (SqlException)
        {
            Label11.Text = "编辑失败";
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
        conn = new SqlConnection(strconn);
        sql = "delete from score where id='" + uid + "'";
        cmd = new SqlCommand(sql, conn);
        conn.Open();
        try
        {
            cmd.ExecuteNonQuery();
            Label11.Text = "删除成功";
            Response.Write("<script>javascript:alert('删除成功!!!');</script>");
        }
        catch (SqlException)
        {
            Label11.Text = "删除失败";
        }
        cmd.Dispose();
        conn.Close();
        id.Text = "";
        username.Text = "";
        txtclass.Text = "";
        coursename.Text = "";
        teacher.Text = "";
        score.Text = "";


    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("score.aspx");
    }

    protected void userid_SelectedIndexChanged(object sender, EventArgs e)
    {
        string strconn = ConfigurationManager.AppSettings["connStr"];
        conn = new SqlConnection(strconn);
        string sqlstr = "";
        sqlstr = "select username from students where userid='" + userid.SelectedValue + "'";
        conn.Open();
        cmd  = new SqlCommand(sqlstr, conn);
        cmd.Dispose();
        SqlDataReader da;
        da = cmd.ExecuteReader();
        while (da.Read())
        {
            username.Text = da["username"].ToString();
        }
    }
    protected void txtcourseid_SelectedIndexChanged(object sender, EventArgs e)
    {
        string strconn = ConfigurationManager.AppSettings["connStr"];
        conn = new SqlConnection(strconn);
        string sqlstr = "";
        sqlstr = "select coursename from course where courseid='" + txtcourseid.SelectedValue + "'";
        conn.Open();
        cmd = new SqlCommand(sqlstr, conn);
        cmd.Dispose();
        SqlDataReader da;
        da = cmd.ExecuteReader();
        while (da.Read())
        {
            coursename.Text = da["coursename"].ToString();
        }
    }
}
