using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Zenith_Fitness
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPremium_Click(object sender, EventArgs e)
        {
            double price = 29.99;
            string type = "P";
            string status = "Inactive";
            string name = "Premium";

            Session["Price"] = price;
            Session["Type"] = type;
            Session["Status"] = status;
            Session["Name"] = name;
            Response.Redirect("Signup.aspx");
        }

        protected void btnStandard_Click(object sender, EventArgs e)
        {
            double price = 19.99;
            string type = "S";
            string status = "Inactive";
            string name = "Standard";

            Session["Price"] = price;
            Session["Type"] = type;
            Session["Status"] = status;
            Session["Name"] = name;
            Response.Redirect("Signup.aspx");
        }
    }
}