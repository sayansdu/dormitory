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
                    <h3>Login</h3>
                    <ul>
                        <li><a href="index.jsp">Home</a></li>
                        <li>/</li>
                        <li>Login</li>
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
                    <h4>Login</h4>
                    <div class="sep_line"></div><!-- separator line -->
                </div>
                
                <div class="clear20"></div>
                
                <div class="outerThreeFourths" >
                    <div id="respon">
                                
                        <form action="/Dormitory/login" method="post" id="commentform">
            
                            <label for="author">
                                Email:  *                    </label>
                            <input type="text" name="email" id="login" value="" size="22" tabindex="1" class="nameInput" required>
                            
                            <label for="email">
                                Password:  *                   </label>
                            <input type="password" name="password" id="password" value="" size="22" tabindex="2" class="nameInput" required>
                                <% if(session.getAttribute("login-error")!=null){ %>
                                <br>
                                <%= session.getAttribute("login-error") %>
                                <% } %>
                            
                            <br>
                            
                            <input name="submit" type="submit" id="submit" tabindex="5" value="Submit">
                            
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
