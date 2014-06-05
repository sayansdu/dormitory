package com.example.dormitory.servlet.admin;

import com.example.dormitory.entity.Post;
import com.example.dormitory.entity.User;
import com.example.dormitory.service.Service;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class GetNews extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User current_user = (User) session.getAttribute("current_user");

        if(current_user!=null && request.getParameter("news_id")!=null){
            String news_id = request.getParameter("news_id");

            try {
                if(session.getAttribute("current_news")!=null)
                    session.removeAttribute("current_news");

                Service service = new Service();
                Post post = service.getNewById(Long.parseLong(news_id));
                post.setComments(service.getNewsComments(post.getId()));
                session.setAttribute("current_news", post);

                if(current_user.getStatus().equals("admin")){
                    if(session.getAttribute("admin_update_news")!=null){
                        response.sendRedirect("/Dormitory/admin/update-news.jsp");
                        return;
                    }
                    response.sendRedirect("/Dormitory/admin/news-details.jsp");
                }

                else
                    response.sendRedirect("/Dormitory/stuff/update-news.jsp");
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
