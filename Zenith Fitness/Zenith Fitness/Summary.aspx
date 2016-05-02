<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Summary.aspx.cs" Inherits="Zenith_Fitness.WebForm12" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NavContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <div class="box-shadow" style="left: 0px; top: 0px; width: auto; height: auto; margin-top: 130px;margin-bottom:400px">
        <br />
        <h2 style="text-align: center; color: green">Order Summary</h2>
        <br />
        <table id="summaryTable" style="width: 60%; margin-left: 20%">
            <tr>
                <td style="width:300px; height: 25px" colspan="2"><h3 style="background-color: #01A5CA; color:white">Membership Description</h3>
                </td>
                <td style="height: 25px"><h3 style="background-color: #01A5CA; color:white"">Price</h3>
                </td>
            </tr>
            <tr>
                <td style="height: 25px" colspan="2">
                    &nbsp;</td>
                <td style="height: 25px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="height: 25px" colspan="2"><h3>Total Due Today:</h3>
                    </td>
                <td style="height: 25px">
                    <asp:Label ID="lblAmtdue" runat="server" Height="25px" Text="Label" Font-Size="Large" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="height: 25px" colspan="2"><h3>Total Recurring Monthly Fee:</h3></td>
                <td style="height: 25px">
                    <asp:Label ID="lblRecurfee" runat="server" Height="25px" Text="Label" Font-Size="Large" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="height: 25px" colspan="2">&nbsp;</td>
                <td style="height: 25px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align:center" colspan="3">
                    <asp:Button ID="btnBack" runat="server" OnClientClick="JavaScript:window.history.back(1);return false;" Height="40px" Text="Back" Width="120px" Font-Size="Large" Font-Names="Georgia" BackColor="#01A5CA" ForeColor="White" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnCancel" runat="server" Height="40px" Text="Cancel" Width="120px" Font-Size="Large" Font-Names="Georgia" BackColor="#01A5CA" ForeColor="White" OnClick="btnCancel_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnConfirm" runat="server" Height="40px" Text="Confirm" Width="120px" Font-Size="Large" Font-Names="Georgia" BackColor="#01A5CA" ForeColor="White" OnClick="btnRegister_Click" />
                </td>
            </tr>
            <tr>
                <td style="text-align:left">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Zenith-FitnessConnectionString %>" SelectCommand="SELECT * FROM [Member]"></asp:SqlDataSource>
                </td>
                <td style="text-align:left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align:left">
                    <asp:Label ID="lblEx" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td style="text-align:left">
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
