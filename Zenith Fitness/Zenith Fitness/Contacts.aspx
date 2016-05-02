<%@ Page Title="Fitness Club | Contacts" Language="C#" MasterPageFile="~/NestedMasterPage1.Master" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="Zenith_Fitness.WebForm4" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MenuContentPlaceHolder1" runat="server">
    <!--==============================nav bar================================-->

    <nav>
        <ul class="menu">
            <li><a href="Default.aspx">Home</a></li>
            <li><a href="Membership.aspx">Membership</a></li>
            <li><a href="Trainings.aspx">Trainings</a></li>
            <li><a href="Schedule.aspx">Schedule</a></li>
            <li><a href="Gallery.aspx">Gallery</a></li>
            <li class="current"><a href="Contacts.aspx">Contacts</a></li>
        </ul>
    </nav>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NestedContentPlaceHolder1" runat="server">
    <section id="content" style="height: 785px">
        <div class="container_12" style="height: 767px">
            <div class="grid_12" style="left: 0px; top: 0px; width: 940px; height: 720px">
                <div class="box-shadow" style="left: 0px; top: 0px; width: 940px; height: 723px">
                    <div class="wrap block-2" style="left: -9px; top: 0px; height: 683px; width: 882px">
                        <div class="col-3">
                            <h2><span class="color-1">Find</span> us</h2>
                            <div class="map img-border">
                                <iframe src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=corpus+christi,+Texas,+Texas,+United+States&amp;aq=0&amp;sll=27.7126067,-97.3243789&amp;iwloc=A&amp;output=embed"></iframe>
                            </div>
                            <dl>
                                <dt class="color-1"><strong>6300 Ocean Dr,<br>
                                    Corpus Christi, TX 78412.</strong></dt>
                                <dd><span>Telephone:</span> (361)-456-7890</dd>
                                <dd><span>E-mail:</span><a href="#" class="link">info@zenithfitness.com</a></dd>
                            </dl>
                        </div>
                        <div class="col-4" style="height: 37px">
                            <h2><span class="color-1">Contact</span> form</h2>

                            <br />
                            <table id="contactForm" style="left: 319px; top: 96px; width: 96%; height: 417px">
                                <tr>
                                    <td style="height: 55px; width: 223px;">
                                        <asp:TextBox ID="fName" runat="server" placeholder="First Name" Width="300px" Height="40px" Font-Names="Calibri" Font-Size="Large" MaxLength="30" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                                    </td>
                                    <td style="height: 55px; width: 127px;" colspan="2">&nbsp;</td>
                                    <td style="width: 471px; height: 55px">
                                        <asp:RequiredFieldValidator ID="rfvfName" runat="server" Text="*" ErrorMessage="First name is a required field" ForeColor="Red" ControlToValidate="fName" ValidationGroup="contactForm"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 55px; width: 223px;">
                                        <asp:TextBox ID="lName" runat="server" placeholder="Last Name" Width="300px" Height="40px" Font-Names="Calibri" Font-Size="Large" MaxLength="30" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                                    </td>
                                    <td style="height: 55px; width: 127px;" colspan="2">&nbsp;</td>
                                    <td style="width: 471px; height: 55px">
                                        <asp:RequiredFieldValidator ID="rfvlName" runat="server" Text="*" ErrorMessage="Last name is a required field" ForeColor="Red" ControlToValidate="lName" ValidationGroup="contactForm"></asp:RequiredFieldValidator>

                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 55px; width: 223px;">
                                        <asp:TextBox ID="email" runat="server" placeholder="Email" TextMode="Email" Width="300px" Height="40px" Font-Names="Calibri" Font-Size="Large" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                                    </td>
                                    <td style="height: 55px; width: 127px;" colspan="2">&nbsp;</td>
                                    <td style="width: 471px; height: 55px">
                                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" Text="*" ErrorMessage="Email is a required field" ForeColor="Red" ControlToValidate="email" ValidationGroup="contactForm"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 55px; width: 223px;">
                                        <asp:TextBox ID="phone" runat="server" placeholder="Phone Number" TextMode="Phone" Width="300px" Height="40px" Font-Names="Calibri" Font-Size="Large" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" MaxLength="12" ValidationGroup="contactForm"></asp:TextBox>
                                    </td>
                                    <td style="height: 55px; width: 127px;" colspan="2">&nbsp;</td>
                                    <td style="width: 471px; height: 55px">
                                        <asp:RequiredFieldValidator ID="rfvPhone" runat="server" Text="*" ErrorMessage="Phone number is a required field" ForeColor="Red" ControlToValidate="phone" ValidationGroup="contactForm"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="height: 55px">
                                        <asp:TextBox ID="message" runat="server" placeholder="Message" TextMode="MultiLine" Width="420px" Height="165px" Font-Names="Calibri" Font-Size="Large" MaxLength="100" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
                                    </td>
                                    <td style="height: 55px">&nbsp;</td>
                                    <td style="height: 55px">
                                        <asp:RequiredFieldValidator ID="rfvMessage" runat="server" Text="*" ErrorMessage="Message is a required field" ForeColor="Red" ValidationGroup="contactForm" ControlToValidate="message"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td colspan="3" style="height: auto">
                                        <asp:Label ID="lblMsg" runat="server" Text="Max 100 characters"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Button ID="btnClear" OnClientClick="this.form.reset();return true" runat="server" Height="40px" Text="Clear" Width="120px" CssClass="color-1" Font-Bold="False" Font-Size="Large" OnClick="btnClear_Click" />

                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnSumbit" runat="server" Height="40px" Text="Send" Width="120px" CssClass="color-1" Font-Bold="False" Font-Size="Large" OnClick="btnSend_Click" />

                                    </td>
                                    <td colspan="3" style="height: auto">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td colspan="3" style="height: auto">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="4" style="height: auto">
                                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" Width="300px" ValidationGroup="contactForm" />
                                    </td>
                                </tr>
                            </table>
                            </div>
                        </div>

                    </div>

                </div>
        </div>
    </section>

    <!--==============================links & scripts================================-->

    <!--[if lt IE 9]>
        <script src="js/html5.js"></script>
        <link rel="stylesheet" type="text/css" media="screen" href="css/ie.css">
        <![endif]-->
</asp:Content>
