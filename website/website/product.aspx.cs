using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace website
{
    public partial class product : System.Web.UI.Page
    {

        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SUBMIT_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "insert into products values(@productName,@manufacturer,@descripition,@price)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@productName", productName.Text);
            cmd.Parameters.AddWithValue("@manufacturer", @manufacturer.Text);
            cmd.Parameters.AddWithValue("@descripition", descripition.Text);
            cmd.Parameters.AddWithValue("@price", price.Text);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
              // Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>alert('PRODUCT ADDED Successfull for  user)</script>");
                // ClearControls();
                ClientScript.RegisterStartupScript(typeof(Page), "script", "alert('Registration Successfull for  ProductName: " + productName.Text + "');", true);
                // ClearControls();
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('ADDING Failed !!')</script>");
            }
            con.Close();
        }

    }
}
