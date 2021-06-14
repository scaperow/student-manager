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

public partial class checkcourseid : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Expires = 0;
        string strconn = ConfigurationManager.AppSettings["connStr"];
         SqlConnection  conn = new SqlConnection(strconn);
         string nam = Request.QueryString["name"].ToString();
         string sql = "select courseid from course where courseid='" + nam + "'";
         SqlCommand DBHelper;
         DBHelper = new SqlCommand(sql, conn);
         conn.Open();
         SqlDataReader dr = DBHelper.ExecuteReader();
         if (dr.Read())
         {
             Response.Write("<b class='Error'>该ID号已经存在，请换一个</b>");
             
         }
         else
         {
             Response.Write("<b class='Right'>该ID号可以使用</b>");
             
         }
         dr.Close();
     }
//5/1/a/sp/x//
    
}
