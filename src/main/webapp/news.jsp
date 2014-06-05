<%@ page import="java.util.List" %>
<%@ page import="com.example.dormitory.entity.Post" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@include file="head.jsp"%>
 <!-- start logo -->
                <div class="logo">
                    <a href="index.html"><img src="images/logo.png" alt=""></a>
                </div><!-- end logo -->
            </div><!-- end main menu wrap -->
            
            <div id="search-wrap">
                <!-- start searchBar -->
                <div class="search">
                    <form class="searchForm"><h3>Hello User!</h3>
                        <input class="searchInput" title="Search" type="text" value="Start Searching...">
                        <input class="searchBtn" name="action_results" value="Go" title="Go" type="submit">
                    </form>
                </div><!-- end searchBar -->
                
                <!-- start call information -->
                <div class="cat">
                    <h3>News & Events</h3>
                    <ul>
                        <li><a href="index.html">Home</a></li>
                        <li>/</li>
                        <li>News & Events</li>
                    </ul>
                </div><!-- end call information -->
            </div>
            
        </div><!-- end menu wrap -->
    </div><!-- end header section -->
 <!-- start main -->
    <div id="main">
        <!-- start main wrap -->
        <div class="main-wrap">
            <!-- start main blog-->
            <div class="separator">
                    <h4>News & Events - All posts</h4>
                    <div class="sep_line"></div><!-- separator line -->
                </div>
                <div class="clear20"></div>
            <div id="blog">
                <!-- start blog post -->
                <div class="blog-post">
                    <!-- blog post  -->
                    <% List<Post> news = (List<Post>) session.getAttribute("news"); %>
                    <% if(news!=null) { %>
                    <% for(int i=0; i<news.size(); i++) { %>
                    <div class="post">

                        <% if(news.get(i).getImage()==null){ %>
                        <div class="imageBlogclassic">
                                            <span class="imageWrap">
                                                <a href="images/football.jpg" data-rel="prettyPhoto" >
                                                    <img src="images/football.jpg" alt="" />
                                                    <span><span></span></span>
                                                </a>
                                            </span>
                            <span class="shadowHolder"><img src="images/big-shadow.png" alt="" /></span>
                        </div>
                        <% } else { %>
                        <div class="imageBlogclassic">
                                                <span class="imageWrap">
                                                        <img src="getImage.jsp?img_id=<%= news.get(i).getId() %>" alt="" />
                                                </span>
                        </div>
                        <% } %>
                        <div class="textBlogclassic">
                            <h3>
                                <a href="#"><%= news.get(i).getTitle() %></a>
                            </h3>
                            <ul class="tags">
                                <% SimpleDateFormat format = new SimpleDateFormat("MMMMM dd, yyyy");
                                    String date =  format.format(news.get(i).getCreate_time());
                                %>
                                <%= date %>
                                <li class="comments"><%= news.get(i).getComments().size()%> Comments</li>
                            </ul>
                            <div class="clear"></div>

                            <p><a class="buttonPro" href="/Dormitory/user/news/get?news_id=<%= news.get(i).getId() %>" >Read More</a></p>
                        </div>
                    </div><!-- end blog post  -->
                    <% } %>
                    <% } %>
                    
                    <div class="clear20"></div>                    
                    <div class="pages">
                        <ul>
                            <li><a href="#">Prev</a></li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">Next</a></li>
                        </ul>

                    </div>
                </div><!-- end blogpost --> 
                
                <!-- start sidebar -->
                <div class="sidebar last">
                <div id="categories">
                        <h3>Post Categories</h3>
                        <ul>
                            <li>
                                <p><a href="#">All posts</a></p>
                            </li>
                            <li>
                                <p><a href="#">Admin posts</a></p>
                            </li>
                            <li>
                                <p><a href="#">Abi posts</a></p>
                            </li>
                            
                        </ul>
                    </div>
                    <div id="popularPost">
                        <h3>Popular Post</h3>
                        <ul>
                            <li>
                                <img src="images/pPost1.jpg" alt="">
                                <p><a href="#">some post</a></p>
                                <span>May 2, 2014</span>
                            </li>
                            <li>
                                <img src="images/pPost1.jpg" alt="">
                                <p><a href="#">some post</a></p>
                                <span>May 2, 2014</span>
                            </li>
                            <li>
                                <img src="images/pPost1.jpg" alt="">
                                <p><a href="#">some post</a></p>
                                <span>May 2, 2014</span>
                            </li>
                        </ul>
                    </div>
                    
                    
                </div><!-- end sidebar -->
            </div><!-- end main blog -->

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
