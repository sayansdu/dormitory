<%@ page import="com.example.dormitory.entity.Post" %>
<%@ page import="java.io.OutputStream" %>
<%@ page import="com.example.dormitory.service.Service" %>
<%@ page import="com.example.dormitory.entity.User" %><%

    if(request.getParameter("img_id")!=null ){
        String user_id = request.getParameter("img_id");
        User user = new User();

        try{
            Service service = new Service();
            user = service.getUserById(Long.parseLong(user_id));
            OutputStream o = response.getOutputStream();
            response.setContentType("image/gif");
            o.write(user.getPhoto());
            o.flush();
            o.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

%>
