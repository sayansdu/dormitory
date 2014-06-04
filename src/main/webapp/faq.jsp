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
                    <h3>FAQ's</h3>
                    <ul>
                        <li><a href="index.jsp">Home</a></li>
                        <li>/</li>
                        <li>FAQ's</li>
                    </ul>
                </div><!-- end call information -->
            </div>
            
        </div><!-- end menu wrap -->
    </div><!-- end header section -->
    <!-- start main -->
    <div id="main">
        <!-- start main wrap -->
        <div class="main-wrap">
            <div class="separator">
                <h4>FAQ's</h4>
                <div class="sep_line"></div><!-- separator line -->
            </div>
            <div class="clear20"></div>
            <li style=" width:100%;">
                <!-- start toggles -->                
                <div class="toggles">
                    <ul>
                        <li>
                            <a href="#" data-rel="toggle[first]" data-openimage="./images/minus.png" data-closedimage="images/plus.png">
                                <img src="images/plus.png" alt=""><h4>Some question here?</h4></a>
                                <div id="first">
                                    <p>Some questionSome questionSome questionSome questionSome questionSome question</p>
                                </div>
                            </li>
                            <li>
                                <a href="#" data-rel="toggle[second]" data-openimage="./images/minus.png" data-closedimage="images/plus.png">
                                    <img src="images/plus.png" alt=""><h4>Some question here?</h4></a> 
                                    <div id="second">
                                        <p>Some questionSome questionSome questionSome questionSome questionSome question</p>
                                    </div>
                                </li>
                                <li>
                                    <a href="#" data-rel="toggle[third]" data-openimage="./images/minus.png" data-closedimage="images/plus.png">
                                        <img src="images/plus.png" alt=""><h4>Some question here?</h4></a>
                                        <div id="third">
                                            <p>
                                                Some questionSome questionSome questionSome questionSome questionSome question</p>
                                            </div>
                                        </li>
                                    </ul>
                                </div><!-- end toggles -->
                            </li>
                            <div id="respon">
                                <br>
                                <h3>Add some question</h3>
                                <div class="dash-line"></div>
                                <form action="#" method="post" id="commentform">    
                                    <label for="author">
                                        Name:  *                    </label>
                                        <input type="text" name="name" id="name" value="" size="22" tabindex="1" class="nameInput" required>
                                        <label for="comment">
                                            Your Question: *                   </label>
                                            <textarea name="comment" id="comment" tabindex="4" class="messageInput" required></textarea>
                                            <br>
                                            <input name="submit" type="submit" id="submit" tabindex="5" value="Add Question">
                                        </form>
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
