using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace website
{
    public partial class afterLogin : System.Web.UI.Page
    {

        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            bindGridView();
        }

        protected void home_Click(object sender, EventArgs e)
        {
            Response.Redirect("log1.aspx");
        }

        protected void addProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("product.aspx");
        }


        void bindGridView()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from products";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            grid.DataSource = data;
            grid.DataBind();
        }


        void productName()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from products where productName=@productName";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            sda.SelectCommand.Parameters.AddWithValue("@productName", p.Text);
            DataTable data = new DataTable();
            sda.Fill(data);
            grid.DataSource = data;
            grid.DataBind();
        }
     
        void manufacturer()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from products where manufacturer=@manufacturer";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            sda.SelectCommand.Parameters.AddWithValue("@manufacturer",p.Text);
            DataTable data = new DataTable();
            sda.Fill(data);
            grid.DataSource = data;
            grid.DataBind();
        }

        protected void search_Click(object sender, EventArgs e)
        {

            if (s.SelectedItem.Value == "productName")
            {
                productName();
            }
            else if (s.SelectedItem.Value == "manufacturer")
            {
                manufacturer();
            }
        }


        protected void s_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void all_Click(object sender, EventArgs e)
        {
            bindGridView();
        }
    }
}
   
   


