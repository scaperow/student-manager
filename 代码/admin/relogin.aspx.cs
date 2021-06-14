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

public partial class relogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //string strconn = ConfigurationManager.AppSettings["connStr"];
      //  SqlConnection conn = new SqlConnection();
       // conn.ConnectionString = ConfigurationManager.AppSettings["connStr"];
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
           // Label4.Text = Session["userid"] + "登录成功";
           Response .Redirect ("student.aspx");
        }
        conn.Close();
        ds.Clear ();
        


   
    }
}
