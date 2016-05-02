<%@ Page Title="Zenith Fitness | Admin Login" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Zenith_Fitness.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 223px;
            height: 55px;
        }
        .auto-style2 {
            height: 55px;
        }
        .auto-style3 {
            height: 25px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <div>
        <br />
        <table id="loginTable" >
            <tr>
                <td><h2 style="text-align: left; color: green;">Sign In to your Account</h2></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 55px; width: auto; display:block">
                    <asp:TextBox ID="tbxUser" runat="server" Placeholder="Enter Username" ForeColor="Black" Font-Bold="false" Font-Size="Large" Font-Names="Georgia" Height="40px" Width="300px" ToolTip="Username must begin with a letter, may contain digits, and 6-15 characters long"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvUser" runat="server" ErrorMessage="Required" ValidationGroup="Login" ControlToValidate="tbxUser" ForeColor="Red" Height="40px"></asp:RequiredFieldValidator>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="height: 55px; width: auto;">
                    <asp:TextBox ID="tbxPwd" runat="server" Placeholder="Enter Password" ForeColor="Black" Font-Bold="false" Font-Size="Large" Font-Names="Georgia" Height="40px" Width="300px" TextMode="Password" ToolTip="Password must include at least one upper and lower case letter, digit, special character, and 8 characters long"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvPwd" runat="server" ErrorMessage="Required" ValidationGroup="Login" ControlToValidate="tbxPwd" ForeColor="Red" Height="40px"></asp:RequiredFieldValidator>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="btnLogin" runat="server" Height="40px" Text="Login" Width="300px" Font-Size="Large" Font-Names="Georgia" BackColor="#01A5CA" ForeColor="White" OnClick="btnLogin_Click"/>
                </td>
                <td class="auto-style2">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Zenith-FitnessConnectionString %>" SelectCommand="SELECT [admin_username], [admin_password] FROM [Admin]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblEx" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                </td>
                <td class="auto-style3">
                    </td>
            </tr>
            <tr>
                <td><a href="AdminLogin.aspx"><h3 style="text-align:center">Member? Click Here</h3></a>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
