<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 8/10/2021
  Time: 3:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<section id="tour-offers" class="section-padding">
<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <div class="page-heading">
                <h2>TOUR HOT</h2>
                <hr class="heading-line" />
            </div><!-- end page-heading -->

            <div class="owl-carousel owl-theme owl-custom-arrow" id="owl-tour-offers">
            <c:forEach var="item" items="${all}">
                <div class="item">
                    <div class="main-block tour-block">
                        <div class="main-img">
                            <a href="/home/detailtour/${item.maTour}/${item.viewMaTinh}">
                                <img src="<c:url value="/resources/images/${item.images}"/>" class="img-responsive" alt="cruise-img" />
                            </a>
                        </div><!-- end offer-img -->

                        <div class="offer-price-2">
                            <ul class="list-unstyled">
                                <li class="price">${item.giaNguoilon}VNĐ/1 người lớn<a href="#" ><span class="arrow"><i class="fa fa-angle-right"></i></span></a></li>
                            </ul>
                        </div><!-- end offer-price-2 -->

                        <div class="main-info tour-info">
                            <div class="main-title tour-title">
                                <a href="/home/detailtour/${item.maTour}">${item.tenTour}</a>
                            </div><!-- end tour-title -->
                        </div><!-- end tour-info -->
                    </div><!-- end tour-block -->
                </div>
            </c:forEach>
            </div><!-- end owl-tour-offers -->

            <div class="view-all text-center">
                <a href="#" class="btn btn-orange">View All</a>
            </div><!-- end view-all -->
        </div><!-- end columns -->
    </div><!-- end row -->
</div><!-- end container -->
</section><!-- end tour-offers -->



<!--=============== CRUISE OFFERS ===============-->
<section id="cruise-offers" class="section-padding">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="page-heading">
                    <h2>Tour hạng sang</h2>
                    <hr class="heading-line" />
                </div><!-- end page-heading -->

                <div class="row" id="tour-vip">
                <c:forEach var="item" items="${items}">
                    <div class="col-sm-6 col-md-6">
                        <div class="main-block cruise-block">
                            <div class="row">
                                <div class="col-sm-12 col-md-6 col-md-push-6 no-pd-l">
                                    <div class="main-img cruise-img">
                                        <a href="/home/detailtour/${item.maTour}/${item.viewMaTinh}">
                                            <img src="<c:url value="/resources/images/${item.images}"/>"  class="img-responsive" alt="cruise-img" />
                                            <div class="cruise-mask">
                                                <p>${item.thoiLuong}</p>
                                            </div><!-- end cruise-mask -->
                                        </a>
                                    </div><!-- end cruise-img -->
                                </div><!-- end columns -->

                                <div class="col-sm-12 col-md-6 col-md-pull-6 no-pd-r">
                                    <div class=" main-info cruise-info">
                                        <div class="main-title cruise-title">
                                            <a href="/home/detailtour/${item.maTour}">${item.tenTour}</a>
                                            <p>From: ${item.viewTinh}</p>
                                            <span class="cruise-price">${item.giaNguoilon}/1 người lớn</span>
                                        </div><!-- end cruise-title -->
                                    </div><!-- end cruise-info -->
                                </div><!-- end columns -->

                            </div><!-- end row -->
                        </div><!-- end cruise-block -->
                    </div>
                </c:forEach>
                </div><!-- end row -->

                <div class="view-all text-center">
                    <a href="/home/listtourvip" class="btn btn-orange">View All</a>
                </div><!-- end view-all -->
            </div><!-- end columns -->
        </div><!-- end row -->
    </div><!-- end container -->
</section><!-- end cruise-offers -->

<!--=============== CRUISE OFFERS ===============-->
<section id="cruise-offers" class="section-padding">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="page-heading">
                    <h2>Tour phổ biến</h2>
                    <hr class="heading-line" />
                </div><!-- end page-heading -->

                <div class="row">
                    <c:forEach var="item" items="${item1}">
                        <div class="col-sm-6 col-md-6">
                            <div class="main-block cruise-block">
                                <div class="row">
                                    <div class="col-sm-12 col-md-6 col-md-push-6 no-pd-l">
                                        <div class="main-img cruise-img">
                                            <a href="#">
                                                <img src="<c:url value="/resources/images/${item.images}"/>"  class="img-responsive" alt="cruise-img"  href="/home/detailtour/${item.maTour}/${item.viewMaTinh}"/>
                                                <div class="cruise-mask">
                                                    <p>${item.thoiLuong}</p>
                                                </div><!-- end cruise-mask -->
                                            </a>
                                        </div><!-- end cruise-img -->
                                    </div><!-- end columns -->

                                    <div class="col-sm-12 col-md-6 col-md-pull-6 no-pd-r">
                                        <div class=" main-info cruise-info">
                                            <div class="main-title cruise-title">
                                                <a href="/home/detailtour/${item.maTour}">${item.tenTour}</a>
                                                <p>From: ${item.viewTinh}</p>
                                                <span class="cruise-price">${item.giaNguoilon}/1 người lớn</span>
                                            </div><!-- end cruise-title -->
                                        </div><!-- end cruise-info -->
                                    </div><!-- end columns -->

                                </div><!-- end row -->
                            </div><!-- end cruise-block -->
                        </div>
                    </c:forEach>
                </div><!-- end row -->

                <div class="view-all text-center">
                    <a href="/home/listtourthuong" class="btn btn-orange">View All</a>
                </div><!-- end view-all -->
            </div><!-- end columns -->
        </div><!-- end row -->
    </div><!-- end container -->
</section><!-- end cruise-offers -->
<%--<script src="<c:url value="/resources/js/home/tourvip.js"/>"></script>--%>
<%--<script src="<c:url value="/resources/js/home/tourhot.js"/>"></script>--%>
