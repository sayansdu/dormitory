package com.example.dormitory.servlet.user;

import com.example.dormitory.entity.Post;
import com.example.dormitory.service.Service;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class GetAllNews extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Post> news = new ArrayList<Post>();
        HttpSession session = request.getSession();
        if(session.getAttribute("news")!=null)
            session.removeAttribute("news");
        try{
            Service service = new Service();
            news = service.getNews();
            session.setAttribute("news", news);
            response.sendRedirect("/Dormitory/news.jsp");
            return;
        }catch (Exception e){
            e.printStackTrace();
        }

        response.sendRedirect("/Dormitory/logout");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}