using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Home_Screen : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings[""].ConnectionString); //connection string
            conn.Open();
            string checkuser = "select count(*) from UserData where ID number ='" + TextBoxIDnum.Text + "'"; // new table with a new table name
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

            if (temp == 1)
            {
                Response.Write("User already Exists");
            }

            conn.Close();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings[""].ConnectionString); //connection string database
            conn.Open();
            string insertQuery = "insert into UserData (ID number, Name, Surname) values(@idNumber, @name, @surname)"; //name of the table
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@idNumber", TextBoxIDnum.Text);
            com.Parameters.AddWithValue("@name", TextBoxName.Text);
            com.Parameters.AddWithValue("@Fname", TextBoxSurname.Text);
            
            com.ExecuteNonQuery();
            Response.Redirect("Scan Screen.aspx");
            Response.Write("Registration is Successful");

            conn.Close();
        }
        catch (Exception ex)
        {

            Response.Write("Error:" + ex.ToString());
        }



    }

}
