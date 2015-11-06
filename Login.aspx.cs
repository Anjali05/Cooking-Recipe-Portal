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

public partial class Login : System.Web.UI.Page
{
    string connectionStr;
    private string name;
    protected void Page_Load(object sender, EventArgs e)
    {
        connectionStr = WebConfigurationManager.ConnectionStrings["RecipeDB"].ConnectionString;
    }

    protected void login_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(connectionStr);
        string message, url,usr,pas;
        url = "LoginRedirect.aspx?";

        string select = "Select User_Name,Password from [User]";
        select+="where User_Name='"+user.Text+"'";

        SqlCommand cmd = new SqlCommand(select, con);
        SqlDataReader reader;

        try
        {
            con.Open();
            reader = cmd.ExecuteReader();
            reader.Read();
            usr = reader["User_Name"].ToString();
            pas = reader["Password"].ToString();
            if (usr.Equals(user.Text) && pas.Equals(pass.Text))
            {
                message = "Login Success";
               
              //  Response.Redirect("Homepage.aspx");

            }
            else
            {
                message = "Wrong credentials";
               
            }
           url += "Result=" + message;
           
            reader.Close();
        }

        catch(Exception err)
        {
            message = err.Message;
            url += "Result=" + message;
           
        }

        finally
        {
            con.Close();
            Response.Redirect(url);
        }
    }

  
}