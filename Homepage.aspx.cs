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
        if (Session["theme"] == null)
        {
            Session["theme"] = "White";
            return;
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
            Response.Redirect("Login.aspx");
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList dl = (DropDownList)sender;
        switch (dl.SelectedValue)
        {
            case "White": Session["theme"] = "White"; Response.Redirect(Request.RawUrl); break;
            case "Dark": Session["theme"] = "Dark"; Response.Redirect(Request.RawUrl); break;
            default: Session["theme"] = "White"; Response.Redirect(Request.RawUrl); break;
        }
    }

    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Session["theme"] == null)
        {
            Session["theme"] = "White";
        }
        Page.Theme = (string)Session["theme"];
    }
}