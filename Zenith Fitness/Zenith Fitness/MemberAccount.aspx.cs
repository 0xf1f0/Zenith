using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Zenith_Fitness
{
    public partial class WebForm16 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
            HttpContext.Current.Response.Cache.SetNoServerCaching();
            HttpContext.Current.Response.Cache.SetNoStore();
            if (Session["Username"] != null)
            {
                currentUser.Text = Session["Username"].ToString();
                int mem_id = int.Parse(Session["mem_id"].ToString());

                using (SqlConnection userAcct = new SqlConnection(SqlDataSource1.ConnectionString))
                {
                    userAcct.Open();
                    // Retrieve member's membership information
                    using (SqlCommand checkUser = new SqlCommand("SELECT [member_id] ,[membership_name] " +
                    ",[membership_status], [membership_start], [membership_end] FROM[dbo].[Membership] WHERE [member_id] = '" + mem_id + "'", userAcct))
                    {
                        SqlDataReader reader = checkUser.ExecuteReader();
                        while (reader.Read())
                        {
                            lblPlan.Text = reader["membership_name"].ToString();
                            lblStatus.Text = reader["membership_status"].ToString();
                            lblStart.Text = reader["membership_start"].ToString();
                            lblEnd.Text = reader["membership_end"].ToString();
                        }
                    }
                }
            }
            else
            {
                Response.Redirect("MemberLogin.aspx");
            }
        }

        protected void lbSignout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("MemberLogin.aspx");
        }
    }
}