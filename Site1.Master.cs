using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace burgerLeaders
{
    public partial class Site1 : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Label4.Text = "Hello Guest,";
                LinkButton1.Visible = true;
                LinkButton2.Visible = false;
            }
            else
            {
                Label4.Text = "Hello " + Session["username"].ToString();
                LinkButton2.Visible = true;
                LinkButton1.Visible = false;

            }

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("search.aspx");
        }



        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("loginPage.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {

            Session.Abandon();
            Response.Redirect("homePage.aspx");

        
    }
       
        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }

        protected void Menu1_MenuItemClick1(object sender, MenuEventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }
    }
}