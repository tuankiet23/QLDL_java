<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 8/21/2021
  Time: 9:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<section class="innerpage-wrapper">
    <div id="tour-details" class="innerpage-section-padding">
        <div class="container">
            <div class="row">

                <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9 content-side">
                    <%--<c:forEach var="item" items="${item}">--%>
                    <div class="detail-slider">
                        <div class="feature-slider">
                            <div>
                                <img src="<c:url value="/resources/images/${item.images}"/>" class="img-responsive"
                                     alt="feature-img" style="width:848px;height:494px;"/></div>
                        </div>


                        <ul class="list-unstyled features tour-features">
                            <li>
                                <div class="f-icon"><i class="fa fa-clock"></i></div>
                                <div class="f-text"><p class="f-heading">Thời lượng:</p>
                                    <p class="f-data">${item.thoiLuong}</p></div>
                            </li>
                            <li>
                                <div class="f-icon"><i class="fa fa-calendar"></i></div>
                                <div class="f-text"><p class="f-heading">Ngày đi:</p>
                                    <p class="f-data">${item.ngayDi}</p></div>
                            </li>
                            <li>
                                <div class="f-icon"><i class="fa-usd" aria-hidden="true"></i></div>
                                <div class="f-text"><p class="f-heading">Giá:</p>
                                    <p class="f-data">${item.giaNguoilon}VNĐ</p></div>
                            </li>
                        </ul>
                    </div>

                    <div class="detail-tabs">
                        <ul class="nav nav-tabs nav-justified">
                            <li class="active"><a href="#tour-information" data-toggle="tab">Thông tin tour</a></li>
                            <li><a href="#flight" data-toggle="tab">Lịch trình</a></li>
                            <li><a href="#map-overview" data-toggle="tab">View Map</a></li>

                        </ul>

                        <div class="tab-content">

                            <div id="tour-information" class="tab-pane in active">
                                <div class="row">
                                    <p>${item.thongTinct}</p>
                                </div><!-- end row -->
                            </div><!-- end hotel-overview -->

                            <div id="flight" class="tab-pane">
                                <div class="row">
                                    <p>${item.lichTrinh}</p>
                                </div><!-- end row -->
                            </div><!-- end restaurant -->

                            <div id="map-overview" class="tab-pane">
                                <div class="row">
                                    <div class="col-sm-4 col-md-4 tab-img">
                                        <img src="images/hotel-detail-tab-3.jpg" class="img-responsive"
                                             alt="flight-detail-img"/>
                                    </div><!-- end columns -->

                                    <div class="col-sm-8 col-md-8 tab-text">
                                        <h3>Điều khoản</h3>
                                        <p></p>
                                    </div><!-- end columns -->
                                </div><!-- end row -->
                            </div><!-- end pick-up -->

                        </div><!-- end tab-content -->
                    </div>
                    <div class="available-blocks" id="available-tours">
                        <h2>Tour liên quan</h2>
                        <c:forEach var="item" items="${items}">
                            <div class="list-block main-block t-list-block">
                                <div class="list-content">
                                    <div class="main-img list-img t-list-img">
                                        <a href="tour-detail-right-sidebar.html">
                                            <img src="<c:url value="/resources/images/${item.images}"/>"
                                                 class="img-responsive" alt="tour-img"/>
                                        </a>
                                        <div class="main-mask">
                                            <ul class="list-unstyled list-inline offer-price-1">
                                                <li class="price">$568.00<span class="divider">|</span><span
                                                        class="pkg">7 Days Tour</span></li>
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
                                        <h3 class="block-title"><a
                                                href="tour-detail-right-sidebar.html">${item.tenTour}</a></h3>
                                        <p class="block-minor">2 Adults, 02 Kids</p>
                                        <p>Lorem ipsum dolor sit amet, ad duo fugit aeque fabulas, in lucilius prodesset
                                            pri. Veniam delectus ei vis. Est atqui timeam mnesarchum at, pro an eros
                                            perpetua ullamcorper.</p>
                                        <a href="tour-detail-right-sidebar.html" class="btn btn-orange btn-lg">View
                                            More</a>
                                    </div><!-- end t-list-info -->
                                </div><!-- end list-content -->
                            </div>
                            <!-- end t-list-block -->
                        </c:forEach>

                    </div><!-- end available-tours -->

                    <div class="pages">
                        <ol class="pagination">
                            <li><a href="#" aria-label="Previous"><span aria-hidden="true"><i
                                    class="fa fa-angle-left"></i></span></a></li>
                            <li class="active"><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#" aria-label="Next"><span aria-hidden="true"><i class="fa fa-angle-right"></i></span></a>
                            </li>
                        </ol>
                    </div><!-- end pages -->
                </div><!-- end columns -->

                <div class="col-xs-12 col-sm-12 col-md-3 side-bar right-side-bar">

                    <div class="side-bar-block booking-form-block">
                        <h2 class="selected-price"><span>FORM ĐĂNG KÝ</span></h2>

                        <div class="booking-form">
                            <h3 style="text-align: center">Book Tour</h3>
                            <form method="post" action="/home/addconfirmed">
                                <input id="maDattour" name="maDattour" value="0" hidden/>
                                <input id="maTinhTrang" name="maTinhTrang" value="1" hidden/>
                                <input id="maTour" name="maTour" value="${item.maTour}" hidden/>
                                <input id="maKd" name="maKd" value="0" hidden/>
                                <div class="form-group">
                                    <input type="text" id="tenKh" name="tenKh" class="form-control" placeholder="Họ tên"
                                           required/>
                                </div>

                                <div class="form-group">
                                    <input type="text" id="diaChi" name="diaChi" class="form-control"
                                           placeholder="Địa chỉ" required/>
                                </div>

                                <div class="form-group">
                                    <input type="email" id="email" name="email" class="form-control" placeholder="Email"
                                           required/>
                                </div>

                                <div class="form-group">
                                    <input type="text" id="sdt" name="sdt" class="form-control" placeholder="Phone"
                                           required/>
                                </div>

                                <div class="row">
                                    <div class="col-sm-6 col-md-12 col-lg-6 no-sp-r">
                                        <div class="form-group right-icon">

                                            <select id="soNguoilon" name="soNguoiLon" class="form-control">
                                                <option value="0">Số người lớn</option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6">6</option>
                                            </select>

                                        </div>
                                    </div>

                                    <div class="col-sm-6 col-md-12 col-lg-6 no-sp-l">
                                        <div class="form-group ">
                                            <select id="soTreem" name="soTreem" class="form-control ">
                                                <option value="0">Số trẻ em</option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6">6</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <input type="text" id="chiThich" name="chuThich" class="form-control"
                                       placeholder="Ghi chú" required/>

                                <div class="checkbox custom-check">
                                    <input type="checkbox" id="check01" name="checkbox"/>
                                    <label for="check01"><span><i class="fa fa-check"></i></span>By continuing, you are
                                        agree to the <a href="#">Terms & Conditions.</a></label>
                                </div>

                                <button class="btn btn-block btn-orange">XÁC NHẬN</button>
                            </form>

                        </div><!-- end booking-form -->
                    </div><!-- end side-bar-block -->

                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-12">
                            <div class="side-bar-block main-block ad-block">
                                <div class="main-img ad-img">
                                    <a href="#">
                                        <img src="<c:url value="/resources/images/car-ad.jpg"/>" class="img-responsive"
                                             alt="car-ad"/>
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
                                <p>Lorem ipsum dolor sit amet, ad duo fugit aeque fabulas, in lucilius prodesset pri.
                                    Veniam delectus ei vis. Est atqui timeam mnesarchum.</p>
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
    </div><!-- end tour-details -->
</section>
<!-- end innerpage-wrapper -->