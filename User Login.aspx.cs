using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings[""].ConnectionString); //SQL connection
        conn.Open();
        string checkuser = "select count(*) from UserData where Perosnal Number='" + TextBoxPersonalnum.Text + "'"; //datadase table name
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

        if (temp == 1)
        {
            conn.Open();
            string checkPasswordQuery = "select password from UserData where= '" + TextBoxPersonalnum + "'"; // database table name
            SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
            string password = passComm.ExecuteScalar().ToString().Replace("","");
            if(password == TextBoxPassword.Text)
            {
                Session["New"] = TextBoxPersonalnum.Text; 
                Response.Write("Password is correct");
                Response.Redirect("Home Screen.aspx");
            }
            else
            {
                Response.Write("Password is Not correct");
            }

        }
        else
        {
            Response.Write("Personal Number is correct");
        }

        conn.Close();

    }

    protected void TextBoxPassword_TextChanged(object sender, EventArgs e)
    {

    }
}