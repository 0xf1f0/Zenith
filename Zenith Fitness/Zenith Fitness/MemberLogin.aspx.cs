using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace Zenith_Fitness
{
    public partial class WebForm7 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var user = tbxUser.Text;
            var pwd = tbxPwd.Text;

            Validate("Login");
            if (!Page.IsValid) return;
            try
            {
                using (var userLogin = new SqlConnection(SqlDataSource1.ConnectionString))
                {
                    userLogin.Open();

                    // Verify that the Username and Password exist [Exact]
                    var userFound = false;
                    using (var checkUser = new SqlCommand("Select count(*) from [dbo].Member where member_username='" +
                                                          user + "'" +
                                                          "AND member_password='" + pwd + "'" +
                                                          " COLLATE SQL_Latin1_General_CP1_CS_AS", userLogin))
                    {
                        checkUser.Parameters.AddWithValue("@Username", user);
                        checkUser.Parameters.AddWithValue("@Password", pwd);

                        userFound = (int) checkUser.ExecuteScalar() > 0;
                    }

                    if (userFound)
                    {
                        Session["Username"] = user;
                        Response.Redirect("MemberAccount.aspx");
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

            //finally
            //{
            //    int memId;
            //    using (var getUser = new SqlConnection(SqlDataSource1.ConnectionString))
            //    {
            //        getUser.Open();
            //        using (var getId =
            //            new SqlCommand("Select member_id from dbo.[Member] where member_username = '" + user + "'",
            //                getUser))
            //        {
            //            memId = Convert.ToInt32(getId.ExecuteScalar());
            //        }

            //        getUser.Close();
            //    }

            //    Session["mem_id"] = memId;
            //}
        }
    }
}