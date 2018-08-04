<%@ Page Title="Zenith Fitness | Membership" Language="C#" MasterPageFile="~/NestedMasterPage1.Master" AutoEventWireup="true" CodeBehind="Membership.aspx.cs" Inherits="Zenith_Fitness.WebForm9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MenuContentPlaceHolder1" runat="server">
    <!--==============================nav bar================================-->
    <nav>

        <ul class="menu">
            <li>
                <a href="Default.aspx">Home</a>
            </li>
            <li class="current">
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
    <!--==============================content================================-->

    <div class="container_12">
        <div class="grid_12">
            <div class="box-shadow">
                <div class="wrap block-2">
                    <div class="col-3">
                        <h2 class="p3"><span class="color-1">Personal</span> Training</h2>
                        <p class="p2">
                            <strong>Let's get better together</strong>
                        </p>
                        <p class="p4">Our trainers are nationally certified and will create specialized programs base upon your needs. Whether you want to get stronger or lose weight, we have the sustainable solutions for your goals.</p>

                        <p>Ask about personal training during your next visit and set up a free consultation!</p>
                        &nbsp;
                    </div>
                    <div class="col-4">
                        <h2 class="p3"><span class="color-1">Our</span> Training Mentality</h2>
                        <p class="p2">
                            <strong>Your health deserves the best</strong>
                        </p>
                        <p>Here at Zenith Fitness we want to make sure that your needs are properly met. It is our passion to help to assist our members in any way in order for them to progress with their fitness goals. We treat our members like family, therefore our members should respect each other as such. Our friendly and knowledable staff are more than willing to assist you and answer any questions that you have. Zenith Fitness is more than just a membership. It is a place that you can call home.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</asp:Content>