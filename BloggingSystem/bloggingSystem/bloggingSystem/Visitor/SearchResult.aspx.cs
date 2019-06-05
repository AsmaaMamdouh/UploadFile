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
    public partial class SearchResult : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source =.; Initial Catalog = BloggingSystem; User ID = sa; Password=123");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("select * from Articale where CategoryId=" + Session["SelectedCategory"], connection);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                r1.DataSource = dt;
                r1.DataBind();
            }
        }
    }
}