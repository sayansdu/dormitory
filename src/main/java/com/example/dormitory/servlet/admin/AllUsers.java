package com.example.dormitory.servlet.admin;

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

public class AllUsers extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<User> users = new ArrayList<User>();
        HttpSession session = request.getSession();
        if(session.getAttribute("students")!=null)
            session.removeAttribute("students");
        try {
            Service service = new Service();
            users = service.getUsersByStatus("student");
        } catch (Exception e) {
            e.printStackTrace();
        }

        session.setAttribute("students", users);
        response.sendRedirect("/Dormitory/admin/list-of-students.jsp");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

}
