using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistrationsAndLogin
{
    public partial class Dashboard : System.Web.UI.Page
    {
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

        protected void logout_Click(object sender, EventArgs e)
        {


            if (Session["email"] != null)
            {
                Session["email"] = null;
                Response.Redirect("LoginForm.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisteredUsers.aspx");

        }
    }
}