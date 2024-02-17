using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace website
{
    public partial class Registration : System.Web.UI.Page
    {

        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {



            SqlConnection con = new SqlConnection(cs);
            string query = "insert into users1 values(@name,@email,@mobile,@address,@location,@Password)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@name", name.Text);
            cmd.Parameters.AddWithValue("@email", email.Text);
            cmd.Parameters.AddWithValue("@mobile", mobile.Text);
            cmd.Parameters.AddWithValue("@address", address.Text);
            cmd.Parameters.AddWithValue("@location", location.Text);
            cmd.Parameters.AddWithValue("@password", password.Text);
            con.Open();
            /*if (email.Text.Trim() !="")
    {
        string apem = txtEmail.Text;
        
            // check duplicate email ID
  
            String queryB ="SELECT email FROM users1 WHERE email = '" + email +"' OR email='" + email +"' ";
                SqlCommand cmdB =new SqlCommand(queryB, con);
            SqlDataReader drB = cmdB.ExecuteReader();
  
            if (drB.HasRows)
            {
                // Message("Duplicate email found.");
                cvApplicantUpdate.ErrorMessage ="Email address already exists";
                txtEmail.Focus();
                e.IsValid =false;
  
                drB.Close();*/
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                ClientScript.RegisterStartupScript(typeof(Page), "script", "alert('Registration Successfull for  user: " + name.Text + " and Password is: " + password.Text + "');", true);
               // ClearControls();
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Registration Failed !!')</script>");
            }
            con.Close();
        }

    }
}
