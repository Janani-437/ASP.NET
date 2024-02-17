using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace crudOperation
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton_Insert_Clickk(object sender, EventArgs e)
        {
            SqlDataSource3.InsertParameters["name"].DefaultValue =
              ((TextBox)grid.FooterRow.FindControl("TextBox_InsertName")).Text;
            SqlDataSource3.InsertParameters["gender"].DefaultValue =
                 ((DropDownList)grid.FooterRow.FindControl("DropDownList_InsertGender")).SelectedValue;
            SqlDataSource3.InsertParameters["class"].DefaultValue =
                 ((TextBox)grid.FooterRow.FindControl("TextBox_InsertClass")).Text;
int a=  SqlDataSource3.Insert();

             if (a > 0)
               {
                   Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts ", "<script>alert('INSERTION SUCESSFULL')</script>");
               }
               else
               {

                   Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts ", "<script>alert('INSERTION nt SUCESSFULL')</script>");
               }
          
        }

        protected void grid_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
 