﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demo2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            Application["user"] = name.Text;
            Response.Redirect("WebForm2.aspx");
        }
    }
}