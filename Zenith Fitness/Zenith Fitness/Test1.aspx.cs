using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Zenith_Fitness
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["memberInfo"];
            if (cookie != null || Session["Price"] != null || Session["Type"] != null || Session["Status"] != null || Session["Name"] != null)
            {
                int orderNum;
                string fName = Request.Cookies["memberInfo"]["fName"];
                string Lname = Request.Cookies["memberInfo"]["lName"];
                string mem_name = Session["Name"].ToString();
                double mem_fee = double.Parse(Session["Price"].ToString());
                string mem_status = Session["Status"].ToString();
                string mem_Sdate = DateTime.Now.ToString("M/d/yyyy");
                string mem_Edate = DateTime.Now.AddDays(+30).ToString("M/d/yyyy");

                try
                {
                    bool orderRetrieved = false;
                    //Member table sql connection
                    using (SqlConnection orderTable = new SqlConnection(SqlDataSource1.ConnectionString))
                    {
                        orderTable.Open();
                        using (SqlCommand insertOrder = new SqlCommand("Insert_Order", orderTable))
                        {
                            insertOrder.CommandType = CommandType.StoredProcedure;
                            insertOrder.Parameters.AddWithValue("@order_amount", mem_fee);
                            insertOrder.Parameters.AddWithValue("@order_date", mem_Sdate);
                            insertOrder.Parameters.Add("@order_id", SqlDbType.Int, 0, "order_id");
                            insertOrder.Parameters["@order_id"].Direction = ParameterDirection.Output;
                            insertOrder.ExecuteNonQuery();
                            orderNum = (int)insertOrder.Parameters["@order_id"].Value;
                            orderRetrieved = true;
                        }
                        orderTable.Close();
                        //*******************************************//
                    }

                    if (orderRetrieved)
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
                Response.Redirect("SelectMembership.aspx");
        }
    }
}