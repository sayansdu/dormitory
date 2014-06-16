<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.dormitory.entity.Post" %>
<%@include file="../head.jsp" %>
                <!-- start logo -->
                <div class="logo">
                    <a href="/Dormitory/index.jsp"><img src="/Dormitory/images/logo.png" alt=""></a>
                </div><!-- end logo -->
            </div><!-- end main menu wrap -->
            
            <div id="search-wrap">
                <!-- start searchBar -->
                <div class="search">
                    <form class="searchForm">
                        <h3>Hello
                        <% User user = (User) session.getAttribute("current_user");
                            if(user==null)
                                response.sendRedirect("/Dormitory/logout");
                        %>
                        <%= user.getName()%>
                        </h3>
                        <input class="searchInput" title="Search" type="text" value="Start Searching...">
                        <input class="searchBtn" name="action_results" value="Go" title="Go" type="submit">
                    </form>
                </div><!-- end searchBar -->
                
                <!-- start call information -->
                <div class="cat">
                    <h3>My Page</h3>
                    <ul>
                        <li><a href="/Dormitory/index.jsp">Home</a></li>
                        <li>/</li>
                        <li>My</li>
                        <li>/</li>
                        <li>My Page</li>
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
                <h4>About <%= user.getName() %></h4>
                <div class="sep_line"></div><!-- separator line -->
            </div>
            
            <div class="clear20"></div>
            
            <!-- start about-us  -->
            <div class="outerTwoThirds">
                <p class="text"><strong>Username: <%= user.getName()+" "+user.getSurname() %></strong></p>
                <p class="text">Position: Stuff</p>
                <p class="text">E-mail: <%= user.getEmail() %></p>
                <p class="text">Create time:
                    <% SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
                        String date =  format.format(user.getCreate_time());
                    %>
                    <%= date %>
                </p>
                <br>
                
            </div>
            
            <div class="outerOneThird last">
                <% if(user.getPhoto()==null){ %>
                    <span class="imageWrap">
                        <img src="images/worker.png" alt="">
                    </span>
                <span class="shadowHolder"><img src="images/big-shadow5.png" alt=""></span>
                <%} else { %>
                    <span class="imageWrap">
                        <img src="../getPhoto.jsp?img_id=<%= user.getId() %>" alt="">
                    </span>
                <% } %>
            </div>


            <div class="clear20"></div>
    <%--        <li style=" width:100%;">
                <!-- start toggles -->                
                <div class="toggles">
                    <ul>
                        <li>
                            <a href="#" data-rel="toggle[third]" data-openimage="/Dormitory/images/minus.png" data-closedimage="/Dormitory/images/plus.png">
                                <img src="/Dormitory/images/plus.png" alt=""><h4>Change profile</h4></a>
                                <div id="third">
                                    <div id="respon" style="padding:20px;background:#fff;">

                                        <form action="#" method="post" id="commentform">    
                                            <label for="author">Name:  * </label>
                                            <input type="text" name="name" id="name" value="" size="22" tabindex="1" class="nameInput" required>
                                            <label for="author">Image:  * </label>
                                            <input type="file" name="file" id="file" value="" size="22" tabindex="1"  required>
                                            <label for="comment">Info: * </label>
                                            <textarea name="comment"  id="ckeditor_full" tabindex="4" class="messageInput" required></textarea>
                                            <br>
                                            <input name="submit" type="submit" id="submit" tabindex="5" value="Change">
                                        </form>
                                    </div>
                                </li>
                            </ul>
                        </div><!-- end toggles -->
                    </li>--%>
                    <!-- start main blog-->
                    <div id="blog">

                        <div class="clear20"></div>
                        <li style=" width:100%;">
                            <!-- start toggles -->                
                            <div class="toggles">
                                <ul>
                                    <li>
                                        <a href="#" data-rel="toggle[second]" data-openimage="/Dormitory/images/minus.png" data-closedimage="/Dormitory/images/plus.png">
                                            <img src="/Dormitory/images/plus.png" alt=""><h4>Add post</h4></a>
                                            <div id="second">
                                                <div id="respon" style="padding:20px;background:#fff;">

                                                    <form action="/Dormitory/news/create" on="#" method="post" id="commentform" enctype="multipart/form-data">
                                                        <label for="author">Title:  * </label>
                                                        <input type="text" name="title" id="name" value="" size="22" tabindex="1" class="nameInput" required>
                                                        <label for="author">Image:  * </label>
                                                        <input type="file" name="file" id="file" value="" size="22" tabindex="2"  required>

                                                        <label for="comment">Message: * </label>
                                                        <textarea name="content"  tabindex="4" class="messageInput" id="ckeditor_full" required></textarea>
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
                                <div class="blog-post">

                                    <% List<Post> news = (List<Post>) session.getAttribute("user_news"); %>
                                    <% if(news!=null) { %>
                                    <% for(int i=0; i<news.size(); i++) { %>
                                    <div class="post">

                                        <% if(news.get(i).getImage()==null){ %>
                                        <div class="imageBlogclassic">
                                            <span class="imageWrap">
                                                <a href="/Dormitory/images/football.jpg" data-rel="prettyPhoto" >
                                                    <img src="/Dormitory/images/football.jpg" alt="" />
                                                    <span><span></span></span>
                                                </a>
                                            </span>
                                            <span class="shadowHolder"><img src="/Dormitory/images/big-shadow.png" alt="" /></span>
                                        </div>
                                        <% } else { %>
                                        <div class="imageBlogclassic">
                                                <span class="imageWrap">
                                                     <a href="../getImage.jsp?img_id=<%= news.get(i).getId() %>" data-rel="prettyPhoto" >
                                                         <img src="/Dormitory/getImage.jsp?img_id=<%= news.get(i).getId() %>" alt="" />
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
                                                    <% format = new SimpleDateFormat("dd/MM/yyyy");
                                                        date =  format.format(news.get(i).getCreate_time());
                                                    %>
                                                    <%= date %>
                                                </li>
                                                <li class="comments"><%= news.get(i).getComments().size()%> Comments</li>
                                            </ul>
                                            <div class="clear"></div>

                                            <p><a href="/Dormitory/news/get?news_id=<%= news.get(i).getId() %>" class="buttonPro">Read More</a></p>
                                            <p><a href="/Dormitory/admin/news/delete?news_id=<%= news.get(i).getId() %>" class="buttonPro">Delete</a></p>
                                            </p>

                                        </div>
                                    </div><!-- end blog post  -->
                                    <% } %>
                                    <% } %>

                                    <div class="clear20"></div>

                                </div>

                                <!-- start sidebar -->
                                <div class="sidebar last">

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

                    <%@include file="../footer.jsp"%>
                </div><!-- end footer -->

</div>
                <div class="clear"></div>
                <div id="footerShadow" class="boxed boxed"><div class="shadowHolderflat"><img src="/Dormitory/images/big-shadow.png" alt=""></div></div>
                <!-- Modal -->
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel">Change post</h4>
                    </div>
                    <div class="modal-body">
                        <div id="respon" style="padding:20px;background:#fff;">

                            <form action="" on="#" method="post" id="commentform">    
                                <label for="author">Title:  * </label>
                                <input type="text" name="name" id="name" value="" size="22" tabindex="1" class="nameInput" required>
                                <label for="author">Image:  * </label>
                                <input type="file" name="file" id="file" value="" size="22" tabindex="1"  required>
                                <label for="author">Date:  * </label>
                                <input type="date" name="date" id="daye" value="" size="22" tabindex="1" class="nameInput" required>
                                <label for="comment">Message: * </label>
                                <textarea name="comment" id="ckeditor_full" tabindex="4" class="messageInput" required></textarea>
                            </form>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" id="submit" data-dismiss="modal">Close</button>
                        <button type="button" id="submit">Save changes</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal Reply-->
        <div class="modal fade" id="myModalreply" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">Reply</h4>
            </div>
            <div class="modal-body">
                <div id="respon" style="padding:20px;background:#fff;">

                    <form action="" on="#" method="post" id="commentform">    
                        <label for="comment">Reply: * </label>
                        <textarea name="comment" id="ckeditor_standard" tabindex="4" class="messageInput" required></textarea>
                    </form>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" id="submit" data-dismiss="modal">Close</button>
                <button type="button" id="submit">Submit</button>
            </div>
        </div>
    </div>
</div>
<script src="/Dormitory/vendors/bootstrap-wysihtml5/lib/js/wysihtml5-0.3.0.js"></script>
<script src="/Dormitory/vendors/bootstrap-wysihtml5/src/bootstrap-wysihtml5.js"></script>
<script src="/Dormitory/vendors/ckeditor/ckeditor.js"></script>
<script src="/Dormitory/vendors/ckeditor/adapters/jquery.js"></script>
<script type="text/javascript" src="/Dormitory/vendors/tinymce/js/tinymce/tinymce.min.js"></script>
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
