package com.example.dormitory.servlet.stuff;

import com.example.dormitory.entity.Post;
import com.example.dormitory.entity.User;
import com.example.dormitory.service.Service;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class MyPage extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("current_user");

        if(user!=null){
            List<Post> posts = new ArrayList<Post>();
            try {
                Service service = new Service();
                posts = service.getNewsByAuthor(user.getId());

                if(session.getAttribute("user_news")!=null)
                    session.removeAttribute("user_news");
                session.setAttribute("user_news", posts);
            } catch (Exception e) {
                e.printStackTrace();
            }
            response.sendRedirect("/Dormitory/stuff/mypage.jsp");
        }
        else{
            response.sendRedirect("/Dormitory/logout");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
