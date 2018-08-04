using System;
using System.Web.UI;

namespace Zenith_Fitness
{
    public partial class WebForm11 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnPremium_Click(object sender, EventArgs e)
        {
            var price = 29.99;
            var type = "P";
            var status = "Inactive";
            var name = "Premium";

            Session["Price"] = price;
            Session["Type"] = type;
            Session["Status"] = status;
            Session["Name"] = name;
            Response.Redirect("Signup.aspx");
        }

        protected void btnStandard_Click(object sender, EventArgs e)
        {
            var price = 19.99;
            var type = "S";
            var status = "Inactive";
            var name = "Standard";

            Session["Price"] = price;
            Session["Type"] = type;
            Session["Status"] = status;
            Session["Name"] = name;
            Response.Redirect("Signup.aspx");
        }
    }
}