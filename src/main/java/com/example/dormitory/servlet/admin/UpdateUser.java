package com.example.dormitory.servlet.admin;

import com.example.dormitory.entity.User;
import com.example.dormitory.service.Service;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created with IntelliJ IDEA.
 * User: SayanZhumashev
 * Date: 6/4/14
 * Time: 1:12 PM
 * To change this template use File | Settings | File Templates.
 */
public class UpdateUser extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String status = request.getParameter("status"),
                name = request.getParameter("name"),
                surname = request.getParameter("surname"),
                email = request.getParameter("email"),
                password = request.getParameter("password"),
                vpasword = request.getParameter("vpassword"),
                userId = request.getParameter("user_id");

        try {
            Service service = new Service();
            int counter = 0;

            if(userId==null)
                counter++;

            if(email==null || !validate(email) || service.checkUserByEmailForEdit(email, Long.parseLong(userId))){
                session.setAttribute("email-error", "email not valid or already exist");
                counter++;
            }
            else
                session.setAttribute("email-error", null);

            if(status!=null && status.equals("stuff")){

                if(!password.equals(vpasword)){
                    session.setAttribute("vpassword-error", "password not equals");
                    counter++;
                }
                else
                    session.setAttribute("vpassword-error", null);
                if(counter>0){
                    response.sendRedirect("/Dormitory/admin/update-staff.jsp");
                    return;
                }

                User user = service.getUserById(Long.parseLong(userId));
                user.setName(name);
                user.setSurname(surname);
                user.setEmail(email);
                user.setPassword(password);
                user.setStatus(status);

                service.updateUser(user);

                response.sendRedirect("/Dormitory/admin/stuffs");
                return;

            } else {
                String  course_str = request.getParameter("course"),
                        faculty = request.getParameter("faculty"),
                        group = request.getParameter("group");

                int course = Integer.parseInt(course_str);

                if(!password.equals(vpasword)){
                    counter++;
                }
                if(counter>0){
                    response.sendRedirect("/Dormitory/admin/update-student.jsp?update_user_id="+userId);
                    return;
                }

                User user = service.getUserById(Long.parseLong(userId));
                user.setName(name);
                user.setSurname(surname);
                user.setEmail(email);
                user.setPassword(password);
                user.setStatus("student");
                user.setCourse(course);
                user.setFaculty(faculty);
                user.setGruppa(group);

                service.updateUser(user);

                response.sendRedirect("/Dormitory/admin/students");
                return;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        response.sendRedirect("/Dormitory/admin/news/all");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    private boolean validate(String email){
        Pattern pattern;
        Matcher matcher;
        String EMAIL_PATTERN =
                "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
                        + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";

        pattern = Pattern.compile(EMAIL_PATTERN);
        matcher = pattern.matcher(email);
        return matcher.matches();
    }

}
