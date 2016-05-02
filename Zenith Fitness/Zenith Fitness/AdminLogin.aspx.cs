using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Zenith_Fitness
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string user = tbxUser.Text;
            string pwd = tbxPwd.Text;

            bool userFound = false;

            Validate("Login");
            if (Page.IsValid)
            {
                try
                {
                    using (SqlConnection userLogin = new SqlConnection(SqlDataSource1.ConnectionString))
                    {
                        userLogin.Open();

                        // Verify that the Username and Password exist [Exact]
                        using (SqlCommand checkUser = new SqlCommand("Select count(*) from [dbo].Admin where admin_username='" + user + "'" +
                            "AND admin_password='" + pwd + "'" + " COLLATE SQL_Latin1_General_CP1_CS_AS", userLogin))
                        {
                            checkUser.Parameters.AddWithValue("@Username", user);
                            checkUser.Parameters.AddWithValue("@Password", pwd);
                            //compare the return value from checkAdmincmd; True >= 1, False < 1
                            userFound = ((int)checkUser.ExecuteScalar() > 0);
                        }
                        if (userFound)
                        {
                            HttpCookie login = new HttpCookie("userInfo");
                            login["Username"] = user;
                            login.Expires = DateTime.Now.AddDays(1);
                            Response.Cookies.Add(login);
                            Response.Redirect("Test.aspx");
                        }
                        else
                        {
                            lblEx.Text = "Invalid username and/or password";
                            lblEx.Visible = true;
                        }

                        userLogin.Close();
                    }
                }

                catch (Exception ex)
                {
                    lblEx.Text = ex.Message;
                    lblEx.Visible = true;
                }

            }
        }
    }
}