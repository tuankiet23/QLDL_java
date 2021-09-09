<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 8/10/2021
  Time: 3:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="loader"></div>
<!--======== SEARCH-OVERLAY =========-->
<div class="overlay">
    <a href="javascript:void(0)" id="close-button" class="closebtn">&times;</a>
    <div class="overlay-content">
        <div class="form-center">
            <form>
                <div class="form-group">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search..." required />
                        <span class="input-group-btn"><button type="submit" class="btn"><span><i class="fa fa-search"></i></span></button></span>
                    </div><!-- end input-group -->
                </div><!-- end form-group -->
            </form>
        </div><!-- end form-center -->
    </div><!-- end overlay-content -->
</div><!-- end overlay -->


<!--============= TOP-BAR ===========-->
<div id="top-bar" class="tb-text-white">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                <div id="info">
                    <ul class="list-unstyled list-inline">
                        <li><span><i class="fa fa-map-marker"></i></span>Phạm Tuấn Kiệt</li>
                        <li><span><i class="fa fa-phone"></i></span>+0899832698</li>
                    </ul>
                </div><!-- end info -->
            </div><!-- end columns -->

            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                <div id="links">
                    <ul class="list-unstyled list-inline">
                        <li><a href="#"><span><i class="fa fa-lock"></i></span>Login</a></li>
                        <li><a href="#"><span><i class="fa fa-plus"></i></span>Sign Up</a></li>
                    </ul>
                </div><!-- end links -->
            </div><!-- end columns -->
        </div><!-- end row -->
    </div><!-- end container -->
</div><!-- end top-bar -->

<nav class="navbar navbar-default main-navbar navbar-custom navbar-white" id="mynavbar-1">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" id="menu-button">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <div class="header-search hidden-lg">
                <a href="javascript:void(0)" class="search-button"><span><i class="fa fa-search"></i></span></a>
            </div>
            <a href="#" class="navbar-brand"><span><i class="fa fa-plane"></i>STAR</span>TRAVELS</a>
        </div><!-- end navbar-header -->

        <div class="collapse navbar-collapse" id="myNavbar1">
            <ul class="nav navbar-nav navbar-right navbar-search-link">
                <li class="dropdown active"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Home<span><i class="fa fa-angle-down"></i></span></a>
                    <ul class="dropdown-menu">
                        <li class="active"><a href="#">Main Homepage</a></li>
                        <li><a href="">Flight Homepage</a></li>
                        <li><a href="">Hotel Homepage</a></li>
                        <li><a href="">Tour Homepage</a></li>
                        <li><a href="">Cruise Homepage</a></li>
                        <li><a href="">Car Homepage</a></li>
                        <li><a href="">Landing Page</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Flights<span><i class="fa fa-angle-down"></i></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="flight-homepage.html">Flight Homepage</a></li>
                        <li><a href="flight-listing-left-sidebar.html">List View Left Sidebar</a></li>
                        <li><a href="flight-listing-right-sidebar.html">List View Right Sidebar</a></li>
                        <li><a href="flight-grid-left-sidebar.html">Grid View Left Sidebar</a></li>
                        <li><a href="flight-grid-right-sidebar.html">Grid View Right Sidebar</a></li>
                        <li><a href="flight-detail-left-sidebar.html">Detail Left Sidebar</a></li>
                        <li><a href="flight-detail-right-sidebar.html">Detail Right Sidebar</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Hotels<span><i class="fa fa-angle-down"></i></span></a>
                    <ul class="dropdown-menu">
                    </ul>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Tours<span><i class="fa fa-angle-down"></i></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="tour-homepage.html">Tour Homepage</a></li>
                        <li><a href="tour-listing-left-sidebar.html">List tour cao cấp</a></li>
                        <li><a href="tour-listing-right-sidebar.html">List tour bình dân</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Cars<span><i class="fa fa-angle-down"></i></span></a>
                    <ul class="dropdown-menu">
                    </ul>
                </li>

                <li><a href="javascript:void(0)" class="search-button"><span><i class="fa fa-search"></i></span></a></li>
            </ul>
        </div><!-- end navbar collapse -->
    </div><!-- end container -->
