using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using System.IO;
using System.Data;

/*
* @author Anjali
*/

public partial class Breakfast : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        ds.Tables.Add("Recipes");
        string file = Path.Combine(Request.PhysicalApplicationPath, @"App_Data\Cookbook.json");
        ds.Tables["Recipes"].Columns.Add("name");
        using (StreamReader r = new StreamReader(file))
        {
            string json = r.ReadToEnd();
            dynamic array = JsonConvert.DeserializeObject(json);
            foreach (var item in array)
            {
                if (item.type.ToString().Equals("Breakfast"))
                {
                    DataRow rowNew = ds.Tables["Recipes"].NewRow();
                    rowNew["name"] = item.name.ToString();
                    ds.Tables["Recipes"].Rows.Add(rowNew);
                }
            }
        }
        B1.DataSource = ds.Tables["Recipes"];
        this.DataBind();
    }

    protected void B1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        string recipe_name= B1.SelectedRow.Cells[1].Text;
        Label body = new Label();
        Label head = new Label();
        Image img = new Image();
        string file = Path.Combine(Request.PhysicalApplicationPath, @"App_Data\Cookbook.json");
        using (StreamReader r = new StreamReader(file))
        {
            string json = r.ReadToEnd();
            dynamic array = JsonConvert.DeserializeObject(json);
            foreach (var item in array)
            {
                if (recipe_name.Equals(item.name.ToString()))
                {
                    head.Text = "<h1>" + recipe_name + "</h1>";
                    body.Text += "<h2>" + "Ingredients" + "</h2>";
                    body.Text += item.ingredients.ToString();
                    body.Text += "<h2>" + "Method" + "</h2>";
                    body.Text += item.steps.ToString();
                    img.ImageUrl = item.imageurl;
                    Panel1.Controls.Add(head);
                    Panel1.Controls.Add(img);
                    Panel1.Controls.Add(body);
                    break;
                }
            }
        }
    }
}