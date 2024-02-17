using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demo2
{
    public partial class customeValidator : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void genderValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {

          
            
                if (f.Checked)
                {
                    args.IsValid = true;
                }

                else if (m.Checked)

                {
                    args.IsValid = false;
                }

            }

        
        protected void submit_Click(object sender, EventArgs e)
        {
           
            SqlConnection con = new SqlConnection(cs);

            string query = "insert into student values(@name,@age,@gender)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@name", name.Text);
            cmd.Parameters.AddWithValue("@age", age.Text);

            cmd.Parameters.AddWithValue("@gender", "female");
            

            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                ClientScript.RegisterStartupScript(typeof(Page), "script", "alert('Registration Successfull 👍');", true);



            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>alert('Registration failed! 👎')</script>");
            }
            con.Close();
        }
    }
}