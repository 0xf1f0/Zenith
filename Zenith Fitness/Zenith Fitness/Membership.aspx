<%@ Page Title="Zenith Fitness | Membership" Language="C#" MasterPageFile="~/NestedMasterPage1.Master" AutoEventWireup="true" CodeBehind="Membership.aspx.cs" Inherits="Zenith_Fitness.WebForm9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MenuContentPlaceHolder1" runat="server">
    <!--==============================nav bar================================-->
    <nav>            
                    
        <ul class="menu">
        <li><a href="Default.aspx">Home</a></li>
        <li class="current"><a href="Membership.aspx">Membership</a></li>
        <li><a href="Trainings.aspx">Trainings</a></li>
        <li><a href="Schedule.aspx">Schedule</a></li>
        <li><a href="Gallery.aspx">Gallery</a></li>
        <li><a href="Contacts.aspx">Contacts</a></li>
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
                        <h2 class="p3"><span class="color-1">Main</span> programs</h2>
                        <p class="p2"><strong>Nam liber tempor cum soluta nobis eleifend</strong></p>
                        <p class="p4">Option congue nihil imperdiet doming id quod mazim placerat facer possim assum:</p>

                        <p>Ut wisi enim adminim veniam quis nostrud exerci tation ullamcorper suscipit lobortis nisl.</p>
                        &nbsp;
                    </div>
                    <div class="col-4">
                        <h2 class="p3"><span class="color-1">Our</span> training</h2>
                        <p class="p2"><strong>Nam liber tempor cum soluta nobis eleifend option congue nihil</strong></p>
                        <p>Imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</asp:Content>
