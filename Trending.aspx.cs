using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using System.IO;


public partial class Trending : System.Web.UI.Page
{
    string name;
    protected void Page_Load(object sender, EventArgs e)
    {
        string date = cal.TodaysDate.ToShortDateString();
        today.Text = "Today is " + cal.TodaysDate.ToLongDateString();
        if(!this.IsPostBack)
        {
            search(date);
        }
       
    }

    protected void cal_SelectionChanged(object sender, EventArgs e)
    {
        string date = cal.SelectedDate.ToShortDateString();
        if(date!=null)
        {
            search(date);
        }
        else
        {
            Label body = new Label();
            body.Text = "Sorry! No recipes found!";
            Panel1.Controls.Add(body);
        }
    }

    protected void cal_DayRender(object sender, DayRenderEventArgs e)
    {
        string d= cal.TodaysDate.ToShortDateString();
        if(e.Day.IsToday)
        {
            e.Cell.BackColor = System.Drawing.Color.Coral;
            Label lbl = new Label();
            lbl.Text = "<br/>"+name;
            e.Cell.Controls.Add(lbl);
            e.Day.IsSelectable = false;
        
        }
       
    }

    public void search(string date)
    {
        Label body = new Label();
        Label head = new Label();
        Image img = new Image();
        int flag = 0;

        string file = Path.Combine(Request.PhysicalApplicationPath, @"App_Data\Cookbook.json");
        using (StreamReader r = new StreamReader(file))
        {

            string json = r.ReadToEnd();
            dynamic array = JsonConvert.DeserializeObject(json);
            foreach (var item in array)
            {
                if (date.Equals(item.date.ToString()))
                {
                    head.Text = "<h1>" + item.name.ToString() + "</h1>";
                    name = "Today's favorite is "+item.name.ToString();
                    body.Text += "<h2>" + "Ingredients" + "</h2>";
                    body.Text += item.ingredients.ToString();
                    body.Text += "<h2>" + "Method" + "</h2>";
                    body.Text += item.steps.ToString();
                    img.ImageUrl = item.imageurl;
                    Panel1.Controls.Add(head);
                    Panel1.Controls.Add(img);
                    Panel1.Controls.Add(body);
                    flag = 1;
                    break;
                }
            }
        }

        if (flag == 0)
        {
            body.Text = "Sorry! No recipes found!";
            Panel1.Controls.Add(body);

        }
    }
}