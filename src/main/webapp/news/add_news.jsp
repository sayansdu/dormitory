<%@include file="../admin_header.jsp"%>

<br>
<h2>Add news</h2>
<form action="/Dormitory/news/create" method="post">
   <p>title: <input type="text" size="40" name="title"></p>
   <p>content: <textarea rows="6" cols="40" name="content">
        </textarea>
   </p>
   <p>
       <select name="status">
           <option value="published">Published</option>
           <option value="archived" selected="selected">Archived</option>
       </select>
   </p>
   <input type="hidden" name="add_news" value="add_news">
    <p><input type="submit" value="Create" /></p>
</form>

<%@include file="../admin_footer.jsp"%>