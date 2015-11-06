using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using System.IO;

/*
* @author Anjali
*/
public partial class Recipes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label body = new Label();
        Label head= new Label();
        Image img = new Image();
       
        string result = Request.QueryString["Search"];
        if (result == "Success")
        {
            string file = Path.Combine(Request.PhysicalApplicationPath, @"App_Data\Cookbook.json");
            using (StreamReader r = new StreamReader(file))
            {
                string name = Request.QueryString["Name"];
                string json = r.ReadToEnd();
                dynamic array = JsonConvert.DeserializeObject(json);
                foreach (var item in array)
                {
                    if (name.Equals(item.name.ToString()))
                    { 
                        head.Text = "<h1>"+name+"</h1>";
                        body.Text += "<h2>" + "Ingredients" + "</h2>";
                        body.Text += item.ingredients.ToString();
                        body.Text += "<h2>" + "Method" + "</h2>";
                        body.Text+= item.steps.ToString();
                        img.ImageUrl = item.imageurl;
                        Panel1.Controls.Add(head);
                        Panel1.Controls.Add(img);
                        Panel1.Controls.Add(body);
                        break;
                    }
                }
            }
           
        }

        else
        {
            head.Text = Request.QueryString["Search"];
            Panel1.Controls.Add(head);
        }
       
    }
}