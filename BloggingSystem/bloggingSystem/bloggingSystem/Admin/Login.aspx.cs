using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bloggingSystem.Admin
{

    public partial class Login : System.Web.UI.Page
    {
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            i = 0;
            SqlConnection connection = new SqlConnection("Data Source=.;Initial Catalog=BloggingSystem;User ID=sa;Password=123");
            SqlCommand cmd = new SqlCommand("Select * from Admin where UserName='" +userName.Text+ "'and password='" +password.Text+ "'",connection);
            SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            dataAdapter.Fill(dt);
            i = dt.Rows.Count;
            if (i == 1)
            { 
                Session["Admin"] = userName.Text;
                Response.Redirect("test.aspx");
            }
            else
            {
                l1.Text = "please enter correct name and password";
            }
        }
    }
}