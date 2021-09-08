using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace burgerLeaders
{
    public partial class addtocart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (Session["username"] == null)
            {
                Response.Redirect("loginPage.aspx");
            }
            else
            {
                Label6.Text = "Hello " + Session["username"].ToString();
                LinkButton2.Visible = true;
                LinkButton1.Visible = false;

            }
            if (!IsPostBack)
            {

                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("productid");
                dt.Columns.Add("productname");
                dt.Columns.Add("quantity");
                dt.Columns.Add("price");
                dt.Columns.Add("totalprice");
                dt.Columns.Add("productimage");


                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {

                        dr = dt.NewRow();
                        String mycon = "Data Source=DESKTOP-FDNKUNE\\SQLEXPRESS;Initial Catalog=burgerLeaders;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from productdetail where productid=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["productid"] = ds.Tables[0].Rows[0]["productid"].ToString();
                        dr["productname"] = ds.Tables[0].Rows[0]["productname"].ToString();
                        dr["productimage"] = ds.Tables[0].Rows[0]["productimage"].ToString();
                        dr["quantity"] = 1;
                        dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;
                        savecartdetail(1, ds.Tables[0].Rows[0]["productid"].ToString(), ds.Tables[0].Rows[0]["productname"].ToString(), ds.Tables[0].Rows[0]["productimage"].ToString(), "1", ds.Tables[0].Rows[0]["price"].ToString(), totalprice.ToString());
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("addtocart.aspx");

                    }
                    else
                    {

                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        String mycon = "Data Source=DESKTOP-FDNKUNE\\SQLEXPRESS;Initial Catalog=burgerLeaders;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from productdetail where productid=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = sr + 1;
                        dr["productid"] = ds.Tables[0].Rows[0]["productid"].ToString();
                        dr["productname"] = ds.Tables[0].Rows[0]["productname"].ToString();
                        dr["productimage"] = ds.Tables[0].Rows[0]["productimage"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                        dr["price"] = ds.Tables[0].Rows[0]["price"].ToString(); //productprice ??
                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["price"].ToString());
                        Response.Write(price);
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;
                        savecartdetail(sr + 1, ds.Tables[0].Rows[0]["productid"].ToString(), ds.Tables[0].Rows[0]["productname"].ToString(), ds.Tables[0].Rows[0]["productimage"].ToString(), "1", ds.Tables[0].Rows[0]["price"].ToString(), totalprice.ToString());
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("addtocart.aspx");

                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();

                    }


                }
                Label3.Text = GridView1.Rows.Count.ToString();

            }

        } //???????????????????


        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int gtotal = 0;
            while (i < nrow)
            {
                gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());

                i = i + 1;
            }
            return gtotal;
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            {
                DataTable dt = new DataTable();
                dt = (DataTable)Session["buyitems"];
                for (int i = 0; i <= dt.Rows.Count - 1; i++)
                {
                    int sr;
                    int srl;
                    string qdata;
                    string dtdata;
                    sr = NewMethod(dt, i);
                    TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                    qdata = cell.Text;
                    dtdata = sr.ToString();
                    srl = Convert.ToInt32(qdata);
                    if (sr == srl)
                    {
                        dt.Rows[i].Delete();
                        dt.AcceptChanges();
                        break;
                    }
                }
                for (int i = 1; i <= dt.Rows.Count; i++)
                {
                    dt.Rows[i - 1]["sno"] = i;
                    dt.AcceptChanges();
                }
                Session["buyitems"] = dt;
                Response.Redirect("addtocart.aspx");

            }


        }
        private void clearsavedcart()
        {
            String mycon = "Data Source=DESKTOP-FDNKUNE\\SQLEXPRESS;Initial Catalog=burgerLeaders;Integrated Security=True";

            String updatedata = "delete from savedcartdetails where username='" + Session["username"].ToString() + "'";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();//??
            Response.Redirect("ourMenu.aspx");
        }

        private void savecartdetail(int sno, String productid, String Productname, String productimage, String quantity, String price, String totalprice)
        {
            string query = "insert into savedcartdetails(sno,productid,productname,productimage,quantity,price,totalprice,username) values(" + sno + ",'" + productid + "','" + Productname + "','" + productimage + "','" + quantity + "','" + price + "','" + totalprice + "','" + Session["username"].ToString() + "')";

            String mycon = "Data Source=DESKTOP-FDNKUNE\\SQLEXPRESS;Initial Catalog=burgerLeaders;Integrated Security=true"; 
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery(); // ?????????????
        }

        private static int NewMethod(DataTable dt, int i)
        {
            return Convert.ToInt32(dt.Rows[i]["sno"].ToString());
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("checkout.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("loginPage.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("ourMenu.aspx");

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["buyitems"] = null;
            clearsavedcart();

        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}
