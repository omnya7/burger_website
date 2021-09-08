using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


  namespace burgerLeaders
{
    public partial class loginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["username"] != null && Request.Cookies["password"] != null)
                {
                    usernameTextBox.Text = Request.Cookies["username"].Value;
                    passwordTextBox.Attributes["value"] = Request.Cookies["password"].Value;
                }
            }
            Random rand = new Random();
            int num = rand.Next(6, 8);
            string capatcha = "";
            int tot1 = 0;

            do
            {
                int chr = rand.Next(48, 123);
                if ((chr >= 48 && chr <= 57) || (chr >= 65 && chr <= 90) || (chr >= 97 && chr <= 122))
                {
                    capatcha = capatcha + (char)chr;
                    tot1++;
                    if (tot1 == num)
                        break;
                    {

                    }

                }
            } while (true);
            Label3.Text = capatcha;


        }

        protected void Login_Button_Click(object sender, EventArgs e)
        {
          String maiconn = "Data Source=DESKTOP-FDNKUNE\\SQLEXPRESS;Initial Catalog=burgerLeaders;Integrated Security=True";
            SqlConnection sqlconn = new SqlConnection(maiconn);
            SqlCommand sqlcomm = new SqlCommand("select * from [dbo].[LoginDetail] where username=@username and password=@password", sqlconn);
            sqlcomm.Parameters.AddWithValue("username", usernameTextBox.Text); sqlcomm.Parameters.AddWithValue("password", passwordTextBox.Text); 
            SqlDataAdapter sda = new SqlDataAdapter(sqlcomm); 
            DataTable dt = new DataTable(); 
            sda.Fill(dt); 
            sqlconn.Open(); 
            sqlcomm.ExecuteNonQuery(); 
            sqlconn.Close();
            if (dt.Rows.Count > 0) {
                if (CheckBox1.Checked) {
                    Response.Cookies["username"].Value = usernameTextBox.Text;
                    Response.Cookies["password"].Value = passwordTextBox.Text; Response.Cookies["username"].Expires = DateTime.Now.AddMinutes(1);
                    Response.Cookies["password"].Expires = DateTime.Now.AddMinutes(1); }
                else { 
                    Response.Cookies["username"].Expires = DateTime.Now.AddMinutes(-1); } 
                Session["username"] = usernameTextBox.Text;
                Response.Redirect("loginPage.aspx"); 
                Session.RemoveAll(); }
            else {
                errorName.Text = "username or password are wrong";
            } 
        
            //View --> Server Explorer --> select database name --> go to it is properties --> copy connection string 
            //HINT: should add double back slash
            String mycon = "Data Source=DESKTOP-FDNKUNE\\SQLEXPRESS;Initial Catalog=burgerLeaders;Integrated Security=True";
        SqlConnection scon = new SqlConnection(mycon);
        //الاستعلام يرجعلي بيانات اسم المستخدم
        String myquery = "select * from LoginDetail where username='" + usernameTextBox.Text + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
            cmd.Connection = scon;
            // عندما اريد ان اقوم بجلب بيانات من قاعدة البيانات استخدم الداتاأدابتر لكتابةالاستعلامات 
            // واقوم بوضع النتائج فى الداتاست
            SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
            //DataTable هي جدول يتكون من اعمدة وصفوف
            //DataSet هي مجموعه جداول(DataTables)
            DataSet ds = new DataSet();
        //هنا معناها نتائج الاستعلام حطها داخل الداتاست
        da.Fill(ds);
            String uname;
        String pass;
            //هنا يتأكد من وجود بيانات للمستخدم
            if (ds.Tables[0].Rows.Count > 0)
            {
                //أسترجع اسم المستخدم
                uname = ds.Tables[0].Rows[0]["username"].ToString();
        //استرجعالباسوورد
        pass = ds.Tables[0].Rows[0]["password"].ToString();
        //قفل الاتصال
        scon.Close();
                //يتحقق من بيانات الدخول
                if (uname == usernameTextBox.Text && pass == passwordTextBox.Text)
                {
                    //هنا أخزن اسم المستخدم في المتغير على مستوى السيشن
                    Session["username"] = uname;
                    Session["buyitems"] = null;
                    fillsavedCart();
        Response.Redirect("signupPage.aspx");
                }
                else
                {
                    errorName.Visible = true;
                    errorName.Text = "Invalid Username or Password - Relogin with Correct Username Password";
                }
            }
            else
{
    errorName.Text = "Username does not exist";
}//End else
        }//End Login_Button_Click method

        private void fillsavedCart()
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
    String mycon = "Data Source=DESKTOP-FDNKUNE\\SQLEXPRESS;Initial Catalog=burgerLeaders;Integrated Security=True";
    SqlConnection scon = new SqlConnection(mycon);
    String myquery = "select * from SavedCartDetails where username='" + Session["username"].ToString() + "'";
    SqlCommand cmd = new SqlCommand();
    cmd.CommandText = myquery;
    cmd.Connection = scon;
    SqlDataAdapter da = new SqlDataAdapter();
    da.SelectCommand = cmd;
    DataSet ds = new DataSet();
    da.Fill(ds); //??
    if (ds.Tables[0].Rows.Count > 0)
    {
        int i = 0;
        int counter = ds.Tables[0].Rows.Count;
        while (i < counter)
        {
            dr = dt.NewRow();
            dr["sno"] = i + 1;
            dr["productid"] = ds.Tables[0].Rows[i]["productid"].ToString();
            dr["productname"] = ds.Tables[0].Rows[i]["productname"].ToString();
            dr["productimage"] = ds.Tables[0].Rows[i]["productimage"].ToString();
            dr["quantity"] = "1";
            dr["price"] = ds.Tables[0].Rows[i]["price"].ToString();
            int price1 = Convert.ToInt32(ds.Tables[0].Rows[i]["price"].ToString());
            int quantity1 = Convert.ToInt32(ds.Tables[0].Rows[i]["quantity"].ToString());
            int totalprice1 = price1 * quantity1;
            dr["totalprice"] = totalprice1;
            dt.Rows.Add(dr);
            i = i + 1;
        }
    }
    else
    {
        Session["buyitems"] = null;
    }
    Session["buyitems"] = dt;
}

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd;
            SqlConnection con;
            SqlDataAdapter sda;
            con = new SqlConnection("Data Source=DESKTOP-FDNKUNE\\SQLEXPRESS;Initial Catalog=burgerLeaders;Integrated Security=True");

            /*
 FIRST THING YOU HAVE TO WRITE COMMAND TO RETRIEVE DATA FROM YOUR DB \
 THEN PLACE IT INTO DATA ADAPTER THEN PLACE IT INTO DATASET
 */
            //open connection 
            con.Open();
            //writing a query command to see if the given username and password are actually exists or not 
            String query = "Select * from registertable where name='" + usernameTextBox.Text.Trim() + "' and password = '" + passwordTextBox.Text.Trim() + "'";
            //data adapter
            sda = new SqlDataAdapter(query, con);
            //new table 
            DataSet ds1 = new DataSet();
            //fill the table 
            sda.Fill(ds1);
            String uname;
            String pass;
            if (ds1.Tables[0].Rows.Count > 0)
            {
                uname = ds1.Tables[0].Rows[0]["name"].ToString();
                //استرجعالباسوورد
                pass = ds1.Tables[0].Rows[0]["password"].ToString();
                Session["username"] = uname;
                Session["buyitems"] = null;
                fillsavedCart();
             
                //when user clicks button will direct him to home page 
                Response.Redirect("homePage.aspx");
            }
            else
            {

                errorName.Text = "Invalid Username or Password - Relogin with Correct Username Password";
            }
            con.Close();

            if (Label3.Text == TextBox1.Text)
            {
                Label4.Text = "capatcha is correct";   //("capatcha is correct");
            }
            else
            {
                Label4.Text = "capatcha is not correct ..... please try again!";
                Response.Redirect(Request.RawUrl);

            }

           

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }//End class 
}//End namespace CCIS422_New