</nav><!-- end navbar -->

<div class="sidenav-content">
    <div id="mySidenav" class="sidenav" >
        <h2 id="web-name"><span><i class="fa fa-plane"></i></span>Star Travel</h2>

        <div id="main-menu">
            <div class="closebtn">
                <button class="btn btn-default" id="closebtn">&times;</button>
            </div><!-- end close-btn -->

            <div class="list-group panel">

                <a href="#home-links" class="list-group-item active" data-toggle="collapse" data-parent="#main-menu"><span><i class="fa fa-home link-icon"></i></span>Home<span><i class="fa fa-chevron-down arrow"></i></span></a>
                <div class="collapse sub-menu" id="home-links">

                </div><!-- end sub-menu -->

                <a href="#flights-links" class="list-group-item" data-toggle="collapse" data-parent="#main-menu"><span><i class="fa fa-plane link-icon"></i></span>Flights<span><i class="fa fa-chevron-down arrow"></i></span></a>
                <div class="collapse sub-menu" id="flights-links">
                </div><!-- end sub-menu -->

                <a href="#hotels-links" class="list-group-item" data-toggle="collapse" data-parent="#main-menu"><span><i class="fa fa-building link-icon"></i></span>Hotels<span><i class="fa fa-chevron-down arrow"></i></span></a>
                <div class="collapse sub-menu" id="hotels-links">
                </div><!-- end sub-menu -->

                <a href="#tours-links" class="list-group-item" data-toggle="collapse" data-parent="#main-menu"><span><i class="fa fa-globe link-icon"></i></span>Tours<span><i class="fa fa-chevron-down arrow"></i></span></a>
                <div class="collapse sub-menu" id="tours-links">
                </div><!-- end sub-menu -->

                <a href="#cruise-links" class="list-group-item" data-toggle="collapse" data-parent="#main-menu"><span><i class="fa fa-ship link-icon"></i></span>Cruise<span><i class="fa fa-chevron-down arrow"></i></span></a>
                <div class="collapse sub-menu" id="cruise-links">
                </div><!-- end sub-menu -->

                <a href="#cars-links" class="list-group-item" data-toggle="collapse" data-parent="#main-menu"><span><i class="fa fa-car link-icon"></i></span>Cars<span><i class="fa fa-chevron-down arrow"></i></span></a>
                <div class="collapse sub-menu" id="cars-links">
                </div><!-- end sub-menu -->

                <a href="#pages-links" class="list-group-item" data-toggle="collapse" data-parent="#main-menu"><span><i class="fa fa-clone link-icon"></i></span>Pages<span><i class="fa fa-chevron-down arrow"></i></span></a>
                <div class="collapse sub-menu" id="pages-links">
                    <div class="list-group-heading list-group-item">Standard <span>Pages</span></div>
                       </div><!-- end sub-menu -->
            </div><!-- end list-group -->
        </div><!-- end main-menu -->
    </div><!-- end mySidenav -->
</div><!-- end sidenav-content -->


