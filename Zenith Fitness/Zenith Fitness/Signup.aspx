<%@ Page Title="Zenith Fitness | Join Now" Language="C#" MasterPageFile="~/NestedMasterPage1.master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Zenith_Fitness.WebForm6" %>

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
    <section id="content" style="height: auto">
        <br />
    <div style="float:left">
        <br />
        <table id="joinTable" style="width:100%;">
            <tr>
                <td colspan="2">

        <h2 style="margin-top: 20px; text-align: left; color: green">New Member Information
        </h2>
                </td>
                <td style="width: 160px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 260px">
                    &nbsp;</td>
                <td style="width: 260px">
                    &nbsp;</td>
                <td style="width: 160px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 260px">
                    First Name
                    <asp:RequiredFieldValidator ID="rfvFname" runat="server" ErrorMessage="First name is required" ForeColor="Red" ControlToValidate="tbxFname" ValidationGroup="memberInfo">*</asp:RequiredFieldValidator>
                </td>
                <td style="width: 260px">
                    Last Name
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last name is required" ForeColor="Red" ControlToValidate="tbxLname" ValidationGroup="memberInfo">*</asp:RequiredFieldValidator>
                </td>
                <td style="width: 160px">
                    MI
                    </td>
            </tr>
            <tr>
                <td style="height: 40px; width: 260px;">
                    <asp:TextBox ID="tbxFname" runat="server" BorderStyle="Solid" BorderWidth="1px" Height="35px" Width="220px"></asp:TextBox>
                </td>
                <td style="height: 25px; width: 260px;">
                    <asp:TextBox ID="tbxLname" runat="server" BorderStyle="Solid" BorderWidth="1px" Height="35px" Width="220px"></asp:TextBox>
                </td>
                <td style="height: 25px; width: 160px;">
                    <asp:TextBox ID="tbxMI" runat="server" BorderStyle="Solid" BorderWidth="1px" Height="35px" Width="50px" MaxLength="1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 260px">Email
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Email is required" ForeColor="Red" ControlToValidate="tbxEmail" ValidationGroup="memberInfo">*</asp:RequiredFieldValidator>
                </td>
                <td style="width: 260px">Verify Email
                    <asp:RequiredFieldValidator ID="rfvVEmail" runat="server" ErrorMessage="Email is required" ForeColor="Red" ControlToValidate="tbxVEmail" ValidationGroup="memberInfo">*</asp:RequiredFieldValidator>
                </td>
                <td style="width: 160px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 260px">
                    <asp:TextBox ID="tbxEmail" runat="server" BorderStyle="Solid" BorderWidth="1px" Height="35px" Width="220px" TextMode="Email"></asp:TextBox>
                </td>
                <td style="width: 260px">
                    <asp:TextBox ID="tbxVEmail" runat="server" BorderStyle="Solid" BorderWidth="1px" Height="35px" Width="220px" TextMode="Email"></asp:TextBox>
                </td>
                <td style="width: 160px">
                    <asp:CompareValidator ID="cvEmails" runat="server" ErrorMessage="Email does not match" ControlToCompare="tbxEmail" ForeColor="Red" ControlToValidate="tbxVEmail"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 260px">Mailing Address
                    <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Mailing address is required" ForeColor="Red" ControlToValidate="tbxAddress" ValidationGroup="memberInfo">*</asp:RequiredFieldValidator>
                </td>
                <td style="width: 260px">City
                    <asp:RequiredFieldValidator ID="rfvCity" runat="server" ErrorMessage="City is required" ForeColor="Red" ControlToValidate="tbxCity" ValidationGroup="memberInfo">*</asp:RequiredFieldValidator>
                </td>
                <td style="width: 160px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 260px">
                    <asp:TextBox ID="tbxAddress" runat="server" BorderStyle="Solid" BorderWidth="1px" Height="35px" Width="220px"></asp:TextBox>
                </td>
                <td style="width: 260px">
                    <asp:TextBox ID="tbxCity" runat="server" BorderStyle="Solid" BorderWidth="1px" Height="35px" Width="220px"></asp:TextBox>
                </td>
                <td style="width: 160px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 260px; height: 25px;">State
                    <asp:RequiredFieldValidator ID="rfvState" runat="server" ErrorMessage="State is required" ForeColor="Red" ControlToValidate="ddlState" ValidationGroup="memberInfo">*</asp:RequiredFieldValidator>
                </td>
                <td style="width: 260px; height: 25px;">Zip Code
                    <asp:RequiredFieldValidator ID="rfvZip" runat="server" ErrorMessage="Zip code is required" ForeColor="Red" ControlToValidate="tbxZip" ValidationGroup="memberInfo">*</asp:RequiredFieldValidator>
                </td>
                <td style="height: 25px; width: 160px;"></td>
            </tr>
            <tr>
                <td style="width: 260px">
                    <asp:DropDownList ID="ddlState" runat="server" Width="150px" Height="35px" ValidationGroup=" memberInfo" DataSourceID="SqlDataSource1" DataTextField="state_name" DataValueField="state_name">
                        <asp:ListItem Selected="True"> </asp:ListItem>
                        <asp:ListItem>Texas</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Zenith-FitnessConnectionString %>" SelectCommand="SELECT [state_name] FROM [State]"></asp:SqlDataSource>
                </td>
                <td style="width: 260px">
                    <asp:TextBox ID="tbxZip" runat="server" BorderStyle="Solid" BorderWidth="1px" Height="35px" Width="100px" MaxLength="5"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="regexZip" runat="server" ControlToValidate="tbxZip" ErrorMessage="Invalid zip code" ForeColor="Red" ValidationExpression="^\d{5}(?:[-\s]\d{4})?$"></asp:RegularExpressionValidator>
                </td>
                <td style="width: 160px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 260px">Age <asp:RequiredFieldValidator ID="rfvAge" runat="server" ErrorMessage="Age is required" ForeColor="Red" ControlToValidate="tbxAge" ValidationGroup="memberInfo">*</asp:RequiredFieldValidator>
                </td>
                <td style="width: 260px">Gender
                    <asp:RequiredFieldValidator ID="rfvGender" runat="server" ErrorMessage="Gender is required" ForeColor="Red" ControlToValidate="ddlGender" InitialValue="-Select One-" ValidationGroup="memberInfo">*</asp:RequiredFieldValidator>
                </td>
                <td style="width: 160px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 260px; height: 37px;">
                    <asp:TextBox ID="tbxAge" runat="server" BorderStyle="Solid" BorderWidth="1px" Height="35px" Width="50px" MaxLength="2" ToolTip="Must be 18 or older"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="regexZip0" runat="server" ControlToValidate="tbxAge" ErrorMessage="18 or Older" ForeColor="Red" ToolTip="18 or older" ValidationExpression="^(1[89]|[2-9]\d)$"></asp:RegularExpressionValidator>
                </td>
                <td style="width: 260px; height: 37px;">
                    <asp:DropDownList ID="ddlGender" runat="server" Width="150px" ValidationGroup="memberInfo" CausesValidation="True">
                        <asp:ListItem Selected="True">-Select One-</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>LGBTQ</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 160px; height: 37px;"></td>
            </tr>
            <tr>
                <td style="width: 260px; height: 25px;">Cell Phone
                    <asp:RequiredFieldValidator ID="rfvCell" runat="server" ErrorMessage="Cellphone number is required" ForeColor="Red" ControlToValidate="tbxCell" ValidationGroup="memberInfo">*</asp:RequiredFieldValidator>
                </td>
                <td style="width: 260px; height: 25px;">Home Phone</td>
                <td style="width: 160px; height: 25px;">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 260px">
                    <asp:TextBox ID="tbxCell" runat="server" BorderStyle="Solid" BorderWidth="1px" Height="35px" Width="150px" TextMode="Phone" MaxLength="10"></asp:TextBox>
                </td>
                <td style="width: 260px">
                    <asp:TextBox ID="tbxHome" runat="server" BorderStyle="Solid" BorderWidth="1px" Height="35px" Width="150px" TextMode="Phone" MaxLength="10"></asp:TextBox>
                </td>
                <td style="width: 160px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 260px">How did you hear about us</td>
                <td style="width: 260px">&nbsp;</td>
                <td style="width: 160px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 260px">
                    <asp:DropDownList ID="ddlHow" runat="server" Width="150px" Height="35px">
                        <asp:ListItem>Advert</asp:ListItem>
                        <asp:ListItem>Walk-In</asp:ListItem>
                        <asp:ListItem>Sign</asp:ListItem>
                        <asp:ListItem>Referral</asp:ListItem>
                        <asp:ListItem>Internet</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 260px">&nbsp;</td>
                <td style="width: 160px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 260px">&nbsp;</td>
                <td style="width: 260px">&nbsp;</td>
                <td style="width: 160px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 260px">&nbsp;</td>
                <td style="width: 260px">&nbsp;</td>
                <td style="width: 160px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 260px; height: 25px;">
                    <h2 style="text-align: left; color: green">Create an Account</h2>
                </td>
                <td style="width: 260px; height: 25px;"></td>
                <td style="width: 160px; height: 25px;"></td>
            </tr>
            <tr>
                <td style="width: 260px">&nbsp;</td>
                <td style="width: 260px">&nbsp;</td>
                <td style="width: 160px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 260px">Username <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="Username is required" ForeColor="Red" ControlToValidate="tbxUsername" ValidationGroup="memberInfo">*</asp:RequiredFieldValidator>
                </td>
                <td style="width: 260px">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Zenith-FitnessConnectionString %>" SelectCommand="SELECT [member_username] FROM [Member]"></asp:SqlDataSource>
                </td>
                <td style="width: 160px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 260px">
                    <asp:TextBox ID="tbxUsername" runat="server" BorderStyle="Solid" BorderWidth="1px" Height="35px" Width="220px" MaxLength="15" ToolTip="Username must begin with a letter, may contain digits, and 6-15 characters long"></asp:TextBox>
                </td>
                <td style="width: 260px">
                    <asp:RegularExpressionValidator ID="regexUsername" runat="server" ControlToValidate="tbxUsername" ErrorMessage="Username does not meet requirement" ForeColor="Red" ValidationExpression="(?=.*^[a-zA-Z])[a-zA-Z\d]{6,15}$"></asp:RegularExpressionValidator>
                </td>
                <td style="width: 160px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 260px">
                    <asp:Label ID="lblUsernameError" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                </td>
                <td style="width: 260px">&nbsp;</td>
                <td style="width: 160px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 260px; height: 23px;">Password <asp:RequiredFieldValidator ID="rfvPwd1" runat="server" ErrorMessage="Password is required" ForeColor="Red" ControlToValidate="tbxPwd1" ValidationGroup="memberInfo">*</asp:RequiredFieldValidator>
                </td>
                <td style="width: 260px; height: 23px;"></td>
                <td style="width: 160px; height: 23px;"></td>
            </tr>
            <tr>
                <td style="width: 260px">
                    <asp:TextBox ID="tbxPwd1" runat="server" BorderStyle="Solid" BorderWidth="1px" Height="35px" Width="220px" ToolTip="Password must include at least one upper and lower case letter, digit, special character, and 8 characters long" TextMode="Password"></asp:TextBox>
                </td>
                <td style="width: 260px">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbxPwd1" ErrorMessage="Password does not meet requirement" ForeColor="Red" ValidationExpression="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&amp;*-]).{8,}$"></asp:RegularExpressionValidator>
                </td>
                <td style="width: 160px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 260px">Confirm Password <asp:RequiredFieldValidator ID="rfvPwd2" runat="server" ErrorMessage="Confirm password" ForeColor="Red" ControlToValidate="tbxPwd2" ValidationGroup="memberInfo">*</asp:RequiredFieldValidator>
                </td>
                <td style="width: 260px">&nbsp;</td>
                <td style="width: 160px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 260px">
                    <asp:TextBox ID="tbxPwd2" runat="server" BorderStyle="Solid" BorderWidth="1px" Height="35px" Width="220px" TextMode="Password"></asp:TextBox>
                </td>
                <td style="width: 260px">
                    <asp:CompareValidator ID="cvPwd" runat="server" ErrorMessage="Password does not match" ControlToCompare="tbxPwd1" ForeColor="Red" ControlToValidate="tbxPwd2"></asp:CompareValidator>
                </td>
                <td style="width: 160px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 260px">&nbsp;</td>
                <td style="width: 260px">&nbsp;</td>
                <td style="width: 160px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 260px">&nbsp;</td>
                <td style="width: 260px">&nbsp;</td>
                <td style="width: 160px">&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 36px;" colspan="2">
                    <h2 style="text-align: left; color: green">Payment Option </h2>
                </td>
            </tr>
            <tr>
                <td style="width: 260px">
                    <asp:RadioButton ID="rbtnPaylater" runat="server" Text=" Pay at the Gym" Checked="True" />
&nbsp;</td>
                <td style="width: 260px">&nbsp;</td>
                <td style="width: 160px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 260px">&nbsp;</td>
                <td style="width: 260px">&nbsp;</td>
                <td style="width: 160px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 260px">
                    <asp:Button ID="btnContinue" runat="server" Height="40px" Text="Continue" Width="120px" Font-Size="Large" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" OnClick="btnContinue_Click" BackColor="#01A5CA" />
                </td>
                <td style="width: 260px">&nbsp;</td>
                <td style="width: 160px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 260px">&nbsp;</td>
                <td style="width: 260px">&nbsp;</td>
                <td style="width: 160px">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
                <td style="width: 160px">&nbsp;</td>
            </tr>
        </table>
        </div>
        <div style="width:25%; float:right; overflow:hidden">
            <br />
            <br />
            <br />
            <br />
            <br />
            <table >
                <tr style="width:200px; height:35px;">
                    <td>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="memberInfo" />
                    </td>
                </tr>
            </table>
        </div>
    </section>
</asp:Content>

