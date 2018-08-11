using System;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;

namespace Zenith_Fitness
{
    public partial class WebForm12 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var cookie = Request.Cookies["memberInfo"];
            if (cookie != null)
            {
                lblAmtdue.Text = "$" + Session["Price"];
                lblRecurfee.Text = lblAmtdue.Text;
            }
            else
            {
                Response.Redirect("SelectMembership.aspx");
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            //Clear all the cookies
            var cookie = new HttpCookie("memberInfo")
            {
                Expires = DateTime.Now.AddDays(-1),
                HttpOnly = true,
                Secure = true
            };
            Response.Cookies.Add(cookie);
            Response.Redirect("Default.aspx");
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // Write new member information into the database
            var cookie = Request.Cookies["memberInfo"];
            if (cookie == null) return;
            var fName = Request.Cookies["memberInfo"]?["fName"];
            var lName = Request.Cookies["memberInfo"]?["lName"];
            var mi = Request.Cookies["memberInfo"]?["MI"];
            var email = Request.Cookies["memberInfo"]?["Email"];
            var address = Request.Cookies["memberInfo"]?["Address"];
            var city = Request.Cookies["memberInfo"]?["City"];
            var state = Request.Cookies["memberInfo"]?["State"];
            var zip = Request.Cookies["memberInfo"]?["Zip"];
            var age = Request.Cookies["memberInfo"]?["Age"];
            var gender = Request.Cookies["memberInfo"]?["Gender"];
            var cellPhone = Request.Cookies["memberInfo"]?["Cellphone"];
            var homePhone = Request.Cookies["memberInfo"]?["Homephone"];
            var how = Request.Cookies["memberInfo"]?["How"];
            var username = Request.Cookies["memberInfo"]?["Username"];
            var pwd = Request.Cookies["memberInfo"]?["Password"];

            const string cmd = "INSERT INTO[dbo].[Member] (member_fname, member_lname, member_mi, member_email, member_address, member_city, member_state, member_zipcode, member_age, " +
                               "member_gender, member_cellphone, member_homephone, member_how,member_username,member_password) " +
                               "VALUES ('@fName', '@lName', '@mi', '@email', '@address', '@city', '@state', '@zip', '@age', '@gender', '@cellPhone', '@homePhone', '@how', '@username' , '@pwd')" +
                               "select member_id=SCOPE_IDENTITY();";
            var memberInserted = false;
            //Member table sql connection
            var memberId = 0;
            using (var memberTable = new SqlConnection(SqlDataSource1.ConnectionString))
            {
                memberTable.Open();
                //Insert values into the member table
                var insertMember = new SqlCommand(cmd, memberTable);
          
                insertMember.Parameters.AddWithValue("@fName", fName);
                insertMember.Parameters.AddWithValue("@lName", lName);
                insertMember.Parameters.AddWithValue("@MI", mi);
                insertMember.Parameters.AddWithValue("@Email", email);
                insertMember.Parameters.AddWithValue("@Address", address);
                insertMember.Parameters.AddWithValue("@City", city);
                insertMember.Parameters.AddWithValue("@State", state);
                insertMember.Parameters.AddWithValue("@Zip", zip);
                insertMember.Parameters.AddWithValue("@Age", age);
                insertMember.Parameters.AddWithValue("@Gender", gender);
                insertMember.Parameters.AddWithValue("@Cellphone", cellPhone);
                insertMember.Parameters.AddWithValue("@Homephone", homePhone);
                insertMember.Parameters.AddWithValue("@How", how);
                insertMember.Parameters.AddWithValue("@Username", username);
                insertMember.Parameters.AddWithValue("@Password", pwd);
                try
                {
                    memberId = int.Parse(insertMember.ExecuteScalar().ToString());
                    memberInserted = true;
                }
                catch (Exception ex)
                {
                    Console.Write($"Log: {0}", ex.Message);
                }
                finally
                {
                    memberTable.Close();
                    if (memberInserted)
                    {
                        Session["member_id"] = memberId;
                        Response.Redirect("Confirmation.aspx", false);
                    }
                    else
                    {
                        Console.WriteLine("Error inserting data into the database");
                        lblEx.Text = "Signup error, try again later";
                        lblEx.Visible = true;
                    }
                }
            }
        }
    }
}