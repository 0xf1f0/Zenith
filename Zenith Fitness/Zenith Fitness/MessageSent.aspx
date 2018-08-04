<%@ Page Title="Zenith Fitness | Thank You" Language="C#" MasterPageFile="~/NestedMasterPage1.master" AutoEventWireup="true" CodeBehind="MessageSent.aspx.cs" Inherits="Zenith_Fitness.WebForm10" %>

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
                <a href="Trainings.aspx">Trainings</a>
            </li>
            <li>
                <a href="Schedule.aspx">Schedule</a>
            </li>
            <li>
                <a href="Gallery.aspx">Gallery</a>
            </li>
            <li class="current">
                <a href="Contacts.aspx">Contacts</a>
            </li>
        </ul>
    </nav>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="NestedContentPlaceHolder1" runat="server">
    <section id="content" style="height: 550px">
        <div class="box-shadow" style="height: auto; left: 0px; top: 0px; width: 100%;">
            <h2 style="color: green; margin-top: 60px; text-align: center;">
                Thank you for contacting us, we will get back to you shortly.
            </h2>
        </div>
    </section>
</asp:Content>