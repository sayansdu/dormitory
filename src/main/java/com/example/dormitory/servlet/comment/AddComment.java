package com.example.dormitory.servlet.comment;

import com.example.dormitory.entity.Comment;
import com.example.dormitory.entity.Post;
import com.example.dormitory.entity.User;
import com.example.dormitory.service.Service;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AddComment extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            String user_id = request.getParameter("user_id");
            String new_id = request.getParameter("post_id");
            String text = request.getParameter("comment");
            String comment_sender = request.getParameter("comment_sender");

            System.out.println(new_id);
            System.out.println(user_id);
            System.out.println(text);

            Comment comment = new Comment();
            Service service = new Service();

            User user = service.getUserById(Long.parseLong(user_id));
            Post post = service.getNewById(Long.parseLong(new_id));
            comment.setAuthor(user);
            comment.setPost(post);
            comment.setText(text);
            service.saveComment(comment);
            if(comment_sender.equals("student"))
                response.sendRedirect("/Dormitory/user/news/get?news_id="+new_id);
            else if(comment_sender.equals("stuff"))
                response.sendRedirect("/Dormitory/news/get?news_id="+new_id);
            else if(comment_sender.equals("admin"))
                response.sendRedirect("/Dormitory/news/get?news_id="+new_id);
            else if(comment_sender.equals("admin_update"))
                response.sendRedirect("/Dormitory/news/get_update?news_id="+new_id);

            return;
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect("/Dormitory/logout");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
