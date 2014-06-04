package com.example.dormitory.servlet.admin;

import com.example.dormitory.entity.User;
import com.example.dormitory.service.Service;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class DeleteUser extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        if(request.getParameter("delete_user_id")!=null){
            String userId = request.getParameter("delete_user_id");
            System.out.println("user is deleted "+userId);

            try {
                Service service = new Service();
                User user = service.getUserById(Long.parseLong(userId));

                if(user.getStatus().equals("stuff")){
                    service.deleteUser(Long.parseLong(userId));
                    response.sendRedirect("/Dormitory/admin/stuffs");
                    return;
                } else {
                    service.deleteUser(Long.parseLong(userId));
                    response.sendRedirect("/Dormitory/admin/students");
                    return;
                }

            } catch (Exception e) {
                e.printStackTrace();
            }


        }
        response.sendRedirect("/Dormitory/admin/news/all");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
