<%@ page import="java.util.List" %>
<%@ page import="com.example.dormitory.entity.Post" %>
<%@include file="../admin_header.jsp"%>
<div id="contenttext">
    <h2>Last News</h2>
    <br>
    <% List<Post> news = (List<Post>) session.getAttribute("news"); %>
    <% for(int i=0; i<news.size(); i++) { %>
    <p><% out.print("Title: "+news.get(i).getTitle()); %></p>
    <p><% out.print("Content: "+news.get(i).getContent()); %></p>
    <hr>
    <br>
    <% } %>

</div>
<%@include file="../admin_footer.jsp"%>