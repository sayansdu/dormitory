<%@ page import="java.util.List" %>
<%@ page import="com.example.dormitory.entity.Post" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@include file="header.jsp"%>
                <!-- start logo -->
                <div class="logo">
                    <a href="index.jsp"><img src="images/logo.png" alt=""></a>
                </div><!-- end logo -->
            </div><!-- end main menu wrap -->
            
            <div id="search-wrap">
                <!-- start searchBar -->
                <div class="search">
                    <form class="searchForm"><h3>Hello Admin!</h3>
                    </form>
                </div><!-- end searchBar -->
                
                <!-- start call information -->
                <div class="cat">
                    <h3>News & Events</h3>
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
            <li style=" width:100%;">
                <!-- start toggles -->                
                <div class="toggles">
                    <ul>
                        <li>
                            <a href="#" data-rel="toggle[third]" data-openimage="./images/minus.png" data-closedimage="images/plus.png">
                                <img src="images/plus.png" alt=""><h4>Add post</h4></a>
                                <div id="third">
                                    <div id="respon" style="padding:20px;background:#fff;">

                                        <form action="/Dormitory/news/create" method="post" id="commentform" enctype="multipart/form-data">
                                            <label for="author">Title:  * </label>
                                            <input type="text" name="title" id="name" value="" size="22" tabindex="1" class="nameInput" required>
                                            <label for="author">Image:  * </label>
                                            <input type="file" name="file" id="file" value="" size="22" tabindex="1"  required>
                                            <label for="comment">Message: * </label>
                                            <textarea name="content" id="ckeditor_full" tabindex="4"  class="messageInput" required></textarea>
                                            <br>
                                            <label for="author">Status:  *</label>
                                            <select  class="nameInput" name="status" required tabindex="4">
                                                <option value="archived" >archived</option>
                                                <option value="published" selected>published</option>
                                            </select>
                                            <br>
                                            <input name="submit" type="submit" id="submit" tabindex="5" value="Add Post">
                                        </form>
                                    </div>
                                </li>
                            </ul>
                        </div><!-- end toggles -->
                    </li>
                    <div id="blog">
                        <!-- start blog post -->
                        <div class="blog-post">

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
                                                     <a href="../getImage.jsp?img_id=<%= news.get(i).getId() %>" data-rel="prettyPhoto" >
                                                         <img src="../getImage.jsp?img_id=<%= news.get(i).getId() %>" alt="" />
                                                         <span><span></span></span>
                                                     </a>
                                                </span>
                                            </div>
                                        <% } %>
                                        <div class="textBlogclassic">
                                            <h3>
                                                <a href="#"><%= news.get(i).getTitle() %></a>
                                            </h3>
                                            <ul class="tags">
                                                <li class="date">
                                                    <% SimpleDateFormat format = new SimpleDateFormat("MMMMM dd, yyyy");
                                                        String date =  format.format(news.get(i).getCreate_time());
                                                    %>
                                                    <%= date %>
                                                </li>
                                                <li class="comments"><%= news.get(i).getComments().size()%> Comments</li>
                                            </ul>
                                            <div class="clear"></div>
                                            <%--<p>
                                                <% if(news.get(i).getContent().length()>40) { %>
                                                <%= (news.get(i).getContent().substring(0, 40)+"... ") %>
                                                <% } else { %>
                                                <%= news.get(i).getContent() %>
                                                <% } %>
                                            </p>--%>
                                            <p><a href="/Dormitory/news/get?news_id=<%= news.get(i).getId() %>" class="buttonPro" href="news-details.jsp" >Read More</a></p>
                                            <p><a href="/Dormitory/admin/news/delete?news_id=<%= news.get(i).getId() %>" class="buttonPro">Delete</a></p>
                                            </p>

                                        </div>
                                    </div><!-- end blog post  -->
                                <% } %>
                            <% } %>

                            <div class="clear20"></div>                    
                           <%-- <div class="pages">
                                <ul>
                                    <li><a href="#">Prev</a></li>
                                    <li><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                    <li><a href="#">Next</a></li>
                                </ul>

                            </div>--%>
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
                            <div id="categories">
                                <h3>List of abis</h3>
                                <ul>
                                    <li>
                                        <p><a href="abi-profile.jsp">Sayan abi</a></p>
                                    </li>
                                    <li>
                                        <p><a href="abi-profile.jsp">Bauka abi</a></p>
                                    </li>
                                    <li>
                                        <p><a href="abi-profile.jsp">Talgat abi</a></p>
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
            <script src="vendors/bootstrap-wysihtml5/lib/js/wysihtml5-0.3.0.js"></script>
            <script src="vendors/bootstrap-wysihtml5/src/bootstrap-wysihtml5.js"></script>
            <script src="vendors/ckeditor/ckeditor.js"></script>
            <script src="vendors/ckeditor/adapters/jquery.js"></script>
            <script type="text/javascript" src="vendors/tinymce/js/tinymce/tinymce.min.js"></script>
            <script>
                $(function() {
            // Bootstrap
            $('#bootstrap-editor').wysihtml5();

            // Ckeditor standard
            $( 'textarea#ckeditor_standard' ).ckeditor({width:'98%', height: '150px', toolbar: [
                { name: 'document', items: [ 'Source', '-', 'NewPage', 'Preview', '-', 'Templates' ] }, // Defines toolbar group with name (used to create voice label) and items in 3 subgroups.
                [ 'Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord', '-', 'Undo', 'Redo' ],          // Defines toolbar group without name.
                { name: 'basicstyles', items: [ 'Bold', 'Italic' ] }
                ]});
            $( 'textarea#ckeditor_full' ).ckeditor({width:'98%', height: '150px'});
        });

        // Tiny MCE
        tinymce.init({
            selector: "#tinymce_basic",
            plugins: [
            "advlist autolink lists link image charmap print preview anchor",
            "searchreplace visualblocks code fullscreen",
            "insertdatetime media table contextmenu paste"
            ],
            toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"
        });

        // Tiny MCE
        tinymce.init({
            selector: "#tinymce_full",
            plugins: [
            "advlist autolink lists link image charmap print preview hr anchor pagebreak",
            "searchreplace wordcount visualblocks visualchars code fullscreen",
            "insertdatetime media nonbreaking save table contextmenu directionality",
            "emoticons template paste textcolor"
            ],
            toolbar1: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image",
            toolbar2: "print preview media | forecolor backcolor emoticons",
            image_advtab: true,
            templates: [
            {title: 'Test template 1', content: 'Test 1'},
            {title: 'Test template 2', content: 'Test 2'}
            ]
        });

    </script>
</body>

</html>
