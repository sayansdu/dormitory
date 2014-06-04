package com.example.dormitory.servlet.admin;

import com.example.dormitory.entity.User;
import com.example.dormitory.service.Service;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class DeleteNews extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User current_user = (User) session.getAttribute("current_user");
        if(current_user == null){
            response.sendRedirect("/Dormitory/logout");
            return;
        }

        if(request.getParameter("news_id")!=null){
            String news_id = request.getParameter("news_id");

            try {
                Service service = new Service();
                service.deleteNews(Long.parseLong(news_id));
            } catch (Exception e) {
                e.printStackTrace();
            }

        }
        if(current_user.getStatus().equals("admin"))
            response.sendRedirect("/Dormitory/admin/news/all");
        else
            response.sendRedirect("/Dormitory/stuff/my_page");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
