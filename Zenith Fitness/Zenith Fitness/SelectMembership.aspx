<%@ Page Title="Zenith Fitness | Select Membership" Language="C#" MasterPageFile="~/NestedMasterPage1.master" AutoEventWireup="true" CodeBehind="SelectMembership.aspx.cs" Inherits="Zenith_Fitness.WebForm11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MenuContentPlaceHolder1" runat="server">
    <!--==============================nav bar================================-->
    <nav>
        <ul class="menu">
            <li><a href="Default.aspx">Home</a></li>
            <li><a href="Membership.aspx">Membership</a></li>
            <li><a href="Trainings.aspx">Trainings</a></li>
            <li><a href="Schedule.aspx">Schedule</a></li>
            <li><a href="Gallery.aspx">Gallery</a></li>
            <li><a href="Contacts.aspx">Contacts</a></li>
        </ul>
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NestedContentPlaceHolder1" runat="server">

    <br />
    <div class="box-shadow" style="left: 0px; top: 0px; width: auto; height: auto">
    <table id="premium" style="width: 60%; margin-left:20%">
        <tr>
            <td style="height: 25px"><h3 class="color-1">Monthly Premium Membership</h3></td>
            <td style="height: 25px"><h3 class="color-1">Monthly Standard Membership</h3></td>
        </tr>
        <tr>
            <td>
                <asp:BulletedList ID="BulletedList1" runat="server" BulletStyle="Disc" Width="300px">
                    <asp:ListItem>Bring a friend for free for 1 month</asp:ListItem>
                    <asp:ListItem>Bring a friend for free for 1 month</asp:ListItem>
                    <asp:ListItem>Bring a friend for free for 1 month</asp:ListItem>
                    <asp:ListItem>Bring a friend for free for 1 month</asp:ListItem>
                    <asp:ListItem>Bring a friend for free for 1 month</asp:ListItem>
                    <asp:ListItem>Bring a friend for free for 1 month</asp:ListItem>
                    <asp:ListItem>Bring a friend for free for 1 month</asp:ListItem>
                </asp:BulletedList>
            </td>
            <td>
                <asp:BulletedList ID="BulletedList2" runat="server" BulletStyle="Disc" Width="300px">
                    <asp:ListItem>Bring a friend for free for 1 month</asp:ListItem>
                    <asp:ListItem>Bring a friend for free for 1 month</asp:ListItem>
                    <asp:ListItem>Bring a friend for free for 1 month</asp:ListItem>
                    <asp:ListItem>Bring a friend for free for 1 month</asp:ListItem>
                    <asp:ListItem>Bring a friend for free for 1 month</asp:ListItem>
                    <asp:ListItem>Bring a friend for free for 1 month</asp:ListItem>
                    <asp:ListItem>Bring a friend for free for 1 month</asp:ListItem>
                </asp:BulletedList>
            </td>
        </tr>
        <tr>
            <td style="text-align: left">
                &nbsp;</td>
            <td style="text-align: left">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: left">
                <asp:Button ID="btnPremium" runat="server" Text="Select" Width="120px" Font-Size="Large" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CssClass="color-1" Height="40px" OnClick="btnPremium_Click" />
            </td>
            <td style="text-align: left">
                <asp:Button ID="btnStandard" runat="server" Text="Select" Width="120px" Font-Size="Large" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CssClass="color-1" Height="40px" OnClick="btnStandard_Click" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</div>
</asp:Content>
