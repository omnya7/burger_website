using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace burgerLeaders
{
    public partial class signupPage : System.Web.UI.Page
    {



        SqlCommand cmd;
        SqlConnection con;


        protected void Page_Load(object sender, EventArgs e)
        {
            //connection string
            con = new SqlConnection("Data Source=DESKTOP-FDNKUNE\\SQLEXPRESS;Initial Catalog=burgerLeaders;Integrated Security=True");

        }



        protected void registerButton_Click1(object sender, EventArgs e)
        {
            //open connection 
            con.Open();
            //writing command to insert the given information 
            String insert = "Insert into [registertable](name, password, email)  values('" + nametxt.Text + "' , '" + passtxt.Text + "' ,'" + emailtxt.Text + "')";

            cmd = new SqlCommand(insert, con);
            //excute query
            cmd.ExecuteNonQuery();
            //close connenction
            con.Close();
            //after checking the given username and password, direct the user to the login page
            Response.Redirect("~/loginPage.aspx");


        }

        protected void emailtxt_TextChanged(object sender, EventArgs e)
        {

        }
    }

}