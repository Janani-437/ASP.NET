using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace website
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {



            if (Session["email"] != null)
            {
                Response.Write("Welcome to My Site Mr/Mrs : Email " + Session["email"].ToString());
            }
            else
            {
                Response.Redirect("LoginForm.aspx");
            }
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("afterLogin.aspx");


        }
    }
}
