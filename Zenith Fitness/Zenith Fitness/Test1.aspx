<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Test1.aspx.cs" Inherits="Zenith_Fitness.WebForm13" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <br />
    <div class="box-shadow" style="left: 0px; top: 0px; width: auto; height: auto; margin-top: 130px; margin-bottom: 400px">
        <br />
        <h2 style="text-align: center; color: green;">Order Confirmation</h2>
        <hr style="color: green;" />
        <br />
        <table id="confirmationTable" style="width: 90%; margin-left: 5%">

            <tr>
                <td style="width: auto">
                    <h2 class="color-1">Order Number: 
                    <asp:Label ID="lblOrdernum" runat="server" Text="Order Number" ForeColor="Black"></asp:Label>
                    </h2>
                </td>
                <td style="width: auto">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Zenith-FitnessConnectionString %>" SelectCommand="Insert_Order" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:Parameter Direction="InputOutput" Name="order_id" Type="Int32" />
                            <asp:Parameter Name="order_amount" Type="Decimal" />
                            <asp:Parameter DbType="Date" Name="order_date" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <h2 class="color-1">Member's Name: 
                    <asp:Label ID="lblName" runat="server" Text="New Member's Name" ForeColor="Black"></asp:Label>
                    </h2>

                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Zenith-FitnessConnectionString %>" SelectCommand="SELECT * FROM [Membership]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <h2 class="color-1">Membership Name:  
                    <asp:Label ID="lblMname" runat="server" Text="Membership's Type" ForeColor="Black"></asp:Label>
                    </h2> </td>

                <td>
                    &nbsp;</td>

            </tr>
            <tr>
                <td>
                    <h2 class="color-1">Membership Status: 
                    <asp:Label ID="lblStatus" runat="server" Text="Membership's Status" ForeColor="Black"></asp:Label>
                    </h2>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <h2 class="color-1">Monthly Fee: 
                    <asp:Label ID="lblFee" runat="server" Text="Monthly Fee" ForeColor="Black"></asp:Label>
                    </h2>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <h2 class="color-1">Membership Start Date: 
                    <asp:Label ID="lblSdate" runat="server" Text="Membership Start Date" ForeColor="Black"></asp:Label>
                    </h2>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <h2 class="color-1">Membership End Date: 
                    <asp:Label ID="lblEdate" runat="server" Text="Membership End Date" ForeColor="Black"></asp:Label>
                    </h2>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <h2 class="color-1">Amount Due Today:  
                    <asp:Label ID="lblAmtdue" runat="server" Text="Amount Due Today" ForeColor="Black"></asp:Label>
                    </h2>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblEx" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <h3 style="color: green; text-align: center">Thank you for signing up for a Zenith Fitness membership.</h3>
        <h3 style="color: red; text-align: center">Please bring this receipt and your first payment with you to the fitness center in order to have your membership activated.</h3>

        <br />
    </div>
</asp:Content>
