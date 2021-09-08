using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace burgerLeaders
{
    public partial class contactUS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage msg = new MailMessage();
                msg.To.Add("saraalghamdi@gmail.com");

                msg.From = new MailAddress(TextBox3.Text);
                msg.Body = TextBox2.Text;
                SmtpClient client = new SmtpClient();
                client.Host = "smtp.gmail.com";
                client.Send(msg);


                client.Send(msg);

                //Display some feedback to the user to let them know it was sent
                Label4.Text = "Your message was sent!";


            }
            catch
            {
                //If the message failed at some point, let the user know
                Label4.Text = "Your message failed to send, please try again.";
            }


        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
    }
