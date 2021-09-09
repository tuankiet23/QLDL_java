<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 8/20/2021
  Time: 10:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--===== INNERPAGE-WRAPPER ====-->
<section class="innerpage-wrapper">
    <div id="tour-listing" class="innerpage-section-padding">
        <div class="container">
            <div class="row">

                <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9 content-side">

                    <c:forEach var="item" items="${item1}">
                        <div class="list-block main-block t-list-block">
                            <div class="list-content">
                                <div class="main-img list-img t-list-img">
                                    <a href="tour-detail-right-sidebar.html">
                                        <img src="<c:url value="/resources/images/${item.images}"/>"  class="img-responsive" alt="tour-img"  href="/home/detailtour/${item.maTour}/${item.viewMaTinh}"/>
                                    </a>

                                    <div class="main-mask">
                                        <ul class="list-unstyled list-inline offer-price-1">
                                            <li class="price">${item.giaNguoilon}VNĐ/một người lớn<span class="divider"></span></li>
                                            <li class="rating">
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star orange"></i></span>
                                                <span><i class="fa fa-star lightgrey"></i></span>
                                            </li>
                                        </ul>
                                    </div><!-- end main-mask -->
                                </div><!-- end t-list-img -->

                                <div class="list-info t-list-info">
                                    <h3 class=""><a href="/home/detailtour/${item.maTour}/${item.viewMaTinh}">${item.tenTour}</a></h3>
                                    <p class="block-title">${item.viewTinh}</p>
                                    <p class="block-minor">${item.thoiLuong}</p>
                                    <a href="tour-detail-right-sidebar.html" class="btn btn-orange btn-lg">View More</a>
                                </div><!-- end t-list-info -->
                            </div><!-- end list-content -->
                        </div><!-- end t-list-block -->
                    </c:forEach>

                </div><!-- end columns -->

                <div class="col-xs-12 col-sm-12 col-md-3 side-bar right-side-bar">

                    <div class="side-bar-block filter-block">
                        <h3>Sort By Filter</h3>
                        <p>Find your dream flights today</p>

                        <div class="panels-group">

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <a href="#panel-1" data-toggle="collapse" >Select Country <span><i class="fa fa-angle-down"></i></span></a>
                                </div><!-- end panel-heading -->

                                <div id="panel-1" class="panel-collapse collapse">
                                    <div class="panel-body text-left">
                                        <ul class="list-unstyled">
                                            <li class="custom-check"><input type="checkbox" id="check01" name="checkbox"/>
                                                <label for="check01"><span><i class="fa fa-check"></i></span>All</label></li>
                                            <li class="custom-check"><input type="checkbox" id="check02" name="checkbox"/>
                                                <label for="check02"><span><i class="fa fa-check"></i></span>Australia</label></li>
                                            <li class="custom-check"><input type="checkbox" id="check03" name="checkbox"/>
                                                <label for="check03"><span><i class="fa fa-check"></i></span>Bangkok</label></li>
                                            <li class="custom-check"><input type="checkbox" id="check04" name="checkbox"/>
                                                <label for="check04"><span><i class="fa fa-check"></i></span>China</label></li>
                                            <li class="custom-check"><input type="checkbox" id="check05" name="checkbox"/>
                                                <label for="check05"><span><i class="fa fa-check"></i></span>India</label></li>
                                            <li class="custom-check"><input type="checkbox" id="check06" name="checkbox"/>
                                                <label for="check06"><span><i class="fa fa-check"></i></span>Italy</label></li>
                                            <li class="custom-check"><input type="checkbox" id="check07" name="checkbox"/>
                                                <label for="check07"><span><i class="fa fa-check"></i></span>London</label></li>
                                            <li class="custom-check"><input type="checkbox" id="check08" name="checkbox"/>
                                                <label for="check08"><span><i class="fa fa-check"></i></span>Newzeland</label></li>
                                            <li class="custom-check"><input type="checkbox" id="check09" name="checkbox"/>
                                                <label for="check09"><span><i class="fa fa-check"></i></span>Shanghai</label></li>
                                            <li class="custom-check"><input type="checkbox" id="check10" name="checkbox"/>
                                                <label for="check10"><span><i class="fa fa-check"></i></span>Sydney</label></li>
                                        </ul>
                                    </div><!-- end panel-body -->
                                </div><!-- end panel-collapse -->
                            </div><!-- end panel-default -->

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <a href="#panel-2" data-toggle="collapse" >Days <span><i class="fa fa-angle-down"></i></span></a>
                                </div><!-- end panel-heading -->

                                <div id="panel-2" class="panel-collapse collapse">
                                    <div class="panel-body text-left">
                                        <ul class="list-unstyled">
                                            <li class="custom-check"><input type="checkbox" id="check11" name="checkbox"/>
                                                <label for="check11"><span><i class="fa fa-check"></i></span>All</label></li>
                                            <li class="custom-check"><input type="checkbox" id="check12" name="checkbox"/>
                                                <label for="check12"><span><i class="fa fa-check"></i></span>2 Days</label></li>
                                            <li class="custom-check"><input type="checkbox" id="check13" name="checkbox"/>
                                                <label for="check13"><span><i class="fa fa-check"></i></span>3 Days</label></li>
                                            <li class="custom-check"><input type="checkbox" id="check14" name="checkbox"/>
                                                <label for="check14"><span><i class="fa fa-check"></i></span>5 Days</label></li>
                                            <li class="custom-check"><input type="checkbox" id="check15" name="checkbox"/>
                                                <label for="check15"><span><i class="fa fa-check"></i></span>7 Days</label></li>
                                            <li class="custom-check"><input type="checkbox" id="check16" name="checkbox"/>
                                                <label for="check16"><span><i class="fa fa-check"></i></span>10 Days</label></li>
                                        </ul>
                                    </div><!-- end panel-body -->
                                </div><!-- end panel-collapse -->
                            </div><!-- end panel-default -->

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <a href="#panel-3" data-toggle="collapse" >Rating <span><i class="fa fa-angle-down"></i></span></a>
                                </div><!-- end panel-heading -->

                                <div id="panel-3" class="panel-collapse collapse">
                                    <div class="panel-body text-left">
                                        <ul class="list-unstyled">
                                            <li class="custom-check"><input type="checkbox" id="check17" name="checkbox"/>
                                                <label for="check17"><span><i class="fa fa-check"></i></span>1 Star</label></li>
                                            <li class="custom-check"><input type="checkbox" id="check18" name="checkbox"/>
                                                <label for="check18"><span><i class="fa fa-check"></i></span>2 Star</label></li>
                                            <li class="custom-check"><input type="checkbox" id="check19" name="checkbox"/>
                                                <label for="check19"><span><i class="fa fa-check"></i></span>3 Star</label></li>
                                            <li class="custom-check"><input type="checkbox" id="check20" name="checkbox"/>
                                                <label for="check20"><span><i class="fa fa-check"></i></span>4 Star</label></li>
                                            <li class="custom-check"><input type="checkbox" id="check21" name="checkbox"/>
                                                <label for="check21"><span><i class="fa fa-check"></i></span>5 Star</label></li>
                                        </ul>
                                    </div><!-- end panel-body -->
                                </div><!-- end panel-collapse -->
                            </div><!-- end panel-default -->

                        </div><!-- end panel-group -->

                        <div class="price-slider">
                            <p><input type="text" id="amount" readonly></p>
                            <div id="slider-range"></div>
                        </div><!-- end price-slider -->
                    </div><!-- end side-bar-block -->

                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-12">
                            <div class="side-bar-block main-block ad-block">
                                <div class="main-img ad-img">
                                    <a href="#">
                                        <img src="images/car-ad.jpg" class="img-responsive" alt="car-ad" />
                                        <div class="ad-mask">
                                            <div class="ad-text">
                                                <span>Luxury</span>
                                                <h2>Car</h2>
                                                <span>Offer</span>
                                            </div><!-- end ad-text -->
                                        </div><!-- end columns -->
                                    </a>
                                </div><!-- end ad-img -->
                            </div><!-- end side-bar-block -->
                        </div><!-- end columns -->

                        <div class="col-xs-12 col-sm-6 col-md-12">
                            <div class="side-bar-block support-block">
                                <h3>Need Help</h3>
                                <p>Lorem ipsum dolor sit amet, ad duo fugit aeque fabulas, in lucilius prodesset pri. Veniam delectus ei vis. Est atqui timeam mnesarchum.</p>
                                <div class="support-contact">
                                    <span><i class="fa fa-phone"></i></span>
                                    <p>+1 123 1234567</p>
                                </div><!-- end support-contact -->
                            </div><!-- end side-bar-block -->
                        </div><!-- end columns -->

                    </div><!-- end row -->
                </div><!-- end columns -->

            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end tour-listing -->
</section>

