using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace eComProjectTemplate
{
    public partial class storedProcedur : System.Web.UI.Page
    {

        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        void bindGridView()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from products";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            grid1.DataSource = data;
            grid1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void return_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            //string query = "select * from products where manufacturer=@manufacturer";
            SqlDataAdapter sda = new SqlDataAdapter("productDetails", con);
            DataTable data = new DataTable();
            sda.Fill(data);
            grid1.DataSource = data;
            grid1.DataBind();
        }
    }
}