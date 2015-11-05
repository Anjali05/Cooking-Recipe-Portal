using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using System.IO;

public partial class Homepage : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if((PreviousPage != null && PreviousPage.IsCrossPagePostBack))
        {
          /* LoginRedirect l = PreviousPage as LoginRedirect;
            if(l != null)
            {
                welcome.Text = l.Name;
            }
            else
            {
                welcome.Text = "";
            }*/
            Label l = (Label)PreviousPage.FindControl("loginResponse");
            welcome.Text = l.Text;
        }
        else
        {
            welcome.Text = "";
        }
    }

    protected void search_TextChanged(object sender, EventArgs e)
    {
        
    }

    protected void searchbutton_Click(object sender, EventArgs e)
    {
        string url = "Recipes.aspx?";
        string file = Path.Combine(Request.PhysicalApplicationPath, @"App_Data\Cookbook.json");
        int flag = 0;
        using (StreamReader r = new StreamReader(file))
        {
            string json = r.ReadToEnd();
            dynamic array = JsonConvert.DeserializeObject(json);
            foreach (var item in array)
            {

                if (search.Text.Contains(item.name.ToString()))
                {
                    url +="Search=Success";
                    url += "&Name=" + search.Text;
                    flag = 1;
                    break;
                }
            }
            if (flag != 1)
            {
                url +="Search=Sorry! No recipe found.";
            }
        }
        Response.Redirect(url);
    }

    protected void post_Click(object sender, ImageClickEventArgs e)
    {
        if(welcome.Text.Contains("Welcome"))
        {
            Response.Redirect("PostRecipe.aspx");
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
}