package com.example.dormitory.servlet.stuff;

import com.example.dormitory.service.Service;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class DeleteStudent extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if(request.getParameter("delete_user_id")!=null){
            String userId = request.getParameter("delete_user_id");
            System.out.println("user is deleted "+userId);

            try {
                Service service = new Service();
                service.deleteUser(Long.parseLong(userId));
            } catch (Exception e) {
                e.printStackTrace();
            }

            response.sendRedirect("/Dormitory/stuff/student/get_all");
            return;
        }
        response.sendRedirect("/Dormitory/stuff/list-of-students.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}