using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignupResult : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string test = Request.QueryString["Result"];
        result.Text = "<h1>" + test + "</h1>";
       /* if (test.Equals("Thank you for registering."))
        {
            
            login.Visible = true;
        }*/
    }
}