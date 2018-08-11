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
                var fName = Request.Cookies["memberInfo"]?["fName"];
                var lname = Request.Cookies["memberInfo"]?["lName"];
                var memName = Session["Name"].ToString();
                var memFee = double.Parse(Session["Price"].ToString());
                var memType = Session["Type"].ToString();
                var memStatus = Session["Status"].ToString();
                var memSdate = DateTime.Now.ToString("M/d/yyyy");
                var memEdate = DateTime.Now.AddDays(+30).ToString("M/d/yyyy");
                var memId = int.Parse(Session["member_id"].ToString());

                const string cmd1 = "INSERT INTO [dbo].[Membership] (member_id, membership_name, membership_type, membership_status, membership_start, membership_end) " +
                                    "VALUES ('@mem_id', '@mem_name', '@mem_type', '@mem_status', '@mem_sdate', '@mem_edate');";
                //Insert Membership info into Membership table
                using (var membershipTable = new SqlConnection(SqlDataSource2.ConnectionString))
                {
                    membershipTable.Open();
                    //Insert values into the membership table
                    try
                    {
                        var insertMembership = new SqlCommand(cmd1, membershipTable);
                        insertMembership.Parameters.AddWithValue("@mem_id", memId);
                        insertMembership.Parameters.AddWithValue("@mem_type", memType);
                        insertMembership.Parameters.AddWithValue("@mem_name", memName);
                        insertMembership.Parameters.AddWithValue("@mem_status", memStatus);
                        insertMembership.Parameters.AddWithValue("@mem_sdate", memSdate);
                        insertMembership.Parameters.AddWithValue("@mem_edate", memEdate);
                        insertMembership.ExecuteScalar();

                    }
                    catch (Exception ex)
                    {
                        Console.Write($"Insert Membership Log: {0}", ex.Message);
                    }
                    finally
                    {
                        membershipTable.Close();
                    }
                }
                //Order table sql connection
                using (var orderTable = new SqlConnection(SqlDataSource1.ConnectionString))
                {
                    orderTable.Open();
                    try
                    {
                        var insertOrder =
                            new SqlCommand("Insert_Order", orderTable) {CommandType = CommandType.StoredProcedure};
                        insertOrder.Parameters.AddWithValue("@member_id", memId);
                        insertOrder.Parameters.AddWithValue("@order_amount", memFee);
                        insertOrder.Parameters.AddWithValue("@order_date", memSdate);
                        insertOrder.Parameters.Add("@order_id", SqlDbType.Int, 0, "order_id");
                        insertOrder.Parameters["@order_id"].Direction = ParameterDirection.Output;
                        insertOrder.ExecuteNonQuery();
                        var orderNum = (int) insertOrder.Parameters["@order_id"].Value;

                        //(!orderRetrieved || !membershipInserted) return
                        lblOrdernum.Text = orderNum.ToString();
                        lblName.Text = fName + " " + lname;
                        lblStatus.Text = memStatus;
                        lblMname.Text = memName;
                        lblFee.Text = $"{memFee:C}";
                        lblStatus.Text = memStatus;
                        lblSdate.Text = memSdate;
                        lblEdate.Text = memEdate;
                        lblAmtdue.Text = lblFee.Text;
                    }
                    catch (Exception ex)
                    {
                        Console.Write($"Insert Order Log: {0}", ex.Message);
                    }
                    finally
                    {
                        orderTable.Close();
                    }

                }
            }
            else
            {
                Response.Redirect("SelectMembership.aspx");
            }
        }

    }
}