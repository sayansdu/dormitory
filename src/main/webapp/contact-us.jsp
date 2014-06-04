<%@include file="head.jsp"%>
 <!-- start logo -->
                <div class="logo">
                    <a href="index.jsp"><img src="images/logo.png" alt=""></a>
                </div><!-- end logo -->
            </div><!-- end main menu wrap -->
            
            <div id="search-wrap">
                <!-- start searchBar -->
                <div class="search">
                    <form class="searchForm">
                        <input class="searchInput" title="Search" type="text" value="Start Searching...">
                        <input class="searchBtn" name="action_results" value="Go" title="Go" type="submit">
                    </form>
                </div><!-- end searchBar -->
                
                <!-- start call information -->
                <div class="cat">
                    <h3>Contact Us</h3>
                    <ul>
                        <li><a href="index.jsp">Home</a></li>
                        <li>/</li>
                        <li>Contact Us</li>
                    </ul>
                </div><!-- end call information -->
            </div>
            
        </div><!-- end menu wrap -->
    </div><!-- end header section -->
    
    <!-- start main -->
    <div id="main">
        <!-- start main wrap -->
        <div class="main-wrap">
            <!-- start main contact-us --> 
            
                <div class="separator">
                    <h4>Contact info</h4>
                    <div class="sep_line"></div><!-- separator line -->
                </div>
                
                <div class="clear20"></div>
                
                <div class="outerOneThird">
                <div class="outerOneFourth ">
                    <div class="frame">
                        <h4>Our location</h4>
                        <p>RK Kaskelen</p>
                        <p>Abylaikhan 95</p>
                        
                        <div class="clear20"></div>
                        
                        <h4>Contact Info:</h4>
                        <p>+7 727 307 95 65</p>
                        <p>+7 727 307 95 65</p>
                        <p>info@site.com</p>
                        
                        <div class="clear20"></div>
                        
                        <h4>Hours of Operation:</h4>
                        <p>Monday - Friday</p>
                        <p>9:00 - 18:00</p>
                        <p>Saturday & Sunday</p>
                        <p>Day off</p>
                    </div>
                
            </div><!-- end main contact-us -->
                </div>
                
                <div class="outerTwoThirds last">
                   <div id="map2">
                  <iframe src="https://mapsengine.google.com/map/embed?mid=zO550TmIBtRo.k7cOSb37cepA" width="585" height="350"></iframe>
                   </div>
                <span class="shadowHolderflat"><img src="images/big-shadow4.png" alt=""></span>
                </div>
                
                <div class="clear40"></div>
                
                <div class="separator">
                    <h4>Contact Form</h4>
                    <div class="sep_line"></div><!-- separator line -->
                </div>
                
                <div class="clear20"></div>
                
                <div class="outerThreeFourths">
                    <div id="respon">
                                
                        <form action="#" method="post" id="commentform">    
            
                            <label for="author">
                                Name:  *                    </label>
                            <input type="text" name="author" id="author" value="" size="22" tabindex="1" class="nameInput">
                            
                            <label for="email">
                                Email:  *                   </label>
                            <input type="text" name="email" id="email" value="" size="22" tabindex="2" class="emailInput">  
                            
                            <label for="comment">
                                Your Message:                   </label>
                            <textarea name="comment" id="comment" tabindex="4" class="messageInput"></textarea>
                            <br>
                            
                            <input name="submit" type="submit" id="submit" tabindex="5" value="Send Message">
                            
                        </form>
                                
                    </div>
                </div>
                
                
        </div><!-- end main wrap-->
    </div><!-- end main-->
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

    <%@include file="footer.jsp"%>
    </div><!-- end footer -->
    
</div>
<div class="clear"></div>
<div id="footerShadow" class="boxed boxed"><div class="shadowHolderflat"><img src="images/big-shadow.png" alt=""></div></div>
</body>

</html>
