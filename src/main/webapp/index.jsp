<%@ page import="com.example.dormitory.entity.User" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>SDU - Dormitory</title>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <!-- Style -->
    <link href="/Dormitory/css/style.css" rel="stylesheet" type="text/css">
    <link rel="icon" href="/Dormitory/images/icon.png" type="image/x-icon">
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
    <script type="text/javascript" src="/Dormitory/js/jquery.eislideshow.js"></script>
    <script type="text/javascript" src="/Dormitory/js/jquery.ui.totop.js"></script>

</head>

<body>

<div class="wrap">
    <div id="headerSlider">
        <div class="menu-wrap">
            <!-- start menu wrap -->
            <div class="main-menu-wrap">
                <!-- start main menu -->
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
                </div><!-- end main menu -->

            <!-- start logo -->
            <div class="logo">
               <a href="index.jsp"><img src="images/logo.png" alt=""></a>
           </div><!-- end logo -->
       </div><!-- end main menu wrap -->
   </div><!-- end menu wrap -->
   <div id="search-wrap">
    <!-- start searchBar -->
    <div class="search">
        <form class="searchForm">
            <input class="searchInput" title="Search" type="text" value="Start Searching...">
            <input class="searchBtn" name="action_results" value="Go" title="Go" type="submit">
        </form>
    </div><!-- end searchBar -->

    <!-- start call information -->
    <div class="call">
        Call Information: <br>
        <h2>+7 727 307 95 65</h2>
    </div><!-- end call information -->
</div>
</div><!-- end header section -->

<div class="clear"></div>

<div id="main">
    <div class="main-wrap">

       <!-- start slider -->
       <div id="slider">      
        <!-- start nivo slider -->
        <div class="slider-wrapper theme-default">
            <div id="sliderv" class="nivoSlider">
                <img src="images/banner.jpg" alt="" title="<p><span><b>SDU</b> <i>Best Dormitory</b></span></p>">
                <img src="images/banner2.jpg" alt="" title="#htmlcaption">
            </div>
            <span class="shadowHolderflat"><img src="images/big-shadow.png" alt=""></span>
        </div>
        <div id="htmlcaption" class="nivo-html-caption">
            <h4>This is an info</h4>
            <p><span>Welcome to Dormitory.</span></p>
        </div><!-- end nivo slider -->
    </div><!-- end slider -->

    <div class="sep_lines"></div><!-- separator line -->

    <!-- start promo box -->
    <div class="promo-box">
        <p>Welcome to <span>Suleyman Demirel University Dormitory</span>.
            some info here...</p>      
        </div><!-- end promo box -->

        <div class="clear20"></div>

        <!-- start three columns-->
        <div class="outerOneHalf">
            <h3>Why we?</h3>

            <p>some info...</p>
        </div>
        <div class="outerOneHalf last">
            <h3>About rooms...</h3>
            <p>some info...</p>
        </div><!-- end three columns -->

        <div class="clear20"></div>

        <div class="separator">
            <h4>Our rooms</h4>
            <div class="sep_line"></div><!-- separator line -->
        </div>

        <div class="clear20"></div>

        <!-- start Rooms-->
        <div class="outerOneThird">
            <span class="imageWrap">
                <a href="images/room.jpg" data-rel="prettyPhoto" >
                    <img src="images/room.jpg" alt=""><span><span></span></span>
                </a>           
            </span>
            <span class="shadowHolder"><img src="images/small-shadow.png" alt=""></span>
            <h3><a href="#">About rooms...</a></h3><br>
            <p>some info about....</p><br>
            <a class="buttonPro" href="gallery.jsp" >Learn More</a>
        </div>
        <div class="outerOneThird">
            <span class="imageWrap">
                <a href="http://www.youtube.com/watch?v=9ul0Qrlcu3s" data-rel="prettyPhoto" >
                    <img src="images/room.jpg" alt="">
                    <span><span class="youtube"></span></span>
                </a>           
            </span>
            <span class="shadowHolder"><img src="images/small-shadow.png" alt=""></span>
            <h3><a href="#">About rooms...</a></h3><br>
            <p>some info about....</p><br>
            <a class="buttonPro" href="gallery.jsp" >Learn More</a>
        </div>
        <div class="outerOneThird last">
            <span class="imageWrap">
                <a href="images/room.jpg" data-rel="prettyPhoto" >
                    <img src="images/room.jpg" alt="">
                    <span><span></span></span>
                </a>           
            </span>
            <span class="shadowHolder"><img src="images/small-shadow.png" alt=""></span>
            <h3><a href="#">About rooms...</a></h3><br>
            <p>some info about....</p><br>
            <a class="buttonPro" href="gallery.jsp" >Learn More</a>
        </div><!-- end three columns -->
        <div class="clear20"></div>




    </div><!-- end main wrap -->
</div><!-- end main -->

<div class="clear20"></div>

<!-- start testimonial -->
<div class="testimonial-wrap">
  <div class="testimonial">
   <ul>
       <li>
           <p>&quot;Beautiful design, <span>good rooms</span>!&quot;</p>
       </li>
       <li>
           <p>&quot;Welcome to <span>Suleyman Demirel University Dormitory</span>.
            some info here...&quot;</p>
        </li>

    </ul>
</div>
</div><!-- end testimonial -->

<!-- start footer -->
<div id="footer" class="boxed">

    <!-- start post footer -->
    <%@include file="footer.jsp"%>
    <!-- end post footer -->
    </div><!-- end footer -->
    
</div>
<div class="clear"></div>
<div id="footerShadow" class="boxed boxed"><div class="shadowHolderflat"><img src="images/big-shadow.png" alt=""></div></div>
</body>

</html>
