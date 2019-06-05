using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bloggingSystem.Visitor
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source=.;Initial Catalog=BloggingSystem;User ID=sa;Password=123");
        protected void Page_Load(object sender, EventArgs e)
        {  

        }

        protected void login_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from Registeration where Email='"+email.Text+"'and Password='"+password.Text+"'",connection);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            if (dt.Rows.Count > 0)
             { 
                Session["UserEmail"] = email.Text;
                if (Session["CurrentArticale"] == null)  //the articale on witch he want to make comment
                {
                    Response.Redirect("DislayArticales.aspx");
                }
                else
                {
                    
                    Response.Redirect("ArticaleDetails.aspx?id=" + Session["CurrentArticale"]);
                }
             }
            else
            {
                l1.Text = "invalid email or password";
            }
        }
    }
}