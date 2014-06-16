package com.example.dormitory.servlet.user;

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

public class GetAllStuff extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<User> users = new ArrayList<User>();
        HttpSession session = request.getSession();
        if(session.getAttribute("stuffs")!=null)
            session.removeAttribute("stuffs");
        try {
            Service service = new Service();
            users = service.getUsersByStatus("stuff");
        } catch (Exception e) {
            e.printStackTrace();
        }

        session.setAttribute("stuffs", users);
        response.sendRedirect("/Dormitory/about-staff.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
