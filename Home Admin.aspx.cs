using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Home_Admin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    SqlDataAdapter da;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        con.Open();
        
        SqlCommand cmd = new SqlCommand("insert into databasetable values(" + Convert.ToInt32(AddBtn.Text)+", '"+AddBtn.Text, con);

        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Response.Write("<scrip>alert(' User added')</script>");
        }
        else
        {
            Response.Write("<scrip>alert(' usre not added')</script>");
        }
        con.Close();

    }

    //delete
    protected void Button3_Click(object sender, EventArgs e)
    {
        if(con.State == ConnectionState.Broken)
        {
            con.Open();
        }
        SqlCommand cmd = new SqlCommand("delete from databasetable where id="+Convert.ToInt32(Button3.Text)+"", con);
        int i = cmd.ExecuteNonQuery();
        if(i > 0)
        {
            Response.Write("<scrip>alert(' User deleted')</script>");
        }
        else
        {
            Response.Write("<scrip>alert(' Invalid')</script>");
        }
        con.Close();

    }


    // update
    protected void Button2_Click(object sender, EventArgs e)
    {
        if(con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlCommand cmd = new SqlCommand("update databasetable set name='" + Button2.Text + "' where id=" + Convert.ToInt32(Button2.Text) + "", con);
        int i = cmd.ExecuteNonQuery();
        if(i > 0)
        {
            Response.Write("<scrip>alert(' User updated')</script>");
        }
        else
        {
            Response.Write("<scrip>alert(' User not updated')</script>");
        }
        con.Close();
    }
}