<!--========================= FLEX SLIDER =====================-->
<section class="flexslider-container" id="flexslider-container-1">

    <div class="flexslider slider" id="slider-1">
        <ul class="slides">

            <li class="item-1" style="background:linear-gradient(rgba(0,0,0,0.3),rgba(0,0,0,0.3)),url(/resources/images/2.jpg)  50% 0%;
	background-size:cover;
	height:100%;">
                <div class=" meta">
                    <div class="container">
                        <h2>KHÁM PHÁ</h2>
                        <h1>VIỆT NAM</h1>
                        <!-- <a href="#" class="btn btn-default">View More</a> -->
                    </div><!-- end container -->
                </div><!-- end meta -->
            </li><!-- end item-1 -->


                <div class=" meta">
                    <div class="container">
                        <h2>DU LỊCH BỐN PHƯƠNG</h2>
                        <!-- <h1>Australia</h1> -->
                        <!-- <a href="#" class="btn btn-default">View More</a> -->
                    </div><!-- end container -->
                </div><!-- end meta -->
            </li><!-- end item-2 -->

        </ul>
    </div><!-- end slider -->

    <div class="search-tabs" id="search-tabs-1">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">

                    <ul class="nav nav-tabs center-tabs">
                        <li><a href="#tours" data-toggle="tab"><span><i class="fa fa-suitcase"></i></span><span class="st-text">Tours</span></a></li>
                    </ul>

                    <div class="tab-content">

                        <div id="flights" class="tab-pane in active">

                        </div><!-- end flights -->

                        <div id="tours" class="tab-pane">
                            <form>
                                <div class="row">

                                    <div class="col-xs-12 col-sm-12 col-md-3 col-lg-4">
                                        <div class="form-group left-icon">
                                            <input type="text" class="form-control" placeholder="Thành phố, Quốc gia" />
                                            <i class="fa fa-map-marker"></i>
                                        </div>
                                    </div><!-- end columns -->

                                    <div class="col-xs-12 col-sm-12 col-md-5 col-lg-5">
                                        <div class="form-group right-icon">
                                            <select class="form-control">
                                                <option selected>Tháng</option>
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                                <option>6</option>
                                                <option>7</option>
                                                <option>8</option>
                                                <option>9</option>
                                                <option>10</option>
                                                <option>11</option>
                                                <option>12</option>
                                            </select>
                                            <i class="fa fa-angle-down"></i>
                                        </div>
                                    </div><!-- end columns -->

                                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
                                        <div class="row">

                                        </div><!-- end row -->
                                    </div><!-- end columns -->

                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-2 search-btn">
                                        <button class="btn btn-orange">Search</button>
                                    </div><!-- end columns -->

                                </div><!-- end row -->
                            </form>
                        </div><!-- end tours -->


                    </div><!-- end tab-content -->

                </div><!-- end columns -->
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end search-tabs -->

</section><!-- end flexslider-container -->


<!--=============== HOTEL OFFERS ===============-->



<!--======================= BEST FEATURES =====================-->
<section id="best-features" class="banner-padding black-features">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-md-3">
                <div class="b-feature-block">
                    <span><i class="fas fa-dollar-sign"></i></span>
                    <h3>Best Price Guarantee</h3>
                    <p>Lorem ipsum dolor sit amet, ad duo fugit aeque fabulas, in lucilius prodesset pri. Veniam delectus ei vis.</p>
                </div><!-- end b-feature-block -->
            </div><!-- end columns -->

            <div class="col-sm-6 col-md-3">
                <div class="b-feature-block">
                    <span><i class="fas fa-lock"></i></span>
                    <h3>Safe and Secure</h3>
                    <p>Lorem ipsum dolor sit amet, ad duo fugit aeque fabulas, in lucilius prodesset pri. Veniam delectus ei vis.</p>
                </div><!-- end b-feature-block -->
            </div><!-- end columns -->

            <div class="col-sm-6 col-md-3">
                <div class="b-feature-block">
                    <span><i class="fas fa-thumbs-up"></i></span>
                    <h3>Best Travel Agents</h3>
                    <p>Lorem ipsum dolor sit amet, ad duo fugit aeque fabulas, in lucilius prodesset pri. Veniam delectus ei vis.</p>
                </div><!-- end b-feature-block -->
            </div><!-- end columns -->

            <div class="col-sm-6 col-md-3">
                <div class="b-feature-block">
                    <span><i class="fas fa-bars"></i></span>
                    <h3>Travel Guidelines</h3>
                    <p>Lorem ipsum dolor sit amet, ad duo fugit aeque fabulas, in lucilius prodesset pri. Veniam delectus ei vis.</p>
                </div><!-- end b-feature-block -->
            </div><!-- end columns -->
        </div><!-- end row -->
    </div><!-- end container -->
</section><!-- end best-features -->
