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

public partial class images_editstudent : System.Web.UI.Page
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
            sql = "select * from students where userid='" + uid + "'";
            SqlCommand cmd;
            cmd = new SqlCommand(sql, conn);
            conn.Open();
            reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                userid.Text = reader["userId"].ToString();
                txtusername.Text = reader["username"].ToString();
                txtsex.SelectedValue = reader["sex"].ToString();
                txtminzu.Text = reader["minzu"].ToString();
                txtbirthday.Text = reader["birthday"].ToString();
                txtintime.Text = reader["intime"].ToString();
                txtclass.Text = reader["class"].ToString();
                txtcomefrom.Text = reader["comefrom"].ToString();
                txtbeizhu.Text = reader["beizhu"].ToString();
            }
            cmd.Dispose();
            sql = "";
            conn.Close();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string uid="";
        uid=Page .Request ["id"];
        string strconn = ConfigurationManager.AppSettings["connStr"];
        SqlConnection conn = new SqlConnection(strconn);
        string sql="";
        sql = "update students set userid='" + userid.Text + "',username='" + txtusername.Text + "',minzu='" + txtminzu.Text + "',sex='" + txtsex.SelectedItem.Value + "',birthday='" + txtbirthday.Text + "',intime='" + txtintime.Text + "',class='" + txtclass.Text + "',comefrom='" + txtcomefrom.Text + "',beizhu='" + txtbeizhu.Text + "'where userid='" + uid + "'";
        cmd=new SqlCommand (sql,conn );
        conn.Open();
        try
        {
            cmd.ExecuteNonQuery();
            Label11.Style["color"] = "blue";
            Label11.Text = "编辑成功";
            Response.Write("<script>javascript:alert('编辑成功!!!');</script>");
        }
        catch(SqlException )
        {
            Label11.Text = "编辑失败";
            Label11.Style["color"] = "red";
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
        sql = "delete from students where userid='" + uid + "'";
        cmd = new SqlCommand(sql, conn);
        conn.Open();
        try
        {
            cmd.ExecuteNonQuery();
            string sql1 = "";
            sql1 = "delete from users where userid='" + uid + "'";
            SqlCommand cmd1 = new SqlCommand(sql1, conn);
            cmd1.Dispose();
            try
            {
                cmd1.ExecuteNonQuery();
                Label11.Style["color"] = "blue";
                Label11.Text = "删除成功";
                Response.Write("<script>javascript:alert('删除成功!!!');</script>");

            }
            catch (SqlException)
            {
                Label11.Text = "删除失败";
                Response.Write("<script>javascript:alert('删除失败!!!');</script>");
            }
            finally
            {
                sql1 = "";
            }

        }
        catch(SqlException )
        {
            Label11.Text = "删除失败";
            Label11.Style["color"] = "red";
        }
        cmd.Dispose();
        conn.Close();
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
