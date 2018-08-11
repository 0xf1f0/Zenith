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
            const string cmd1 = "Select count(*) from [dbo].Member where member_username = @Username AND member_password = @Password COLLATE SQL_Latin1_General_CP1_CS_AS;";
            const string cmd2 = "Select member_id from dbo.[Member] where member_username = @Username1;";

            Validate("Login");
            if (!Page.IsValid) return;
            using (var userLogin = new SqlConnection(SqlDataSource1.ConnectionString))
            {

                // Verify that the Username and Password exist [Exact]
                var checkUser = new SqlCommand(cmd1, userLogin);
                checkUser.Parameters.AddWithValue("@Username", user);
                checkUser.Parameters.AddWithValue("@Password", pwd);
                try
                {
                    userLogin.Open();
                    var userFound = (int) checkUser.ExecuteScalar() > 0;

                    if (userFound)
                    {
                        Session["Username"] = user;
                        var getId = new SqlCommand(cmd2, userLogin);
                        getId.Parameters.AddWithValue("@Username1", user);
                        var memId = Convert.ToInt32(getId.ExecuteScalar());
                        Session["mem_id"] = memId;
                        Response.Redirect("MemberAccount.aspx");
                    }
                    else
                    {
                        lblEx.Text = "Invalid username and/or password";
                        lblEx.Visible = true;
                    }
                }

                catch (Exception ex)
                {
                    lblEx.Text = ex.Message;
                    lblEx.Visible = true;
                }
                finally
                {
                    userLogin.Close();
                }
            }
        }
    }
}