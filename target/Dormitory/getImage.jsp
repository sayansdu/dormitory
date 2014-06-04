<%@ page import="com.example.dormitory.entity.Post" %>
<%@ page import="java.io.OutputStream" %>
<%@ page import="com.example.dormitory.service.Service" %><%

    if(request.getParameter("img_id")!=null ){
        String news_id = request.getParameter("img_id");
        Post post = new Post();

        try{
            Service service = new Service();
            post = service.getNewById(Long.parseLong(news_id));
            OutputStream o = response.getOutputStream();
            response.setContentType("image/gif");
            o.write(post.getImage());
            o.flush();
            o.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

%>
