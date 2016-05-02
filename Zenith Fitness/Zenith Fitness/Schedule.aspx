<%@ Page Title="Zenith Fitness | Schedule" Language="C#" MasterPageFile="~/NestedMasterPage1.Master" AutoEventWireup="true" CodeBehind="Schedule.aspx.cs" Inherits="Zenith_Fitness.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MenuContentPlaceHolder1" runat="server">
    <!--==============================nav bar================================-->
    <nav>

        <ul class="menu">
        <li><a href="Default.aspx">Home</a></li>
        <li><a href="Membership.aspx">Membership</a></li>
        <li><a href="Trainings.aspx">Trainings</a></li>
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
                      <p class="color-1">9:30</p>
                      <p>Imperdiet doming id quod mazim placerat facer possim assum lorem ipsum dolor sit amet.</p>
                    </div>
                    <div>
                      <p><strong>Wednesday</strong></p>
                      <p class="color-1">10:00</p>
                      <p>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore.</p>
                    </div>
                    <div class="last">
                      <p><strong>Friday</strong></p>
                      <p class="color-1">9:30</p>
                      <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</p>
                    </div>
                  </div>
                  <div class="wrap box-2 border-1">
                    <div>
                      <p class="color-1">12:00</p>
                      <p>Consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet.</p>
                    </div>
                    <div>
                      <p class="color-1">12:30</p>
                      <p>Magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.</p>
                    </div>
                    <div class="last">
                      <p class="color-1">11:00</p>
                      <p>Vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit.</p>
                    </div>
                  </div>
                  <div class="wrap box-2">
                    <div>
                      <p class="color-1">18:00</p>
                      <p>Dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci.</p>
                    </div>
                    <div>
                      <p class="color-1">17:30</p>
                      <p>Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet lorem.</p>
                    </div>
                    <div class="last">
                      <p class="color-1">17:00</p>
                      <p>Praesent luptatum zzril delenit augue duis dolore feugait nulla facilisi lorem ipsum dolor sit.</p>
                    </div>
                  </div>
                </div>
                <div class="col-2">
                  <h2 class="p3"><span class="color-1">Events</span> Schedule</h2>
                  <p class="p2"><strong>Nam liber tempor cum</strong></p>
                  <p>Option congue nihil imperdiet doming id quod mazim placerat facer possim assum:</p>
                  <img src="images/page3-img1.jpg" alt="" class="img-border pad-1">
                  <ul class="list-2">
                    <li><a href="#">Lorem ipsum dolor sit amet</a></li>
                    <li><a href="#">Consectetuer adipiscing elit</a></li>
                    <li><a href="#">Diam nonummy nibh</a></li>
                    <li><a href="#">Euismod tincidunt ut laoreet</a></li>
                    <li><a href="#">Dolore magna aliquamerat</a></li>
                  </ul>
                  <a href="#" class="button top-5">learn more</a> </div>
              </div>
            </div>
          </div>
          <div class="clear"></div>
        </div>
      </section>

</asp:Content>
