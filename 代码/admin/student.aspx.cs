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

        SqlDataAdapter da = new SqlDataAdapter();
        SqlCommand mycmd;
        DataSet ds = new DataSet();
        string Sql;
        Sql = "select * from students order by userid";
        mycmd = new SqlCommand(Sql, conn);
        da.SelectCommand = mycmd;
        da.Fill(ds, "login");
        conn.Open();
        Datagrid1.DataSource = ds.Tables["login"];
        Datagrid1.DataBind();
        conn.Close();


        
    }
    protected void Datagrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        Datagrid1.CurrentPageIndex = e.NewPageIndex;
        Datagrid1.DataBind();
    }
}
