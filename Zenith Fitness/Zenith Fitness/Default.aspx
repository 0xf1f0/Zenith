<%@ Page Title="Zenith Fitness | Home" Language="C#" MasterPageFile="~/NestedMasterPage1.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Zenith_Fitness.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MenuContentPlaceHolder1" runat="server">
    <!--==============================nav bar================================-->
    <nav>
        <ul class="menu">
        <li class="current"><a href="Default.aspx">Home</a></li>
        <li><a href="Membership.aspx">Membership</a></li>
        <li><a href="Trainings.aspx">Training</a></li>
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
                <div class="slider">    
                  <ul class="items">
                    <li><img src="images/slider-1.jpg" alt="">
                      <div class="banner">
                        <p class="font-1">Special<span>Program</span></p>
                        <p class="font-2">Ask us about our special price on personal training for the entire month!</p>
                        <a href="./selectmembership.aspx">Sign Up</a> </div>
                    </li>
                    <li><img src="images/slider-2.jpg" alt="">
                      <div class="banner">
                        <p class="font-1">Get Free<span>Training</span></p>
                        <p class="font-2">Join today and receive one (1) free personal training session.</p>
                        <a href="./selectmembership.aspx">Sign Up</a> </div>
                    </li>
                    <li><img src="images/slider-3.jpg" alt="">
                      <div class="banner">
                        <p class="font-1">Join<span>our team</span></p>
                        <p class="font-2">Sign up today and take the best step towards a better tomorrow.</p>
                        <a href="./selectMembership.aspx">Sign Up</a> </div>
                    </li>
                  </ul>
                  <div class="pagination">
                    <ul>
                      <li><a href="selectmembership.aspx"></a></li>
                      <li><a href="selectmembership.aspx"></a></li>
                      <li><a href="selectmembership.aspx"></a></li>
                    </ul>
                  </div>
                </div>
              </div>
                <div class="grid_12 top-1">
                    <div class="block-1 box-shadow">
                        <h2 class="p3"><span class="color-1">About</span> us</h2>
                        <p class="font-3">Zenith Fitness is your community gym that can accommodate everyone at any level of 
                                          fitness. Whether you are looking to take a rejuvenating yoga session or work up a sweat 
                                          with some weights, we have the equipment and the personnel to take your fitness journey 
                                          to the next level.</p>
                    </div>
                </div>
              <div class="grid_12 top-1">
                <div class="box-shadow">
                  <div class="wrap block-2">
                    <div class="col-1">
                      <h2 class="p3"><span class="color-1">Latest</span> events</h2>
                      <div class="auto-style1"> <img src="images/page1-img1.jpg" alt="" class="img-border img-indent">
                        <div class="extra-wrap">
                        <p class="p2"><strong>Come see the Zenith Team at the Health Fair</strong> </p>
                          <p>Zenith Team members will be at our booth at the local health fair on Saturday June 4. We will have a small competition running 
                              throughout the day with the top three participants winning free personal training lessons!</p><br />
                        </div>
                      </div>
                      <div class="wrap box-1 top-2"> <img src="images/page1-img2.jpg" alt="" class="img-border img-indent">
                        <div class="extra-wrap">
                         <p><strong>Health Talks Series Continues</strong></p>
                          <p>Come out and join the conversation on your health Saturday May 14 at 6 PM. We will be discussing the basics of nutrition as well as debunking popular "diet" trends.</p>
                         </div>
                      </div>
                    </div>
                    <div class="col-2">
                      <h2 class="p3"><span class="color-1">Services</span> list</h2>
                      <ul class="list-1">
                            <li>Personal Training</li>
                            <li>Instructor-Led Classes</li>
                            <li>Massage Therapy</li>
                            <li>Nutrition Education</li>
                            <li>Health Talk Series</li>
                     </ul>
                    </div>
                  </div>
                </div>
              </div>
              <div class="clear"></div>
            </div>
        </section>

 <!--==============================links & scripts================================-->
        <link rel="stylesheet" type="text/css" media="screen" href="css/slider.css">
        <script src="js/tms-0.3.js"></script>
        <script src="js/tms_presets.js"></script>

        <script>
        $(window).load(function(){
	        $('.slider')._TMS({
	        prevBu:'.pr	ev',
	        nextBu:'.next',
	        pauseOnHover:true,
	        pagNums:false,
	        duration:800,
	        easing:'easeOutQuad',
	        preset:'Fade',
	        slideshow:7000,
	        pagination:'.pagination',
	        waitBannerAnimation:false,
	        banners:'fade'
	        })
        }) 	
        </script>
</asp:Content>
