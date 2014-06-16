<%@ page import="java.util.List" %>
<%@ page import="com.example.dormitory.entity.User" %>
<%@include file="../head.jsp"%>
      <!-- start logo -->
      <div class="logo">
        <a href="index.jsp"><img src="../images/logo.png" alt=""></a>
      </div><!-- end logo -->
    </div><!-- end main menu wrap -->

    <div id="search-wrap">
        <div class="search">
            <form class="searchForm">

                <input class="searchInput" title="Search" type="text" value="Start Searching...">
                <input class="searchBtn" name="action_results" value="Go" title="Go" type="submit">
            </form>
        </div><!-- end searchBar -->

      <!-- start call information -->
      <div class="cat">
        <h3>List of students</h3>
        <ul>
          <li><a href="/Dormitory/index.jsp">Home</a></li>
          <li>/</li>
          <li>My</li>
          <li>/</li>
          <li>List of students</li>
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
          
    <h4>Lis Of Students</h4>
      <div class="sep_line"></div><!-- separator line -->
    </div>

    <div class="clear20"></div>

    <div class="outerThreeFourths" >
      <div id="respon">

        <table class="list-users">
          <tr>
            <th>#</th>
            <th>Firstname</th>
            <th>Surname</th> 
            <th>Faculty</th>
            <th>Course</th>
            <th>Group</th>
            <th>E-mail</th>
            <th>Photo</th>
            <th>Update</th>
            <th>Delete</th>

          </tr>

          <% List<User> users = (List<User>) session.getAttribute("students"); %>
            <% if(users!=null) { %>
            <% for(int i=0; i<users.size(); i++) { %>
            <tr>
                <td><%= (i+1) %></td>
                <td><%= users.get(i).getName() %></td>
                <td><%= users.get(i).getSurname() %></td>
                <td><%= users.get(i).getFaculty() %></td>
                <td><%= users.get(i).getCourse() %></td>
                <td><%= users.get(i).getGruppa() %></td>
                <td><%= users.get(i).getEmail() %></td>
                <td>
                    <% if(users.get(i).getPhoto()!=null){ %>
                    <div style="margin: 5px;">
                        <img src="../getPhoto.jsp?img_id=<%= users.get(i).getId() %>" alt="">
                    </div>
                    <% } else {%>
                    <div style="margin: 5px;">
                        <img src="/Dormitory/images/worker.png" alt="">
                    </div>
                    <% } %>
                </td>
                <td><p><a href="update.jsp?update_user_id=<%= users.get(i).getId() %>" class="buttonPro">Update</a></p></td>
                <td><p><a href="/Dormitory/stuff/student/delete?delete_user_id=<%= users.get(i).getId() %>" class="buttonPro">Delete</a></p></td>

            </tr>
            <% } %>
           <% } %>

        </table>
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

  <%@include file="../footer.jsp"%>  
  </div><!-- end footer -->

</div>
<div class="clear"></div>
<div id="footerShadow" class="boxed boxed"><div class="shadowHolderflat"><img src="../images/big-shadow.png" alt=""></div></div>
 <!-- Modal Reply-->
    <div class="modal fade" id="myModalchange" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title" id="myModalLabel">Change Student Data</h4>
        </div>
        <div class="modal-body">
            <div id="respon" style="padding:20px;background:#fff;">

                <form action="#" method="post" id="commentform">    
                    <label for="email">Name:  *</label>
                    <input type="text" name="name"  value="" size="22" tabindex="1" class="nameInput" required>  
                    <label for="email">Surname:  *</label>
                    <input type="text" name="surname"  value="" size="22" tabindex="2" class="nameInput" required>  
                    <label for="author">E-mail:  *</label>
                    <input type="text" name="email" value="" size="22" tabindex="3" class="nameInput" required>
                    <label for="author">Faculty:  *</label>
                    <select  class="nameInput" required tabindex="4">
                        <option >Select Faculty</option>
                        <option value="1">Engineering</option>
                        <option value="2">Eco</option>
                        <option value="3">Law</option>
                        <option value="3">Philology</option>
                    </select>
                    <label for="author">Course:  *</label>
                    <select  class="nameInput" required tabindex="4">
                        <option >Select Group</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="3">4</option>
                    </select>
                    <label for="author">Group:  *</label>
                    <select  class="nameInput" required tabindex="4">
                        <option >Select Group</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                    </select>
                    <label for="email">Password:  * </label>
                    <input type="password" name="password" id="password" value="" size="22" tabindex="5" class="nameInput" required>  
                    <label for="email">Confirm Password:  *</label>
                    <input type="password" name="cpassword" id="password" value="" size="22" tabindex="6" class="nameInput" required>  
                </form>
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" id="submit" data-dismiss="modal">Close</button>
            <button type="button" id="submit">Save</button>
        </div>
    </div>
</div>
</div>
<script src="../vendors/bootstrap-wysihtml5/lib/js/wysihtml5-0.3.0.js"></script>
<script src="../vendors/bootstrap-wysihtml5/src/bootstrap-wysihtml5.js"></script>
<script src="../vendors/ckeditor/ckeditor.js"></script>
<script src="../vendors/ckeditor/adapters/jquery.js"></script>
<script type="text/javascript" src="../vendors/tinymce/js/tinymce/tinymce.min.js"></script>
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
