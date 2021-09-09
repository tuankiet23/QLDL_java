
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>

<!doctype html>
<html lang="en">
<head>
    <title>Index</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <link href="<c:url value="/resources/images/favicon.png"/>" rel="icon" type="image/x-icon"/>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,700i,900,900i%7CMerriweather:300,300i,400,400i,700,700i,900,900i" rel="stylesheet">

    <script src="<c:url value="/resources/js/jquery.min.js"/>"></script>


    <!-- Bootstrap Stylesheet -->
    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet"/>

    <link href="<c:url value="/resources/css/font-awesome.min.css"/>" rel="stylesheet"/>
    <!-- Custom Stylesheets -->
    <link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet"/>
    <link href="<c:url value="/resources/css/orange.css"/>" rel="stylesheet" id="cpswitch"/>
    <link href="<c:url value="/resources/css/responsive.css"/>" rel="stylesheet"/>

    <!-- Owl Carousel Stylesheet -->
    <link href="<c:url value="/resources/css/owl.carousel.css"/>" rel="stylesheet"/>
    <link href="<c:url value="/resources/css/owl.theme.css"/>" rel="stylesheet"/>
    <!-- Flex Slider Stylesheet -->
    <link href="<c:url value="/resources/css/flexslider.css"/>" rel="stylesheet" type="text/css"/>
    <!--Date-Picker Stylesheet-->
    <link href="<c:url value="/resources/css/datepicker.css"/>" rel="stylesheet"/>
    <!-- Magnific Gallery -->
    <link href="<c:url value="/resources/css/magnific-popup.css"/>" rel="stylesheet"/>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />


</head>

<body id="main-homepage">

<!--====== LOADER =====-->
<jsp:include page="/commom/client/header.jsp"/>


<!--=============== TOUR OFFERS ===============-->
<dec:body/>

<!--========================= NEWSLETTER-1 ==========================-->
<jsp:include page="/commom/client/footer.jsp"/>


<!-- Page Scripts Starts -->




<script src="<c:url value="/resources/js/jquery.magnific-popup.min.js"/>"></script>

<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>

<script src="<c:url value="/resources/js/jquery.flexslider.js"/>"></script>

<script src="<c:url value="/resources/js/bootstrap-datepicker.js"/>"></script>

<script src="<c:url value="/resources/js/owl.carousel.min.js"/>"></script>

<script src="<c:url value="/resources/js/custom-navigation.js"/>"></script>

<script src="<c:url value="/resources/js/custom-flex.js"/>"></script>

<script src="<c:url value="/resources/js/custom-owl.js"/>"></script>

<script src="<c:url value="/resources/js/custom-date-picker.js"/>"></script>

<script src="<c:url value="/resources/js/custom-video.js"/>"></script>
<!-- Page Scripts Ends -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
</body>
</html>
