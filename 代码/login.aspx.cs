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

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void txtid_Click(object sender, EventArgs e)
    {
        txtid.Text = "";
        txtpassword.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string strconn = ConfigurationManager.AppSettings["connStr"];
        SqlConnection conn = new SqlConnection(strconn);
        conn.Open();
        DataSet   ds=new DataSet  () ;
        SqlDataAdapter da = new SqlDataAdapter("select * from users where userid='" + txtid.Text  + "' and userpwd='" + txtpassword.Text + "'", conn);
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count==0)
        {
            Label3 .Text ="验证失败！账号或密码有错，请重新输入";
        }
        else
        {
            Session ["userid"]=txtid .Text ;
            Session["userpwd"] = txtpassword.Text;
            Session["username"] = ds.Tables[0].Rows[0]["username"].ToString();
            Session["userpower"] = ds.Tables[0].Rows[0]["userpower"].ToString();
            if (Session["userpower"].ToString () == "0")
            {
                Response.Redirect("admin/index.aspx");
            }
            else if (Session["userpower"].ToString() == "1")
            {
                Response.Redirect("student/index.aspx");
            }
            else
            {
                Label3.Text = "对不起，你没有权限进行操作";
            }
        }
        conn.Close();
        ds.Clear ();
        

///51a/spx
   
    }
}
