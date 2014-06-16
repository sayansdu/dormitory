<%@include file="header.jsp"%>
        <!-- start logo -->
        <div class="logo">
            <a href="index.jsp"><img src="images/logo.png" alt=""></a>
        </div><!-- end logo -->
    </div><!-- end main menu wrap -->

    <div id="search-wrap">
         <div class="search">
                    <form class="searchForm"><h3>Hello Admin!</h3>
                    </form>
                </div><!-- end searchBar -->

        <!-- start call information -->
        <div class="cat">
            <h3>Student Registration</h3>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li>/</li>
                <li>My</li>
                <li>/</li>
                <li>Student Registration</li>
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
            <h4>Student Registration</h4>
            <div class="sep_line"></div><!-- separator line -->
        </div>

        <div class="clear20"></div>

        <div class="outerThreeFourths" >
            <div id="respon">

                <form action="/Dormitory/registration" method="post" id="commentform" enctype="multipart/form-data">
                    <label for="email">Name:  *</label>
                    <input type="text" name="name"  value="" size="22" tabindex="1" class="nameInput" required>  
                    <label for="email">Surname:  *</label>
                    <input type="text" name="surname"  value="" size="22" tabindex="2" class="nameInput" required>  
                    <label for="author">E-mail:  *</label>
                    <input type="text" name="email" value="" size="22" tabindex="3" class="nameInput" required>
                    <% if(session.getAttribute("email-error")!=null){ %>
                    <%= session.getAttribute("email-error")%>
                    <% } %>
                    <label for="author">Photo:  * </label>
                    <input type="file" name="file" id="file" value="" size="22" tabindex="2"  required>

                    <label for="author">Faculty:  *</label>
                    <select  class="nameInput" name="faculty" required tabindex="4">
                        <option >Select Faculty</option>
                        <option value="Engineering">Engineering</option>
                        <option value="Eco">Eco</option>
                        <option value="Law">Law</option>
                        <option value="Philology">Philology</option>
                    </select>
                    <label for="author">Course:  *</label>
                    <select  class="nameInput" name="course" required tabindex="4">
                        <option >Select Group</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                    </select>
                    <label for="author">Group:  *</label>
                    <input type="text" name="group"  value="" size="22" tabindex="2" class="nameInput" required>

                    <label for="email">Password:  * </label>
                    <input type="password" name="password" id="password" value="" size="22" tabindex="5" class="nameInput" required>  
                    <label for="email">Confirm Password:  *</label>
                    <input type="password" name="vpassword" id="password" value="" size="22" tabindex="6" class="nameInput" required>
                    <% if(session.getAttribute("vpassword-error")!=null){ %>
                    <%= session.getAttribute("vpassword-error")%>
                    <% } %>
                    <br>
                    <input name="submit" type="submit" id="submit" tabindex="7" value="Submit">
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

    <!-- start post footer -->
    <div class="post-footer">
        <div class="post-footer-wrap">
            <p class="fl">Copyright 2014. All Right Reserved</p>
            <p class="fr">
                <a href="index.jsp">Home </a>
                <a href="about-us.html">About Us </a>
                <a href="news.html">New & Events</a> 
                <a href="faq.html">FAQ's </a>  
                <a href="gallery.html">Gallery</a>
                <a href="contact-us.html">Contact</a></p>
            </div>
        </div><!-- end post footer -->
    </div><!-- end footer -->
    
</div>
<div class="clear"></div>
<div id="footerShadow" class="boxed boxed"><div class="shadowHolderflat"><img src="images/big-shadow.png" alt=""></div></div>
</body>

</html>
