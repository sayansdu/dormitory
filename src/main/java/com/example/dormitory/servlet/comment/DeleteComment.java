package com.example.dormitory.servlet.comment;

import com.example.dormitory.service.Service;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class DeleteComment extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        if(request.getParameter("comment_id")!=null && request.getParameter("new_id")!=null){
            String comment_id = request.getParameter("comment_id");
            String new_id = request.getParameter("new_id");
            try {
                Service service = new Service();
                service.deleteComment(Long.parseLong(comment_id));
                response.sendRedirect("/Dormitory/news/get?news_id="+new_id);
                return;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        response.sendRedirect("/Dormitory/logout");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}