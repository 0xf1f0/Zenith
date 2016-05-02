<%@ Page Title="Zenith Fitness | Trainings" Language="C#" MasterPageFile="~/NestedMasterPage1.Master" AutoEventWireup="true" CodeBehind="Trainings.aspx.cs" Inherits="Zenith_Fitness.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MenuContentPlaceHolder1" runat="server">
    <!--==============================nav bar================================-->
    <nav>
        <ul class="menu">
        <li><a href="Default.aspx">Home</a></li>
        <li><a href="Membership.aspx">Membership</a></li>
        <li class="current"><a href="Trainings.aspx">Training</a></li>
        <li><a href="Schedule.aspx">Schedule</a></li>
        <li><a href="Gallery.aspx">Gallery</a></li>
        <li><a href="Contacts.aspx">Contacts</a></li>
        </ul>
    </nav>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="NestedContentPlaceHolder1" runat="server">
    <!--==============================content================================-->

    <section id="content">
        <div class="container_12">
            <div class="grid_12">
                <div class="box-shadow">
                    <div class="wrap block-2">
                        <div class="col-3">
                         <h2 class="p3"><span class="color-1">Our</span> Equipment</h2>
                            <p class="p2"><strong>At Zenith Fitness we take pride in our equipment</strong></p>
                            <p class="p4">We want our clients to expect the best from us, so we gave the best to them:</p>
                            <ul class="list-2 p5">
                                <li>Power Racks</li>
                                <li>Olympic Platforms</li>
                                <li>Competition Bench Presses</li>
                                <li>Spin Bikes</li>
                                <li>Two Full Walls of Dumbells</li>
                                <li>Wide Variety of Cardio Equiqment</li>
                                <li>3 Fitness Rooms</li>
                            </ul>
                            <p>Check out the <a href="Gallery.aspx">gallery</a> and come take a tour of our facility</p>
                            <a href="SelectMembership.aspx" class="button top-3">Join Today</a>
                        </div>
                        <div class="col-4">
                            <h2 class="p3"><span class="color-1">Our</span> Training</h2>
                            <p class="p2"><strong>We have something for for everyone</strong></p>
                            <p>With a large variety of machines, free weights and classes, there is something for everyone. </p>
                            <div class="wrap box-1 top-4">
                                <img src="images/page2-img1.jpg" alt="" class="img-border img-indent">
                                <div class="extra-wrap">
                                    <p class="p2"><strong>Join our instructor-led classes</strong></p>
                                    <p>Bring a friend and enjoy one of our classes such as yoga, cycling, tai chi, zumba, core training and pilates. The rooms are sound proofed so your session will be as peaceful as possible. Check out our <a href="Schedule.aspx">schedule</a> to see the list of classes for the week.</p>
                                </div>
                            </div>
                            <div class="wrap box-1 top-2">
                                <img src="images/page2-img2.jpg" alt="" class="img-border img-indent">
                                <div class="extra-wrap">
                                    <p class="p2"><strong>We welcome all levels of fitness </strong></p>
                                    <p>Whether you are a powerlifter, bodybuilder, runner or someone just staying in shape, we have room for you in our gym. We just ask for everyone to be curtious to one another. </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </section>

</asp:Content>
