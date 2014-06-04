<%@ page import="com.example.dormitory.entity.User" %>
<!DOCTYPE HTML>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>SDU - Dormitory</title>

    <!-- Style -->
    <link href="/Dormitory/css/style.css" rel="stylesheet" type="text/css">
    <link rel="icon" href="/Dormitory/images/icon.png" type="image/x-icon">

    <!-- Javascript -->
    <script type="text/javascript" src="/Dormitory/js/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="/Dormitory/js/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="/Dormitory/js/jquery.cycle.all.min.js"></script>
    <script type="text/javascript" src="/Dormitory/js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="/Dormitory/js/jquery.tipsy.js"></script>
    <script type="text/javascript" src="/Dormitory/js/custom.js"></script>
    <script type="text/javascript" src="/Dormitory/js/animatedcollapse.js"></script>
    <script type="text/javascript" src="/Dormitory/js/input.js"></script>
    <script type="text/javascript" src="/Dormitory/js/jquery.nivo.slider.pack.js"></script>
    <script type="text/javascript" src="/Dormitory/js/nivoslider.js"></script>
    <script type="text/javascript" src="/Dormitory/js/slide.js"></script>
    <script type="text/javascript" src="/Dormitory/js/slides.min.jquery.js"></script>
    <script type="text/javascript" src="/Dormitory/js/jquery.preloader.js"></script>
    <script type="text/javascript" src="js/jquery.eislideshow.js"></script>
    <script type="text/javascript" src="/Dormitory/js/jquery.ui.totop.js"></script>
    <script type="text/javascript" src="/Dormitory/js/bootstrap.min.js"></script>
</head>

<body>

<div class="wrap boxed">
    <div id="header">
        <div class="menu-wrap">
            <!-- start menu wrap -->
            <div class="main-menu-wrap">
                <div class="main-menu">
                    <ul>
                        <li class="active"><a href="/Dormitory/index.jsp">HOME<span>&nbsp;</span></a></li>
                        <li><a href="#">ABOUT<span>&nbsp;</span></a>
                            <ul>
                                <li><a href="/Dormitory/about-us.jsp">About us</a></li>
                                <li><a href="/Dormitory/about-staff.jsp">About Staff</a></li>
                                <li><a href="/Dormitory/about-price.jsp">Prices</a></li>
                            </ul>
                        </li>
                        <% if(session.getAttribute("current_user")!=null){ %>
                        <li><a href="/Dormitory/user/news/all">NEWS & EVENTS<span>&nbsp;</span></a></li>
                        <% } %>
                        <li><a href="/Dormitory/faq.jsp">FAQ's<span>&nbsp;</span></a></li>
                        <li><a href="/Dormitory/gallery.jsp">GALLERY<span>&nbsp;</span></a></li>
                        <li><a href="/Dormitory/contact-us.jsp">CONTACT<span>&nbsp;</span></a></li>

                        <% if(session.getAttribute("current_user")!=null){
                            User user = (User) session.getAttribute("current_user");
                            if(user.getStatus().equals("stuff")){
                        %>
                        <li><a>MY<span>&nbsp;</span></a>
                            <ul>
                                <li><a href="/Dormitory/stuff/my_page">My page</a></li>
                                <li><a href="/Dormitory/stuff/registration.jsp">Student Registration</a></li>
                                <li><a href="/Dormitory/stuff/student/get_all">List of Students</a></li>
                            </ul>
                        </li>
                        <% }
                        }%>

                        <% if(session.getAttribute("current_user")==null){ %>
                        <li><a href="/Dormitory/login.jsp">LOGIN<span>&nbsp;</span></a></li>
                        <% } else { %>
                        <li><a href="/Dormitory/logout">LOGOUT<span>&nbsp;</span></a></li>
                        <% } %>
                    </ul>
                </div>
