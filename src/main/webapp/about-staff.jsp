<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %>
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
                    <h3>About Staff</h3>
                    <ul>
                        <li><a href="index.jsp">Home</a></li>
                        <li>/</li>
                        <li>About Staff</li>
                    </ul>
                </div><!-- end call information -->
            </div>
            
        </div><!-- end menu wrap -->
    </div><!-- end header section -->
    
    <!-- start main -->
    <div id="main">
        <!-- start main wrap -->
        <div class="main-wrap">
            <div class="clear20"></div>
            
            <div class="separator">
                <h4>About Staff</h4>
                <div class="sep_line"></div><!-- separator line -->
            </div>
            
            <div class="clear20"></div>

            <%
                List<User> stuffs = (List<User>) session.getAttribute("stuffs");
                if(stuffs!=null){
                    for (int i = 0; i < stuffs.size(); i++) {
            %>
                <!-- start about-us  -->
                <div class="outerTwoThirds">
                    <p class="text"><strong>Name: <%= stuffs.get(i).getName()%></strong></p>
                    <p class="text"><strong>Surname: <%= stuffs.get(i).getSurname() %></strong></p>
                    <p class="text">Position: Stuff</p>
                    <p class="text">E-mail: <%= stuffs.get(i).getEmail() %></p>
                    <p class="text">Create time:
                        <% SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
                            String date =  format.format(stuffs.get(i).getCreate_time());
                        %>
                        <%= date %>
                    </p>
                    <br>

                </div>

                <div class="outerOneThird last">
                    <% if(stuffs.get(i).getPhoto()==null){ %>
                    <span class="imageWrap">
                        <img src="images/worker.png" alt="">
                    </span>
                    <span class="shadowHolder"><img src="images/big-shadow5.png" alt=""></span>
                    <%} else { %>
                    <span class="imageWrap">
                        <img src="getPhoto.jsp?img_id=<%= stuffs.get(i).getId() %>" alt="">
                    </span>
                    <% } %>
                </div>

                <div class="dash-line"></div>
            <%      }
                }
            %>

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

    <!-- start post footer -->
    <%@include file="footer.jsp"%>
    </div><!-- end footer -->
    
</div>
<div class="clear"></div>
<div id="footerShadow" class="boxed boxed"><div class="shadowHolderflat"><img src="images/big-shadow.png" alt=""></div></div>
</body>

</html>
