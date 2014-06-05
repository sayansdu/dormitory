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
                    <h3>Staff Page</h3>
                    <ul>
                        <li><a href="index.jsp">Staff</a></li>
                        <li>/</li>
                        <li><a href="list-of-staffs.jsp">List of Staffs</a></li>
                        <li>/</li>
                        <li>Staff Page</li>
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
                <h4>About Some Abi</h4>
                <div class="sep_line"></div><!-- separator line -->
            </div>
            
            <div class="clear20"></div>
            
            <!-- start about-us  -->
            <div class="outerTwoThirds">
                <p class="text"><strong>Name.</strong></p>
                <p class="text">Position</p>
                <p class="text">some info about worker.</p><br>
                
            </div>
            
            <div class="outerOneThird last">
                <span class="imageWrap">
                    <img src="images/worker.png" alt="">
                </span>
                <span class="shadowHolder"><img src="images/big-shadow5.png" alt=""></span>
            </div>


            <div class="clear20"></div>
            <li style=" width:100%;">
                <!-- start toggles -->                
                <div class="toggles">
                    <ul>
                        <li>
                            <a href="#" data-rel="toggle[third]" data-openimage="./images/minus.png" data-closedimage="images/plus.png">
                                <img src="images/plus.png" alt=""><h4>Change profile</h4></a>
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
                    </li>
                    <!-- start main blog-->
                    <div id="blog">
                        <div class="separator">
                            <h4>Some Abi Posts</h4>
                            <div class="sep_line"></div><!-- separator line -->
                        </div>
                        <div class="clear20"></div>
                        <li style=" width:100%;">
                            <!-- start toggles -->                
                            <div class="toggles">
                                <ul>
                                    <li>
                                        <a href="#" data-rel="toggle[second]" data-openimage="./images/minus.png" data-closedimage="images/plus.png">
                                            <img src="images/plus.png" alt=""><h4>Add post</h4></a>
                                            <div id="second">
                                                <div id="respon" style="padding:20px;background:#fff;">

                                                    <form action="" on="#" method="post" id="commentform">    
                                                        <label for="author">Title:  * </label>
                                                        <input type="text" name="name" id="name" value="" size="22" tabindex="1" class="nameInput" required>
                                                        <label for="author">Image:  * </label>
                                                        <input type="file" name="file" id="file" value="" size="22" tabindex="2"  required>
                                                        <label for="author">Date:  * </label>
                                                        <input type="date" name="date" id="daye" value="" size="22" tabindex="3" class="nameInput" required>
                                                        <label for="comment">Message: * </label>
                                                        <textarea name="comment"  tabindex="4" class="messageInput" id="ckeditor_full" required></textarea>
                                                        <br>
                                                        <input name="submit" type="submit" id="submit" tabindex="5" value="Add Post">
                                                    </form>
                                                </div>
                                            </li>
                                        </ul>
                                    </div><!-- end toggles -->
                                </li>
                                <div class="blog-post">
                                    <!-- blog post 1 -->
                                    <div class="post">
                                        <h3><a href="#">Football</a></h3>
                                        <span class="posted-by-text">Posted by: <a href="#">This abi</a></span>
                                        <div class="blog-dash-line"></div>
                                        <div class="imageBlog">
                                            <span class="imageWrap">
                                                <a href="images/football.jpg" data-rel="prettyPhoto" >
                                                    <img src="images/football.jpg" alt="">
                                                    <span><span></span></span>
                                                </a>           
                                            </span>
                                            <span class="shadowHolder"><img src="images/big-shadow.png" alt=""></span>
                                        </div>
                                        <div class="textBlog">
                                            <ul class="tags">
                                                <li class="date">April 29, 2014</li>
                                                <li class="comments">9 Comments</li>
                                            </ul>
                                            <div class="textBlogdetails">
                                                <p>info...</p> 

                                            </div>
                                            <div class="clear20"></div>
                                            <div id="respon">

                                                <form action="#" method="post" id="commentform"> 
                                                    <button type="button" id="submit" data-toggle="modal" data-target="#myModalreply">Add Comment</button>  
                                                    <button type="button" id="submit" data-toggle="modal" data-target="#myModalchange">Change</button>   
                                                    <button type="button" id="submit">Delete</button>      
                                                </form>
                                            </div>
                                        </div>

                                    </div><!-- end blog post 1 -->

                                    <div class="frame">
                                        <!-- start comments-->
                                        <div id="comments">
                                            <h3>2 comments</h3>

                                            <div class="dash-line"></div>

                                            <div class="postComment">
                                                <ul>
                                                    <li>
                                                        <img src="images/dUser.jpg" alt="">
                                                    </li>
                                                    <li>
                                                        <h4>User1</h4>
                                                        <span class="dateComments">April 28, 2014</span>
                                                        <p>some text</p>
                                                    </li>
                                                </ul>
                                                <div class="delete"> <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button></div>
                                                <div class="reply"><a href="#"  data-toggle="modal" data-target="#myModalreply"><img src="images/iReply.png" alt=""></a></div>

                                            </div>

                                            <div class="postComment">
                                                <ul>
                                                    <li>
                                                        <img src="images/dUser.jpg" alt="">
                                                    </li>
                                                    <li>
                                                        <h4>User2</h4>
                                                        <span class="dateComments">April 28, 2014</span>
                                                        <p>some text</p>
                                                    </li>
                                                </ul>
                                                <div class="delete"> <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button></div>
                                                <div class="reply"><a href="#"  data-toggle="modal" data-target="#myModalreply"><img src="images/iReply.png" alt=""></a></div>
                                            </div>
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
                                                <p><a href="abi-profile.jsp">Sayan abi</a></p>
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
<!-- Modal Change-->
<div class="modal fade" id="myModalchange" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">Change</h4>
      </div>
      <div class="modal-body">
        <div id="respon" style="padding:20px;background:#fff;">

                                      <form action="" on="#" method="post" id="commentform">    
                                                        <label for="author">Title:  * </label>
                                                        <input type="text" name="name" id="name" value="" size="22" tabindex="1" class="nameInput" required>
                                                        <label for="author">Image:  * </label>
                                                        <input type="file" name="file" id="file" value="" size="22" tabindex="2"  required>
                                                        <label for="author">Date:  * </label>
                                                        <input type="date" name="date" id="daye" value="" size="22" tabindex="3" class="nameInput" required>
                                                        <label for="comment">Message: * </label>
                                                        <textarea name="comment"  tabindex="4" class="messageInput" id="ckeditor_full" required></textarea>
                                                        <br>
                                                        <input name="submit" type="submit" id="submit" tabindex="5" value="Add Post">
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
                                            <textarea name="comment" id="ckeditor_full" tabindex="4" class="messageInput" required></textarea>
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
