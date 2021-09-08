using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

namespace burgerLeaders
{
    public partial class ourMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            




        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "addtocart")
            {
                DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
                Response.Redirect("addtocart.aspx?id=" + e.CommandArgument.ToString() +
                    "&quantity=" + dlist.SelectedItem.ToString());

            }


        }






        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

      

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}