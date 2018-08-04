using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace Zenith_Fitness
{
    public partial class WebForm14 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var cookie = Request.Cookies["memberInfo"];
            if (cookie != null || Session["Price"] != null && Session["Type"] != null && Session["Status"] != null &&
                Session["Name"] != null && Session["member_id"] != null)
            {
                int orderNum;
                var fName = Request.Cookies["memberInfo"]["fName"];
                var Lname = Request.Cookies["memberInfo"]["lName"];
                var mem_name = Session["Name"].ToString();
                var mem_fee = double.Parse(Session["Price"].ToString());
                var mem_type = Session["Type"].ToString();
                var mem_status = Session["Status"].ToString();
                var mem_Sdate = DateTime.Now.ToString("M/d/yyyy");
                var mem_Edate = DateTime.Now.AddDays(+30).ToString("M/d/yyyy");
                var mem_id = int.Parse(Session["member_id"].ToString());

                try
                {
                    var orderRetrieved = false;
                    var membershipInserted = false;

                    //**********Insert Membership info into Membership table**********//
                    using (var membershipTable = new SqlConnection(SqlDataSource2.ConnectionString))
                    {
                        membershipTable.Open();
                        //Insert values into the membership table
                        using (var insertMembership = new SqlCommand(
                            "INSERT INTO [dbo].[Membership] (member_id, membership_name, membership_type, " +
                            "membership_status, membership_start, membership_end) VALUES ('" + mem_id + "', '" +
                            mem_name + "' ,'" + mem_type + "' , '" + mem_status + "', '" + mem_Sdate + "', '" +
                            mem_Edate + "')", membershipTable))
                        {
                            insertMembership.Parameters.AddWithValue("@mem_id", mem_id);
                            insertMembership.Parameters.AddWithValue("@mem_type", mem_type);
                            insertMembership.Parameters.AddWithValue("@mem_name", mem_name);
                            insertMembership.Parameters.AddWithValue("@mem_status", mem_status);
                            insertMembership.Parameters.AddWithValue("@mem_sdate", mem_Sdate);
                            insertMembership.Parameters.AddWithValue("@mem_edate", mem_Edate);
                            insertMembership.ExecuteScalar();
                            membershipInserted = true;
                        }

                        membershipTable.Close();
                    }

                    //Order table sql connection
                    using (var orderTable = new SqlConnection(SqlDataSource1.ConnectionString))
                    {
                        orderTable.Open();
                        using (var insertOrder = new SqlCommand("Insert_Order", orderTable))
                        {
                            insertOrder.CommandType = CommandType.StoredProcedure;
                            insertOrder.Parameters.AddWithValue("@member_id", mem_id);
                            insertOrder.Parameters.AddWithValue("@order_amount", mem_fee);
                            insertOrder.Parameters.AddWithValue("@order_date", mem_Sdate);
                            insertOrder.Parameters.Add("@order_id", SqlDbType.Int, 0, "order_id");
                            insertOrder.Parameters["@order_id"].Direction = ParameterDirection.Output;
                            insertOrder.ExecuteNonQuery();
                            orderNum = (int) insertOrder.Parameters["@order_id"].Value;
                            orderRetrieved = true;
                        }

                        orderTable.Close();
                    }

                    if (orderRetrieved && membershipInserted)
                    {
                        lblOrdernum.Text = orderNum.ToString();
                        lblName.Text = fName + " " + Lname;
                        lblStatus.Text = mem_status;
                        lblMname.Text = mem_name;
                        lblFee.Text = "$" + mem_fee;
                        lblStatus.Text = mem_status;
                        lblSdate.Text = mem_Sdate;
                        lblEdate.Text = mem_Edate;
                        lblAmtdue.Text = lblFee.Text;
                    }
                }

                catch (Exception ex)
                {
                    lblEx.Text = ex.Message;
                    lblEx.Visible = true;
                }
            }
            else
            {
                Response.Redirect("SelectMembership.aspx");
            }
        }
    }
}