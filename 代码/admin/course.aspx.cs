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

public partial class course : System.Web.UI.Page
{
    SqlConnection conn;
    SqlDataReader getdata;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strconn = ConfigurationManager.AppSettings["connStr"];
        conn = new SqlConnection(strconn);
        SqlDataReader getdata;
        SqlCommand mycmd;
        DataSet ds = new DataSet();
        string sql = "";
        sql = "select * from course order by courseid";
        mycmd = new SqlCommand(sql, conn);
        conn.Open();
        getdata = mycmd.ExecuteReader();
        grdMain.DataSource = getdata;
        grdMain.DataBind();
        mycmd.Connection.Close();
        conn.Close();
        mycmd.Dispose();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSet ds;
        SqlDataReader da;
        string strsql = "";
        SqlCommand cmd;
        conn.Open();
        strsql = "select * from course where courseid='" + courseid.Text + "'or coursename like '" + coursename.Text + "'";
        cmd = new  SqlCommand(strsql, conn);
        da = cmd.ExecuteReader();
        Datagrid1.DataSource = da;
        Datagrid1.DataBind();
        conn.Close();
        cmd.Dispose();
        cmd.Connection.Close();
    }
}
