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

public partial class addscore : System.Web.UI.Page
{
    SqlCommand mycmd;
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strconn = ConfigurationManager.AppSettings["connStr"];
        conn = new SqlConnection(strconn);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (userid.SelectedValue .ToString ()== "")
        {
            Label11.Text = "学号不能为空";
        }
        else
        {
            string sqlstr = "";
            sqlstr = "insert into score(userid,username,class,courseid,coursename,teacher,score,[year])values('" + userid .SelectedValue + "','" + username.Text + "','" + txtclass.Text + "','" + txtcourseid .SelectedValue  + "','"+coursename .Text +"','"+teacher .Text+ "','"+score .Text +"','"+txtyear .SelectedValue +"')";
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
        username.Text = "";
        txtclass.Text = "";
        coursename.Text = "";
        teacher.Text = "";
        score.Text = "";
        txtyear.Text = "";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("score.aspx");
    }
    protected void userid_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sqlstr = "";
        sqlstr = "select username from students where userid='" + userid.SelectedValue + "'";
        conn.Open();
        mycmd = new SqlCommand(sqlstr, conn);
        mycmd.Dispose();
        SqlDataReader  da;
        da = mycmd.ExecuteReader();
        while (da.Read())
        {
            username.Text = da["username"].ToString();
        }
    }
    protected void txtcourseid_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sqlstr = "";
        sqlstr = "select coursename from course where courseid='" + txtcourseid.SelectedValue + "'";
        conn.Open();
        mycmd = new SqlCommand(sqlstr, conn);
        mycmd.Dispose();
        SqlDataReader da;
        da = mycmd.ExecuteReader();
        while (da.Read())
        {
            coursename.Text = da["coursename"].ToString();
        }

    }
}
