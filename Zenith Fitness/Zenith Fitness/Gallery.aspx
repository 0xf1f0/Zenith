<%@ Page Title="Zenith Fitness | Gallery" Language="C#" MasterPageFile="~/NestedMasterPage1.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="Zenith_Fitness.WebForm5" %>

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
            <li class="current">
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
    <section id="content">
        <div class="container_12">
            <div class="grid_12">
                <div id="slide">
                    <div class="gallery">
                        <ul class="items">
                            <li>
                                <img src="images/gallery-big-1.jpg" alt="">
                            </li>
                            <li>
                                <img src="images/gallery-big-5.jpg" alt="">
                            </li>
                            <li>
                                <img src="images/gallery-big-2.jpg" alt="">
                            </li>
                            <li>
                                <img src="images/gallery-big-6.jpg" alt="">
                            </li>
                            <li>
                                <img src="images/gallery-big-3.jpg" alt="">
                            </li>
                            <li>
                                <img src="images/gallery-big-7.jpg" alt="">
                            </li>
                            <li>
                                <img src="images/gallery-big-4.jpg" alt="">
                            </li>
                            <li>
                                <img src="images/gallery-big-8.jpg" alt="">
                            </li>
                        </ul>
                    </div>
                    <a href="#" class="prev"></a><a href="#" class="next"></a>
                </div>
            </div>
            <div class="grid_12 top-1">
                <div class="block-3 box-shadow">
                    <h2 class="p4"><span class="color-1">Photo</span> gallery</h2>
                    <div class="pag">
                        <div class="img-pags">
                            <ul>
                                <li>
                                    <a href="Default.aspx">
                                        <span>
                                            <img src="images/gallery-1.jpg" alt="">
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span>
                                            <img src="images/gallery-5.jpg" alt="">
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span>
                                            <img src="images/gallery-2.jpg" alt="">
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span>
                                            <img src="images/gallery-6.jpg" alt="">
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span>
                                            <img src="images/gallery-3.jpg" alt="">
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span>
                                            <img src="images/gallery-7.jpg" alt="">
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span>
                                            <img src="images/gallery-4.jpg" alt="">
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span>
                                            <img src="images/gallery-8.jpg" alt="">
                                        </span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </section>

    <!--==============================content================================-->
    <link rel="stylesheet" type="text/css" media="screen" href="css/demo.css">
    <script src="js/uCarousel.js"></script>
    <script src="js/tms-0.4.1.js"></script>


    <script>
        $(document)
            .ready(function() {
                $('.gallery')
                    ._TMS({
                        show: 0,
                        pauseOnHover: true,
                        prevBu: '.prev',
                        nextBu: '.next',
                        playBu: '.play',
                        duration: 700,
                        preset: 'fade',
                        pagination: $('.img-pags')
                            .uCarousel({
                                show: 4,
                                shift: 0
                            }),
                        pagNums: false,
                        slideshow: 7000,
                        numStatus: true,
                        banners: false,
                        waitBannerAnimation: false,
                        progressBar: false
                    });
            })

    </script>
</asp:Content>