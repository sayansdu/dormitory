<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.example.dormitory.entity.Post" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.dormitory.entity.Comment" %>
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
            <li>View News</li>
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


        <div id="blog">

            <div class="clear20"></div>

            <div class="blog-post">
                <% Post post = (Post) session.getAttribute("current_news");
                    if(post!=null){
                %>
                <!-- blog post 1 -->
                <div class="post">
                    <h3><a href="#"><%= post.getTitle() %></a></h3>
                    <span class="posted-by-text">Posted by: <a href="#">You</a></span>
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
                        <span class="shadowHolder"><img src="/Dormitory/images/big-shadow.png" alt=""></span>
                    </div>
                    <% } %>
                    <div class="textBlog">
                        <ul class="tags">
                            <li class="date">
                                <% SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
                                    String date =  format.format(post.getCreate_time());
                                %>
                                <%= date %>
                            </li>
                            <li class="comments"><%= post.getComments().size() %> Comments</li>
                        </ul>
                        <div class="textBlogdetails">
                            <p><%= post.getContent() %></p>

                        </div>
                        <div class="clear20"></div>
                        <div id="respon">

                            <form action="/Dormitory/admin/news/delete" method="post" id="commentform">
                                <button type="button" id="submit" data-toggle="modal" data-target="#myModal">Change</button>
                                <button type="button" id="submit" data-toggle="modal" data-target="#myModalreply">Add Comment</button>
                                <input type="hidden" name="news_id" value="<%= post.getId() %>">
                                <button type="submit" id="submit">Delete</button>
                            </form>

                        </div>
                    </div>

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
                                    <img src="../images/dUser.jpg" alt="">
                                </li>
                                <li>
                                    <h4><%= comments.get(i).getAuthor().getName() %></h4>
                                            <span class="dateComments">
                                                <%  format = new SimpleDateFormat("dd/MM/yyyy");
                                                    date =  format.format(comments.get(i).getCreate_time());
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
                            <div class="reply"><a href="#"  data-toggle="modal" data-target="#myModalreply"><img src="../images/iReply.png" alt=""></a></div>
                        </div>
                        <%      }
                        }
                        %>

                    </div><!-- end comments-->
                </div>
                <% } %>
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
            <%
                if(post!=null){
            %>
            <form action="/Dormitory/stuff/news/update" on="#" method="post" id="commentform" enctype="multipart/form-data">
            <div class="modal-body">
                <div id="respon" style="padding:20px;background:#fff;">

                        <label for="author">Title:  * </label>
                        <input type="text" name="title" id="name" value="<%= post.getTitle() %>" size="22" tabindex="1" class="nameInput" required>
                        <label for="author">Image:  * </label>
                        <input type="file" name="file" id="file" value="" size="22" tabindex="1">
                        <label for="comment">Message: * </label>
                        <textarea name="content" id="ckeditor_full" tabindex="4" class="messageInput" required>
                            <%= post.getContent() %>
                        </textarea>
                        <br>
                        <label for="author">Status:  *</label>
                        <select  class="nameInput" name="status" required tabindex="4">
                            <option value="archived" >archived</option>
                            <option value="published" selected>published</option>
                        </select>
                </div>
            </div>
            <div class="modal-footer">
                <input type="hidden" name="news_id" value="<%= post.getId() %>">
                <button type="button" id="submit" data-dismiss="modal">Close</button>
                <button type="submit" id="submit">Save changes</button>
            </div>
            </form>
            <% } %>
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
            <form action="/Dormitory/news/comment/add" on="#" method="post" id="commentform">
            <div class="modal-body">
                <div id="respon" style="padding:20px;background:#fff;">

                    <label for="comment">Reply: * </label>
                    <input type="hidden" name="user_id" value="<%= user.getId() %>">
                    <input type="hidden" name="post_id" value="<%= post.getId() %>">
                    <input type="hidden" name="comment_sender" value="stuff">
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

