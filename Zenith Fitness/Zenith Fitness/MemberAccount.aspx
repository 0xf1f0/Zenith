<%@ Page Title="Zenith Fitness | Member Account" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MemberAccount.aspx.cs" Inherits="Zenith_Fitness.WebForm16" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            height: 30px;
        }
        .auto-style2 {
            font-family: Helvetica, sans-serif;
            font-weight: bold;
            font-size: 15px;
        }
        .auto-style3 {
            width: 100%;
        }
    </style>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <br />
    <div class="box-shadow" style="left: 0px; top: 0px; width: auto; height: auto; margin-top: 100px; margin-bottom: 400px">
        <div style="width: 80%; margin-left: 10%;">
            <h2 style="float: left; text-align: left;">Welcome&nbsp;&nbsp;
            <asp:Label ID="currentUser" runat="server" ForeColor="#01A5CA" Text="Label"></asp:Label></h2>
            <h2 style="float: right; text-align: right;">
                <asp:LinkButton ID="lbSignout" runat="server" ForeColor="Red" OnClick="lbSignout_Click">Signout</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp
            </h2>
        </div>
        <br\ />
        <br\ />
        <table id="account" style="margin-top:10%;" class="auto-style3">

                <tr>
                    <td colspan="4">
                        <h2 style="text-align: left; color: green; margin-top:50px;">My Membership</h2>
                        <hr style="color: green;" />

                    </td>
                </tr>
                <tr>
                    <td>
                        <p style="font:bold 15px Helvetica, sans-serif">PLAN</p></td>
                    <td>
                        <p style="font:bold 15px Helvetica, sans-serif">STATUS</p></td>
                    <td>
                        <p style="font-variant: normal; line-height: normal;" class="auto-style2">START DATE</p>
                    </td>
                    <td>
                        <p style="font:bold 15px Helvetica, sans-serif">EXPIRY DATE</p></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblPlan" runat="server" Height="25px" Text="Label" Width="100px"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:Label ID="lblStatus" runat="server" Height="25px" Text="Label" Width="100px"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:Label ID="lblStart" runat="server" Height="25px" Text="Label" Width="200px"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:Label ID="lblEnd" runat="server" Height="25px" Text="Label" Width="200px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Zenith-FitnessConnectionString %>" SelectCommand="SELECT membership_name, membership_end, membership_status, membership_start FROM Membership"></asp:SqlDataSource>
            <br />
    </div>
</asp:Content>
