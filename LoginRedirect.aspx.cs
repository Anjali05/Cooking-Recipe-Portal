using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoginRedirect : System.Web.UI.Page
{
    private string name;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if(Request.QueryString["Result"].ToString().Equals("Login Success"))
        {
            
          //  loginResponse.Text = "<h2>"+"Login Success. Take me to Home."+"</h2>";
           // hompage.Visible = true;
            Response.Redirect("PostRecipe.aspx");
        }
        else
        {
            loginResponse.Text ="<h2>"+ Request.QueryString["Result"]+".Please try again."+"</h2>";
        }
    }
    public string Name
    {
        get
        {
            return "welcome";
        }
    }


}