package com.example.dormitory.servlet.stuff;

import com.example.dormitory.entity.User;
import com.example.dormitory.service.Service;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class AddStudent extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String status = "",
                name = "",
                surname = "",
                email = "",
                password = "",
                vpasword = "",
                course_str = "",
                faculty = "",
                group = "";

        try{
            List<FileItem> multiparts = new ServletFileUpload(
                    new DiskFileItemFactory()).parseRequest(request);
            byte[] photo = new byte[0];

            for(FileItem item : multiparts){
                if(!item.isFormField() && item.getSize()!=0){
                    photo = item.get();
                }
                else {
                    if(item.getFieldName().equals("status")){
                        status = new String(item.getString().getBytes("iso-8859-1"), "UTF-8");
                    } else if(item.getFieldName().equals("name")) {
                        name = new String(item.getString().getBytes("iso-8859-1"), "UTF-8");
                    } else if(item.getFieldName().equals("surname")) {
                        surname = new String(item.getString().getBytes("iso-8859-1"), "UTF-8");
                    } else if(item.getFieldName().equals("email")) {
                        email = new String(item.getString().getBytes("iso-8859-1"), "UTF-8");
                    } else if(item.getFieldName().equals("password")) {
                        password = item.getString();
                    } else if(item.getFieldName().equals("vpassword")) {
                        vpasword = item.getString();
                    } else if(item.getFieldName().equals("course")) {
                        course_str = new String(item.getString().getBytes("iso-8859-1"), "UTF-8");
                    } else if(item.getFieldName().equals("faculty")) {
                        faculty = new String(item.getString().getBytes("iso-8859-1"), "UTF-8");
                    } else if(item.getFieldName().equals("group")) {
                        group = new String(item.getString().getBytes("iso-8859-1"), "UTF-8");
                    }
                }
            }
            Service service = new Service();
            int counter = 0;

            if(email==null || !validate(email) || service.checkUserByEmail(email)){
                session.setAttribute("email-error", "email not valid or already exist");
                counter++;
            }
            else
                session.setAttribute("email-error", null);

            System.out.println(password);
            System.out.println(vpasword);
            if(!password.equals(vpasword)){
                session.setAttribute("vpassword-error", "password not equals");
                counter++;
            }
            else
                session.setAttribute("vpassword-error", null);

            if(counter>0){
                response.sendRedirect("/Dormitory/stuff/registration.jsp");
                return;
            }

            int course = Integer.parseInt(course_str);

            User user = new User();
            user.setName(name);
            user.setSurname(surname);
            user.setEmail(email);
            user.setPassword(password);
            user.setStatus("student");
            user.setCourse(course);
            user.setFaculty(faculty);
            user.setGruppa(group);
            if(photo.length>0)
                user.setPhoto(photo);
            service.saveUser(user);
            response.sendRedirect("/Dormitory/stuff/student/get_all");
            return;

        } catch (Exception e){
            e.printStackTrace();
        }

        response.sendRedirect("/Dormitory/stuff/registration.jsp");
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