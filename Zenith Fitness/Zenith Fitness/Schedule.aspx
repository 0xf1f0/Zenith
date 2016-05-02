<%@ Page Title="Zenith Fitness | Schedule" Language="C#" MasterPageFile="~/NestedMasterPage1.Master" AutoEventWireup="true" CodeBehind="Schedule.aspx.cs" Inherits="Zenith_Fitness.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MenuContentPlaceHolder1" runat="server">
    <!--==============================nav bar================================-->
    <nav>

        <ul class="menu">
            <li><a href="Default.aspx">Home</a></li>
            <li><a href="Membership.aspx">Membership</a></li>
            <li><a href="Trainings.aspx">Training</a></li>
            <li class="current"><a href="Schedule.aspx">Schedule</a></li>
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
                        <div class="col-1">
                            <h2 class="p3"><span class="color-1">Our</span> schedule</h2>
                            <div class="wrap box-2 border-1">
                                <div>
                                    <p><strong>Monday</strong></p>
                                    <p class="color-1">9:30 - Pilates</p>
                                    <p>A class dedicated to increase your strength and flexibility while remaining upbeat. (50 min)</p>
                                    <p>Fitness Room A</p>
                                </div>
                                <div>
                                    <p><strong>Wednesday</strong></p>
                                    <p class="color-1">10:00 - Yoga</p>
                                    <p>Create a flow through your body to calm the mind and increase energy. All levels are welcomed. (55 min)</p>
                                    <p>Fitness Room B</p>
                                </div>
                                <div class="last">
                                    <p><strong>Friday</strong></p>
                                    <p class="color-1">9:30 - Tai Chi</p>
                                    <p>Slow movements with an emphasis on slow breathing allow you to work on posture and core stability. (55 min)</p>
                                    <p>Fitness Room C</p>
                                </div>
                            </div>
                            <div class="wrap box-2 border-1">
                                <div>
                                    <p class="color-1">12:00 - Spin</p>
                                    <p>A 45 minute excursion controlled by music to create varying intensities and simulating different terrains.</p>
                                    <p>Fitness Room B</p>
                                </div>
                                <div>
                                    <p class="color-1">12:30 - Core Training</p>
                                    <p>A quick and intense 25 minutes of solid core work, including abs, lower back, and legs.</p>
                                    <p>Fitness Room A</p>
                                </div>
                                <div class="last">
                                    <p class="color-1">11:00 - Zumba</p>
                                    <p>55 minutes of cardio dancing including salsa, merengue and reggaeton. Who says cardio can't be fun?</p>
                                    <p>Fitness Room C</p>
                                </div>
                            </div>
                            <div class="wrap box-2">
                                <div>
                                    <p class="color-1">18:00 - Yoga</p>
                                    <p>Create a flow through your body to calm the mind and increase energy. All levels are welcomed. (55 min)</p>
                                    <p>Fitness Room B</p>
                                </div>
                                <div>
                                    <p class="color-1">17:30 - Zumba</p>
                                    <p>55 minutes of cardio dancing including salsa, merengue and reggaeton. Who says cardio can't be fun?</p>
                                    <p>Fitness Room C</p>
                                </div>
                                <div class="last">
                                    <p class="color-1">17:00 - Core Training</p>
                                    <p>A quick and intense 25 minutes of solid core work, including abs, lower back, and legs.</p>
                                    <p>Fitness Room A</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-2">
                            <h2 class="p3"><span class="color-1">Events</span> Schedule</h2>
                            <p class="p2"><strong>Come join our classes</strong></p>
                            <p>We offer a variety of classes for all members. Enjoy a great workout with guided instruction from a qualified professional</p>
                            <img src="images/page3-img1.jpg" alt="" class="img-border pad-1">

                            <a href="./selectmembership.aspx" class="button top-5">Join Now</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </section>

</asp:Content>
