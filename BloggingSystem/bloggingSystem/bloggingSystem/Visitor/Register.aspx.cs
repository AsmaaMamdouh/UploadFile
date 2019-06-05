using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bloggingSystem.Visitor
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source=.;Initial Catalog=BloggingSystem;User ID=sa;Password=123");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void reg_Click(object sender, EventArgs e)
        {
            connection.Open();
            SqlCommand cmd = new SqlCommand("insert into Registeration values('"  
                +fName.Text+"','"+lName.Text+"','"+email.Text+"','"+password.Text+"','"+mobile.Text+"','"+address.Text+ "')", connection);
            
            cmd.ExecuteNonQuery();
            connection.Close();
            l1.Text = "registered successfully";
            Clear();
        }
        public void Clear()
        {
            fName.Text = "";
            lName.Text = "";
            password.Text = "";
            email.Text = "";
            mobile.Text = "";
            address.Text = "";
        }

        
    }
}