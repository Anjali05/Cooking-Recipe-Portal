using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Newtonsoft.Json;
using System.Xml;
using System.Xml.Linq;

public partial class PostRecipe : System.Web.UI.Page
{
    private string uploadDirectory;
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void post_Click(object sender, EventArgs e)
    {
        //To xml
        string xmlFilePath = Path.Combine(Request.PhysicalApplicationPath,@"App_Data\postedRecipes.xml");
        XDocument doc = XDocument.Load(xmlFilePath);
        XElement Recipes = doc.Element("Recipes");
        Recipes.Add(new XElement("Recipe",
                   new XElement("name", name.Text),
                   new XElement("type", list.SelectedValue.ToString()),
                   new XElement("ingredients",ingredients.Text),
                   new XElement("method",method.Text),
                   new XElement("imageurl",image.Text),
                   new XElement("date", DateTime.Now.ToString("M/d/yyyy"))));
        doc.Save(xmlFilePath);

        //To Json
        //string file = Path.Combine(Request.PhysicalApplicationPath, @"App_Data\Recipes.json");
        string path = Path.Combine(Request.PhysicalApplicationPath, @"App_Data\");
        //List<data> _data = new List<data>();

        //_data.Add(new data()
        //{
        //    name = name.Text,
        //    type = list.SelectedValue.ToString(),
        //    ingredients = ingredients.Text,
        //    method= method.Text,
        //    imageurl=""
        //});

        data newCookingData = new data();

        newCookingData.name = name.Text;
        newCookingData.type = list.SelectedValue.ToString();
        newCookingData.ingredients = ingredients.Text;
        newCookingData.steps = method.Text;
        newCookingData.imageurl = image.Text;
        newCookingData.date = DateTime.Now.ToString("M/d/yyyy"); ;

        string newJson = "";

        using (StreamReader r = new StreamReader(path + "Cookbook.json"))
        {
            string json = r.ReadToEnd();
            List<data> cookingData = JsonConvert.DeserializeObject<List<data>>(json);
            cookingData.Add(newCookingData);
            newJson = JsonConvert.SerializeObject(cookingData);
        }
        File.WriteAllText(path + "Cookbook.json", newJson);



        //string json = JsonConvert.SerializeObject(_data.ToArray(), Newtonsoft.Json.Formatting.Indented);
        //StreamReader r = new StreamReader(file);

        string url = "Result.aspx?";
        string message = "Your recipe was posted successfully.";
        url += "Result=" + message;
        Response.Redirect(url);
    }

}
public class data
{
    public string name { get; set; }
    public string type { get; set; }
    public string steps { get; set; }
    public string ingredients { get; set; }
    public string imageurl { get; set;}
    public string date { get; set; }
}