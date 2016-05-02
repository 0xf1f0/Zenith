using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Zenith_Fitness
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Price"] == null)
            {
                Response.Redirect("SelectMembership.aspx");
            }
        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            try
            {
                
                using (SqlConnection createUser = new SqlConnection(SqlDataSource2.ConnectionString))
                {
                    bool userExists = false;    //Is the username already in database?
                    createUser.Open(); //Open the connection

                    // Check if the username exists in database 
                    using (SqlCommand checkUsercmd = new SqlCommand("SELECT COUNT(*) " +
                        "FROM [dbo].[Member] WHERE [member_username] = '" + tbxUsername.Text + "'", createUser))
                    {
                        //Sql parameters to prevent sql injection
                        checkUsercmd.Parameters.AddWithValue("@Username", tbxUsername.Text);
                        //compare the return value from checkUsercmd; False >= , True = 0
                        userExists = (int)checkUsercmd.ExecuteScalar() > 0;
                    }

                    if (userExists)
                    {
                        lblUsernameError.Text = "Username " + '"' + tbxUsername.Text + '"' + " is unavailable";
                        lblUsernameError.Visible = true;
                    }
                    else
                    {
                        // Insert member info into member table
                        Validate("memberInfo");
                        if (Page.IsValid)
                        {
                            // Insert member info into member table
                            HttpCookie cookie = new HttpCookie("memberInfo");
                            //cookie.Values.Add("name", name);
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
                        createUser.Close();
                    }
                }
                
            }

            catch (Exception ex)
            {
                lblUsernameError.Text = ex.Message;
                lblUsernameError.Visible = true;
            }
        }
    }
}