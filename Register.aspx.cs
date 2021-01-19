using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings[""].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from UserData where Perosnal Number='"+TextBoxPU.Text+"'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

            if(temp == 1)
            {
                Response.Write("User already Exists");
            }

            conn.Close();

        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings[""].ConnectionString); //name of the database
            conn.Open();
            string insertQuery = "insert into UserData (Title,PesonalNumber,FisrtName, MiddleName,Surname, IdentityNumber,Gender,Rank,Province, Station, Email,Password) values(@title, @Pnumber, @Fname,@Mname, @Sname, @IDnumber, @gender, @rank, @province, @station, @email, @password)"; //name of the table
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@title", DropDownListTitle.SelectedItem.ToString());
            com.Parameters.AddWithValue("@Pnumber", TextBoxPU.Text);
            com.Parameters.AddWithValue("@Fname", TextBoxFname.Text);
            com.Parameters.AddWithValue("@Mname", TextBoxMname.Text);
            com.Parameters.AddWithValue("@Sname",TextBoxSname.Text);
            com.Parameters.AddWithValue("@IDnumber", TextBoxIDnumber.Text);
            com.Parameters.AddWithValue("@gender", DropDownListGender.SelectedItem.ToString());
            com.Parameters.AddWithValue("@rank", DropDownListRank.SelectedItem.ToString());
            com.Parameters.AddWithValue("@province", DropDownListProvince.SelectedItem.ToString());
            com.Parameters.AddWithValue("@station", DropDownListStation.SelectedItem.ToString());
            com.Parameters.AddWithValue("@email", TextBoxEmail.Text);
            com.Parameters.AddWithValue("@password", TextBoxPassword.Text);
            

            com.ExecuteNonQuery();
            Response.Redirect("User Login.aspx");
            Response.Write("Registration is Successful");

            conn.Close();
        }
        catch(Exception ex)
        {

            Response.Write("Error:" + ex.ToString());
        }

        
        
    }
}