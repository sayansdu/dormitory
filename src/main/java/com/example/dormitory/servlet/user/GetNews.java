package com.example.dormitory.servlet.user;

import com.example.dormitory.entity.Post;
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
        if(request.getParameter("news_id")!=null){
            String news_id = request.getParameter("news_id");

            try {
                if(session.getAttribute("current_news")!=null)
                    session.removeAttribute("current_news");

                Service service = new Service();
                Post post = service.getNewById(Long.parseLong(news_id));
                post.setComments(service.getNewsComments(post.getId()));
                session.setAttribute("current_news", post);
                response.sendRedirect("/Dormitory/news-details.jsp");
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