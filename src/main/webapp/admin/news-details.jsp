<%@ page import="com.example.dormitory.entity.Post" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.example.dormitory.entity.User" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.dormitory.entity.Comment" %>
<!DOCTYPE HTML>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>SDU - Dormitory</title>

    <!-- Style -->
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link rel="icon" href="images/icon.png" type="image/x-icon">
    
    <!-- Javascript -->
    <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="js/jquery.cycle.all.min.js"></script>
    <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="js/jquery.tipsy.js"></script>
    <script type="text/javascript" src="js/custom.js"></script>
    <script type="text/javascript" src="js/animatedcollapse.js"></script>
    <script type="text/javascript" src="js/input.js"></script>
    <script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
    <script type="text/javascript" src="js/nivoslider.js"></script>
    <script type="text/javascript" src="js/slide.js"></script>
    <script type="text/javascript" src="js/slides.min.jquery.js"></script>
    <script type="text/javascript" src="js/jquery.preloader.js"></script>
    <script type="text/javascript" src="js/jquery.eislideshow.js"></script>
    <script type="text/javascript" src="js/jquery.ui.totop.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>

<body>

    <div class="wrap boxed">
        <div id="header">
            <div class="menu-wrap">
                <!-- start menu wrap -->
                <div class="main-menu-wrap">
                    <div class="main-menu">
                        <ul>
                            <li><a href="/Dormitory/admin/news/all">NEWS & EVENTS<span>&nbsp;</span></a></li>
                            <li class="active"><a>STAFF<span>&nbsp;</span></a>
                                <ul>
                                    <li><a href="add-staff.jsp">Staff Registration</a></li>
                                    <li class="active"><a href="/Dormitory/admin/stuffs">List of Staffs</a></li>
                                </ul>
                            </li>
                            <li><a>STUDENT<span>&nbsp;</span></a>
                                <ul>
                                    <li><a href="add-student.jsp">Student Registration</a></li>
                                    <li><a href="/Dormitory/admin/students">List of Students</a></li>
                                </ul>
                            </li>
                            <li><a href="/Dormitory/logout">LOGOUT<span>&nbsp;</span></a></li>
                        </ul>
                </div><!-- end main menu -->
                <!-- start logo -->
                <div class="logo">
                    <a href="index.jsp"><img src="images/logo.png" alt=""></a>
                </div><!-- end logo -->
            </div><!-- end main menu wrap -->
            
            <div id="search-wrap">
                <div class="search">
                    <form class="searchForm"><h3>Hello Admin!</h3>
                    </form>
                </div>
                
                <!-- start call information -->
                <div class="cat">
                    <h3>News details</h3>
                    <ul>
                        <li><a href="index.jsp">News</a></li>
                        <li>/</li>
                        <li>News details</li>
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
            <div id="blog">
                
                <div class="blog-post">
                    <!-- blog post 1 -->
                    <div class="post">
                        <% Post post = (Post) session.getAttribute("current_news");
                            if(post!=null){
                        %>
                        <h3><a href="#"><%= post.getTitle() %></a></h3>
                        <span class="posted-by-text">Posted by: <%= post.getAuthor().getName() %></span>
                        <div class="blog-dash-line"></div>
                        <% if(post.getImage()==null){ %>
                        <div class="imageBlog">
                            <span class="imageWrap">
                                <a href="images/football.jpg" data-rel="prettyPhoto" >
                                    <img src="images/football.jpg" alt="">
                                    <span><span></span></span>
                                </a>
                            </span>
                            <span class="shadowHolder"><img src="images/big-shadow.png" alt=""></span>
                        </div>
                        <% } else { %>
                        <div class="imageBlog">
                            <span class="imageWrap">
                                <a href="../getImage.jsp?img_id=<%= post.getId() %>" data-rel="prettyPhoto" >
                                    <img src="../getImage.jsp?img_id=<%= post.getId() %>" alt="">
                                    <span><span></span></span>
                                </a>
                            </span>
                            <span class="shadowHolder"><img src="images/big-shadow.png" alt=""></span>
                        </div>
                        <% } %>
                        <div class="textBlog">
                            <ul class="tags">
                                <li class="date">
                                    <% SimpleDateFormat format = new SimpleDateFormat("MMMMM dd, yyyy");
                                        String date =  format.format(post.getCreate_time());
                                    %>
                                    <%= date %>
                                </li>
                                <li class="comments"><%= post.getComments().size() %> Comments</li>
                            </ul>
                            <div class="textBlogdetails">
                                <p><%= post.getContent() %></p>
                            </div>
                        </div>
                        <div class="clear20"></div>
                        <div id="respon">
                            <button type="button" id="submit" data-toggle="modal" data-target="#myModalreply">Add Comment</button> 
                            <button type="button" id="submit" data-toggle="modal" data-target="#myModalreply">Change</button>
                            <a href="/Dormitory/admin/news/delete?news_id=<%= post.getId() %>" class="buttonPro">Delete</a>
                        </div>
                        <% } %>
                    </div><!-- end blog post 1 -->
                    
                    <div class="frame">
                        <!-- start comments-->
                        <div id="comments">
                            <h3><%= post.getComments().size() %> comments</h3>
                            <div class="dash-line"></div>

                            <% List<Comment> comments = post.getComments();
                               if(comments!=null && comments.size()>0){
                                   for (int i = 0; i < comments.size(); i++) {

                            %>
                                <div class="postComment">
                                    <ul>
                                        <li>
                                            <img src="images/dUser.jpg" alt="">
                                        </li>
                                        <li>
                                            <h4><%= comments.get(i).getAuthor().getName() %></h4>
                                            <span class="dateComments">
                                                <%  SimpleDateFormat format = new SimpleDateFormat("MMMMM dd, yyyy");
                                                    String date =  format.format(comments.get(i).getCreate_time());
                                                %>
                                                <%= date %>
                                            </span>
                                            <p><%= comments.get(i).getText() %></p>
                                        </li>
                                    </ul>

                                    <div class="delete">
                                        <form action="/Dormitory/news/comment/delete" method="post">
                                            <input type="hidden" name="comment_id" value="<%= comments.get(i).getId() %>">
                                            <input type="hidden" name="new_id" value="<%= post.getId() %>">
                                            <button type="submit" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                        </form>
                                    </div>
                                    <div class="reply"><a href="#"  data-toggle="modal" data-target="#myModalreply"><img src="images/iReply.png" alt=""></a></div>
                                </div>
                            <%      }
                                }
                            %>

                        </div><!-- end comments-->
                        
                        
                    </div>
                </div>
                
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
                                <p><a href="">Sayan abi</a></p>
                            </li>
                            <li>
                                <p><a href="#">Bauka abi</a></p>
                            </li>
                            <li>
                                <p><a href="#">Talgat abi</a></p>
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
                    <a href="index.html">Home </a>
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
    <!-- Modal Reply-->
    <div class="modal fade" id="myModalreply" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title" id="myModalLabel">Reply</h4>
        </div>
        <form action="/Dormitory/news/comment/add" on="#" method="post" id="commentform">
        <div class="modal-body">
            <div id="respon" style="padding:20px;background:#fff;">


                    <label for="comment">Reply: * </label>
                    <% User user = (User) session.getAttribute("current_user"); %>
                    <input type="hidden" name="user_id" value="<%= user.getId() %>">
                    <input type="hidden" name="post_id" value="<%= post.getId() %>">
                    <input type="hidden" name="comment_sender" value="admin">
                    <textarea name="comment" id="ckeditor_standard" tabindex="4" class="messageInput" required></textarea>

            </div>
        </div>
        <div class="modal-footer">
            <button type="button" id="submit" data-dismiss="modal">Close</button>
            <button type="submit" id="submit">Submit</button>
        </div>
        </form>
    </div>
</div>
</div>
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
