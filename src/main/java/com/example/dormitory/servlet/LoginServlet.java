package com.example.dormitory.servlet;

import com.example.dormitory.entity.User;
import com.example.dormitory.service.Service;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            if((email != null && password != null)){

                Service service = new Service();
                User user = service.getUserByEmail(email);
                if(user!=null && user.getPassword().equals(password)){
                    session.setAttribute("login-error", null);
                    session.setAttribute("current_user", user);
                    if(user.getStatus().equals("admin"))
                        response.sendRedirect("/Dormitory/admin/news/all");
                    else if(user.getStatus().equals("stuff"))
                        response.sendRedirect("/Dormitory/index.jsp");
                    else if(user.getStatus().equals("student"))
                        response.sendRedirect("/Dormitory/index.jsp");
                    return;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();

        }
        session.setAttribute("login-error", "Password or Email invalid, try again");
        response.sendRedirect("/Dormitory/login.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

}
