using System;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;

namespace Zenith_Fitness
{
    public partial class WebForm15 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var user = tbxUser.Text;
            var pwd = tbxPwd.Text;

            const string cmd1 = "Select count(*) from [dbo].Admin where admin_username = @Username AND admin_password = @Password COLLATE SQL_Latin1_General_CP1_CS_AS;";
            const string cmd2 = "Select admin_id from dbo.[Admin] where admin_username = @Username1;";

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
                    var userFound = (int)checkUser.ExecuteScalar() > 0;

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
                    Console.WriteLine(ex.Message);
                }
                finally
                {
                    userLogin.Close();
                }
            }
        }
    }
}