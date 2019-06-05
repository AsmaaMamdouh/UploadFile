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
    public partial class ArticaleDetails : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("Data Source=.;Initial Catalog=BloggingSystem;User ID=sa;Password=123");
        int articalId;
        int writerId;//writer of comment
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("DislayArticales.aspx");
            }
            else
            {
                articalId = Convert.ToInt32(Request.QueryString["id"]); 
                
                SqlCommand cmd = new SqlCommand(@"select * from Articale where Id=" + articalId, connection);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                r1.DataSource = dt;
                r1.DataBind();
            }
            
        }

        protected void add_comment_Click(object sender, EventArgs e)
        {
            Session["CurrentArticale"] = articalId.ToString();
            if (Session["USerEmail"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                SqlCommand cmd = new SqlCommand("select Id from Registeration where Email='" + Session["USerEmail"] + "'", connection);
                connection.Open();
                 var returnedValue = cmd.ExecuteScalar();
                connection.Close();
                if (returnedValue != null)
                {
                    writerId = Convert.ToInt32(returnedValue);
                }
               

                
                SqlCommand cmd2 = new SqlCommand("insert into Comment (Content,ArticaleId,WriterId) values('"  
                    +comment.Text+"',"+articalId+","+writerId+ ")", connection);
                connection.Open();
                cmd2.ExecuteNonQuery();
                connection.Close();
                comment.Text = "";
            }
        }

        protected void show_comments_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand(@"select * from Comment where ArticaleId=" + articalId, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                r2.DataSource = dt;
                r2.DataBind();
            }
            else
            {
                lbl_noComments.Text = "There is no comments for this articale";
            }

        }
    }
}