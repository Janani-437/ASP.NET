using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.Optimization;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace ASPNetGettingStarted
{
    public partial class WebForm1 : System.Web.UI.Page
    {


        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(cs);
            string query = "insert into signUp values(@name,@email,@password,@mobile,@dob,@gender,@qualification,@location)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@name", name.Text);
            cmd.Parameters.AddWithValue("@email", email.Text);
            cmd.Parameters.AddWithValue("@password", password.Text);
            cmd.Parameters.AddWithValue("@mobile", mobile.Text);
            cmd.Parameters.AddWithValue("@dob", DOB.Text);
            if (female.Checked == true)
            {
                cmd.Parameters.AddWithValue("@gender", female.Text);
            }

            else
            {
                cmd.Parameters.AddWithValue("@gender", male.Text);
            }

            cmd.Parameters.AddWithValue("@location", select.SelectedItem.Value);
           string str = "";
            foreach (CheckBox ch in c.Controls.OfType<CheckBox>())
            {
                if (ch.Checked)
                {
                     str += ch.Text +",";
                    
                }
            }
           cmd.Parameters.AddWithValue("@qualification", str.Trim(','));
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                ClientScript.RegisterStartupScript(typeof(Page), "script", "alert('Registration Successfull for  user: " + name.Text + " and Password is: " + password.Text + "');", true);
                ClearControls();
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Registration Failed !!')</script>");
            }
            con.Close();
        }

        protected void OTHERS_CheckedChanged(object sender, EventArgs e)
        {

        }


        void ClearControls()
        {
            name.Text = email.Text = mobile.Text = password.Text = mobile.Text = DOB.Text = female.Text = male.Text = "";

        }
    }
}   

        /*  String na = name.Text;
          String em = email.Text;
          String pass = password.Text;
         // string se = "";
          string date = DOB.Text;
          string loc = select.Text;



          String result = "\nNAME : " + na + "\nEMAIL : " + em + " \nDATE OF BIRTH : " + date + " \nLOCATION : " + loc;

          // Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<Script>alert('REGISTRATION SUCESSFULL')</Script>");

          Response.Write("<script>alert('Inserted..');alert('"+result+"')</script>");*/
