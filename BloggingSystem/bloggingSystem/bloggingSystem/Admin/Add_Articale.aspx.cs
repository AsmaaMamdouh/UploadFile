using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bloggingSystem.Admin
{
    public partial class Add_Articale : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source =.; Initial Catalog = BloggingSystem; User ID = sa; Password=123");
        int CategoryId;
        string b;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Admin"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    connection.Open();
                    SqlCommand cmd = new SqlCommand("select * from Category",connection);
                    SqlDataReader reader;
                    reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        ListItem li = new ListItem(reader["Name"].ToString(), reader["Id"].ToString());
                        ddl_category.Items.Add(li);
                    }
                    connection.Close();

                }
            }
        }
         
         protected void ddl_category_SelectedIndexChanged(object sender, EventArgs e)
                {
                 //   CategoryId = Convert.ToInt32(ddl_category.SelectedValue);
                }

        protected void add_Click(object sender, EventArgs e)
        {
            CategoryId = Convert.ToInt32(ddl_category.SelectedValue);

            uploadImg.SaveAs(Request.PhysicalApplicationPath + "./images/" + uploadImg.FileName.ToString());
            b = "./images/" +uploadImg.FileName.ToString();
            DateTime d= DateTime.Now;
            connection.Open();
            SqlCommand cmd = new SqlCommand("insert into Articale(Title,Content,Auther,Image,CategoryId,Description) values('" + title.Text + "','" + content.Text + "','" + auther.Text + "','" + b+ "'," + CategoryId + ",'"+description.Text+"')", connection);
            cmd.ExecuteNonQuery();
            connection.Close();
            Clear();
        }
        public void Clear()
        {
            title.Text = "";
            auther.Text = "";
            content.Text = "";
            description.Text = "";
        }

       
    }
}