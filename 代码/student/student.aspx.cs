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

public partial class student : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strconn = ConfigurationManager.AppSettings["connStr"];
        SqlConnection conn = new SqlConnection(strconn);
        string strsql = "";
        string a = Session["userid"].ToString();
        conn.Open();
        strsql = "select * from students where userid='"+a+"'";
        DataSet ds=new DataSet  () ;
        SqlDataAdapter da= new SqlDataAdapter(strsql, conn);
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count == 0)
        {
           Response .Write ("没有记录");
        }
        else
        {
            Label1.Text = ds.Tables[0].Rows[0]["userid"].ToString();
            Label2.Text = ds.Tables[0].Rows[0]["username"].ToString();
            Label3.Text = ds.Tables[0].Rows[0]["sex"].ToString();
            Label4.Text = ds.Tables[0].Rows[0]["minzu"].ToString();
            Label5.Text = DateTime .Parse (ds.Tables[0].Rows[0]["birthday"].ToString ()).ToShortDateString ();
            Label6.Text = DateTime.Parse(ds.Tables[0].Rows[0]["intime"].ToString()).ToShortDateString();
            Label7.Text = ds.Tables[0].Rows[0]["class"].ToString();
            Label8.Text = ds.Tables[0].Rows[0]["comefrom"].ToString();
            Label9.Text = ds.Tables[0].Rows[0]["beizhu"].ToString();
        }
        conn.Close();
        
    }

}
