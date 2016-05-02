using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace Zenith_Fitness
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            Validate("contactForm");
            if (Page.IsValid)
            {
                bool msgSent = false;
                try
                {
                    SmtpClient smtp = new SmtpClient();
                    MailMessage mail = new MailMessage();
                    mail.From = new MailAddress(email.Text);
                    mail.To.Add("zfit411@gmail.com");
                    mail.Subject = ("Question from ZenithFit ASP.NET");
                    mail.IsBodyHtml = true;
                    mail.Body = "From: " + fName.Text + " " + lName.Text + "<br />" +
                                "Email: " + email.Text + "<br />" +
                                "Phone Number: " + phone.Text + "<br />" +
                                "Message: " + message.Text + "<br />";

                    smtp.Send(mail);
                    mail.DeliveryNotificationOptions = System.Net.Mail.DeliveryNotificationOptions.OnSuccess;
                    msgSent = true;
                    Response.Redirect("MessageSent.aspx");
                }

                catch (SmtpException ex)
                {
                    msgSent = false;
                    ex.ToString();
                    lblMsg.Text = "Error sending message, please try again.";
                    lblMsg.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            //Clear all text boxes on the form
            fName.Text = string.Empty;
            lName.Text = string.Empty;
            email.Text = string.Empty;
            phone.Text = string.Empty;
            message.Text = string.Empty;
        }
    }
}