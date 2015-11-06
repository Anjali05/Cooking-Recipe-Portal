using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

/*
* @author Anjali
*/

public partial class Signup : System.Web.UI.Page
{
    string connectionStr;
    protected void Page_Load(object sender, EventArgs e)
    {
        connectionStr = WebConfigurationManager.ConnectionStrings["RecipeDB"].ConnectionString; 
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(connectionStr);
        int news=0;
        string message,url;
       
        url = "Result.aspx?";
        if(CB1.Checked==true)
        {
            news = 1;
        }
        string insert="insert into [User](";
        insert += "User_Name,Password,EmailID,News_Subscritption)";
        insert += "VALUES(";
        insert += "@name, @password, @email,@news)";

        SqlCommand cmd = new SqlCommand(insert, con);

     
        cmd.Parameters.AddWithValue("@name",name.Text);
        cmd.Parameters.AddWithValue("@password", pass.Text);
        cmd.Parameters.AddWithValue("@email", email.Text);
        cmd.Parameters.AddWithValue("@news", news);

        int added = 0;
        try
        {
            con.Open();
            added = cmd.ExecuteNonQuery();
        }
        catch(Exception err)
        {
            message = err.Message;
            url += "Result=";
            url+="Registration failed.";
            Response.Redirect(url);
        }
        finally
        {
            con.Close(); 
        }
        if(added>0)
        {
            url += "Result=";
            url+="Thank you for registering.";
            Response.Redirect(url);
        }
     
    }

    protected void cance_Click(object sender, EventArgs e)
    {
       
    }
}