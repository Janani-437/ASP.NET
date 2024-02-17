using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demo2
{
    public partial class stateSessions : System.Web.UI.Page
    {
        string a, b;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void restore_Click(object sender, EventArgs e)
        {
            if (ViewState["user"] != null)
            {
                name.Text = ViewState["user"].ToString();
               
            }
            if (ViewState["password"] != null)
            {
                password.Text = ViewState["password"].ToString();
            }


        }

        protected void submit_Click(object sender, EventArgs e)
        {
          ViewState["user"]  = name.Text;
            ViewState["password"] = password.Text;
           
            name.Text = String.Empty;
            password.Text = String.Empty;
          //  Response.Redirect("Restore.aspx");

        }
    }
}