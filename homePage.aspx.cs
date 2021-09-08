using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace burgerLeaders
{
    public partial class homePage : System.Web.UI.Page
    {
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ourMenu.aspx");

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("contactUS.aspx");

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("FAQ.aspx");

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {

        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            NewMethod();
        }

        private void NewMethod()
        {
            Random ran = new Random();
            int i = ran.Next(1,3);
            //Image1.ImageUrl = "~/images/" + i.ToString + ".jpg";
        }
    }
}