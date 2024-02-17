using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demo2
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["user"] != null)
            {
                Response.Write("welcome " + Application["user"].ToString());
            }
            else
            {
                Response.Redirect("webForm1.aspx");

            }
        }

      

        protected void logout_Click(object sender, EventArgs e)
        {
            if (Application["user"] != null)
            {
                Application["user"] = null;
                Response.Redirect("WebForm1.aspx");
            }
            
        }
    }
}