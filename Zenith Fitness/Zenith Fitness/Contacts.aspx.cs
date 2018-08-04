using System;
using System.Drawing;
using System.Net.Mail;
using System.Web.UI;

namespace Zenith_Fitness
{
    public partial class WebForm4 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            Validate("contactForm");
            if (!Page.IsValid) return;
            try
            {
                var smtp = new SmtpClient();
                var mail = new MailMessage
                {
                    From = new MailAddress(email.Text)
                };
                mail.To.Add("youremail@gmail.com");
                mail.Subject = "Question from ZenithFit ASP.NET";
                mail.IsBodyHtml = true;
                mail.Body = "From: " + fName.Text + " " + lName.Text + "<br />" +
                            "Email: " + email.Text + "<br />" +
                            "Phone Number: " + phone.Text + "<br />" +
                            "Message: " + message.Text + "<br />";

                smtp.Send(mail);
                mail.DeliveryNotificationOptions = DeliveryNotificationOptions.OnSuccess;
                Response.Redirect("MessageSent.aspx");
            }

            catch (SmtpException ex)
            {
                Console.Write(ex.Message);
                lblMsg.Text = "Error sending message, please try again.";
                lblMsg.ForeColor = Color.Red;
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