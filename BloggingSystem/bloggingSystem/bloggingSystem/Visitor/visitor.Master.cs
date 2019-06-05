using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bloggingSystem.Visitor
{
    public partial class visitor : System.Web.UI.MasterPage
    {
        SqlConnection connection = new SqlConnection("Data Source=.;Initial Catalog=BloggingSystem;User ID=sa;Password=123");
      //  int SelectedValue;
        protected void Page_Load(object sender, EventArgs e)
        {
            connection.Open();
            SqlCommand cmd = new SqlCommand("select * from Category", connection);
            SqlDataReader reader;
            reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                ListItem li = new ListItem(reader["Name"].ToString(), reader["Id"].ToString());
                ddl_Category.Items.Add(li); 
               
            }
            connection.Close();
        }

        protected void srch_Click(object sender, EventArgs e)
        {
          //  SelectedValue =Convert.ToInt32( ddl_Category.SelectedValue);
            Session["SelectedCategory"] = ddl_Category.SelectedValue;
            Response.Redirect("SearchResult.aspx");
        }
    }
}