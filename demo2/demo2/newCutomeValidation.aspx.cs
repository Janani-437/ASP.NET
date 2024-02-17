using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demo2
{
    public partial class newCutomeValidation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int Value=int.Parse(args.Value);
            if(Value % 2 == 0)
            {
                args.IsValid = true;

            }
            else
            {
                args.IsValid=false;
            }
        }
    }
}