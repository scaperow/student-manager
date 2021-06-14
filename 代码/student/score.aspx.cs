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

public partial class score : System.Web.UI.Page
{
 //   SqlCommand mycmd;
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {

        string strconn = ConfigurationManager.AppSettings["connStr"];
         conn = new SqlConnection(strconn);
        SqlDataReader getdata;
        SqlDataAdapter da = new SqlDataAdapter();
        SqlCommand mycmd;
        DataSet ds = new DataSet();
        string Sql;
        Sql = "select * from score where userid='" + Session["userid"] + "'";
        mycmd = new SqlCommand(Sql, conn);
        da.SelectCommand = mycmd;
        da.Fill(ds, "login");
        conn.Open();
        //    getdata = mycmd.ExecuteReader();
        //   grdMain.DataSource = getdata;
        datagrid1.DataSource = ds.Tables["login"]; ;
        datagrid1.DataBind();
        conn.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        datagrid1.CurrentPageIndex = 0;
        SqlDataReader getdata;
        SqlDataAdapter da = new SqlDataAdapter();
        SqlCommand mycmd;
        DataSet ds = new DataSet();
        string Sql;
        Sql = "select * from score where userid='" + txtscore.Text + "'or year='" + txtyear.SelectedValue + "'";
        mycmd = new SqlCommand(Sql, conn);
        da.SelectCommand = mycmd;
        da.Fill(ds, "login");
        conn.Open();
        //    getdata = mycmd.ExecuteReader();
        //   grdMain.DataSource = getdata;
        datagrid1.DataSource = ds.Tables["login"]; ;
        datagrid1.DataBind();
        conn.Close();

    }
    protected void datagrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        datagrid1.CurrentPageIndex = e.NewPageIndex;
        datagrid1.DataBind();
    }
}
