<%@ Page Title="Zenith Fitness | Select Membership" Language="C#" MasterPageFile="~/NestedMasterPage1.master" AutoEventWireup="true" CodeBehind="SelectMembership.aspx.cs" Inherits="Zenith_Fitness.WebForm11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MenuContentPlaceHolder1" runat="server">
    <!--==============================nav bar================================-->
    <nav>
        <ul class="menu">
            <li>
                <a href="Default.aspx">Home</a>
            </li>
            <li>
                <a href="Membership.aspx">Membership</a>
            </li>
            <li>
                <a href="Trainings.aspx">Training</a>
            </li>
            <li>
                <a href="Schedule.aspx">Schedule</a>
            </li>
            <li>
                <a href="Gallery.aspx">Gallery</a>
            </li>
            <li>
                <a href="Contacts.aspx">Contacts</a>
            </li>
        </ul>
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NestedContentPlaceHolder1" runat="server">

    <br/>
    <div class="box-shadow" style="height: auto; left: 0px; top: 0px; width: auto;">
        <table id="premium" style="margin-left: 20%; width: 60%;">
            <tr>
                <td style="height: 25px">
                    <h3 class="color-1">Monthly Premium Membership</h3>
                </td>
                <td style="height: 25px">
                    <h3 class="color-1">Monthly Standard Membership</h3>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:BulletedList ID="BulletedList1" runat="server" BulletStyle="Disc" Width="300px">
                        <asp:ListItem>Access to weights and classes</asp:ListItem>
                        <asp:ListItem>Free entry to our Health Talks series</asp:ListItem>
                        <asp:ListItem>Free monthly massage therapy</asp:ListItem>
                        <asp:ListItem>Bring a friend for free for 1 month</asp:ListItem>
                        <asp:ListItem>$29.99/month</asp:ListItem>
                    </asp:BulletedList>
                </td>
                <td>
                    <asp:BulletedList ID="BulletedList2" runat="server" BulletStyle="Disc" Width="300px">
                        <asp:ListItem>Access to weights and classes</asp:ListItem>
                        <asp:ListItem>Opportunity to join the Health Talks series</asp:ListItem>
                        <asp:ListItem>Access to massage therapy</asp:ListItem>
                        <asp:ListItem>Able to schedule personal training sessions</asp:ListItem>
                        <asp:ListItem>$19.99 per month</asp:ListItem>
                    </asp:BulletedList>
                </td>
            </tr>
            <tr>
                <td style="text-align: left">&nbsp;</td>
                <td style="text-align: left">&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: left">
                    <asp:Button ID="btnPremium" runat="server" Text="Select" Width="120px" Font-Size="Large" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CssClass="color-1" Height="40px" OnClick="btnPremium_Click"/>
                </td>
                <td style="text-align: left">
                    <asp:Button ID="btnStandard" runat="server" Text="Select" Width="120px" Font-Size="Large" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CssClass="color-1" Height="40px" OnClick="btnStandard_Click"/>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>