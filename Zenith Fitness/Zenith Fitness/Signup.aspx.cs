using System;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;

namespace Zenith_Fitness
{
    public partial class WebForm6 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Price"] == null) Response.Redirect("SelectMembership.aspx");
        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            var username = tbxUsername.Text;
            const string cmd = "SELECT COUNT(*) FROM [dbo].[Member] WHERE [member_username] =  @username;";

            using (var createUser = new SqlConnection(SqlDataSource2.ConnectionString))
            {
                createUser.Open(); //Open the connection

                // Check if the username exists in database 
                try
                {
                    var checkUsercmd = new SqlCommand(cmd, createUser);
                    //Sql parameters to prevent sql injection
                    checkUsercmd.Parameters.AddWithValue("@Username", username);
                    //compare the return value from checkUsercmd; False >= , True = 0
                    var userExists = (int) checkUsercmd.ExecuteScalar() > 0;


                    if (userExists)
                    {
                        lblUsernameError.Text = $"Username, {username} is not available";
                        lblUsernameError.Visible = true;
                    }
                    else
                    {
                        // Insert member info into member table
                        Validate("memberInfo");
                        if (!Page.IsValid) return;
                        // Insert member info into member table
                        var cookie = new HttpCookie("memberInfo")
                        {
                            HttpOnly = true,
                            Secure = true
                        };
                        cookie.Values.Add("fName", tbxFname.Text);
                        cookie.Values.Add("lName", tbxLname.Text);
                        cookie.Values.Add("MI", tbxMI.Text);
                        cookie.Values.Add("Email", tbxEmail.Text);
                        cookie.Values.Add("Address", tbxAddress.Text);
                        cookie.Values.Add("City", tbxCity.Text);
                        cookie.Values.Add("State", ddlState.Text);
                        cookie.Values.Add("Zip", tbxZip.Text);
                        cookie.Values.Add("Age", tbxAge.Text);
                        cookie.Values.Add("Gender", ddlGender.Text);
                        cookie.Values.Add("Cellphone", tbxCell.Text);
                        cookie.Values.Add("Homephone", tbxHome.Text);
                        cookie.Values.Add("How", ddlHow.Text);
                        cookie.Values.Add("Username", tbxUsername.Text);
                        cookie.Values.Add("Password", tbxPwd1.Text);
                        cookie.Expires = DateTime.Now.AddDays(1);
                        Response.Cookies.Add(cookie);
                        Response.Redirect("Summary.aspx");
                    }
                }

                catch (Exception ex)
                {
                    Console.Write($"Log: {0}", ex.Message);
                }
                finally
                {
                    createUser.Close();
                }
            }
        }
    }
}