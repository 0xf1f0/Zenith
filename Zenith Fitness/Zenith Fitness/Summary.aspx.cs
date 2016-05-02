using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Zenith_Fitness
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["memberInfo"];
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
            HttpCookie cookie = new HttpCookie("memberInfo");
            cookie.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(cookie);
            Response.Redirect("Default.aspx");
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // Write new member information into the database
            HttpCookie cookie = Request.Cookies["memberInfo"];
            if (cookie != null)
            {
                int  member_id = 0;
                string fName = Request.Cookies["memberInfo"]["fName"];
                string lName = Request.Cookies["memberInfo"]["lName"];
                string mi = Request.Cookies["memberInfo"]["MI"];
                string email = Request.Cookies["memberInfo"]["Email"];
                string address = Request.Cookies["memberInfo"]["Address"];
                string city = Request.Cookies["memberInfo"]["City"];
                string state = Request.Cookies["memberInfo"]["State"];
                string zip = Request.Cookies["memberInfo"]["Zip"];
                string age = Request.Cookies["memberInfo"]["Age"];
                string gender = Request.Cookies["memberInfo"]["Gender"];
                string cellPhone = Request.Cookies["memberInfo"]["Cellphone"];
                string homePhone = Request.Cookies["memberInfo"]["Homephone"];
                string how = Request.Cookies["memberInfo"]["How"];
                string username = Request.Cookies["memberInfo"]["Username"];
                string pwd = Request.Cookies["memberInfo"]["Password"];

                try
                {
                    bool memberInserted = false;
                    //Member table sql connection
                    using (SqlConnection memberTable = new SqlConnection(SqlDataSource1.ConnectionString))
                    {
                        memberTable.Open();
                        //Insert values into the member table
                        using (SqlCommand insertMember = new SqlCommand("INSERT INTO [dbo].[Member] " + "(member_fname, member_lname, member_mi, " +
                        "member_email, member_address, member_city, member_state, member_zipcode, member_age, member_gender, member_cellphone, " +
                        "member_homephone, member_how,member_username,member_password) VALUES ('" + fName + "', '" + lName + "' , '" + mi + "', '" + email + "', '" + address + "', '" +
                        city + "', '" + state + "' , '" + zip + "', '" + age + "', '" + gender + "', '" + cellPhone + "', '" + homePhone + "', '" + how + "', '" + username + "', '" + pwd + "');"
                        + "select member_id=SCOPE_IDENTITY()", memberTable))
                        {
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
                            memberInserted = true;
                            member_id = int.Parse(insertMember.ExecuteScalar().ToString()); //member_id for new member

                        }
                        memberTable.Close();
                     
                    }

                    if (memberInserted)
                    {
                        Response.Redirect("Confirmation.aspx", false);
                        Session["member_id"] = member_id;
                    }
                    else
                    {
                        lblEx.Text = "Error inserting data into database";
                        lblEx.Visible = true;
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