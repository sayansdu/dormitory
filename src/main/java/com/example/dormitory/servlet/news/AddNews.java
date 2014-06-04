package com.example.dormitory.servlet.news;

import com.example.dormitory.entity.Post;
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
import java.util.Date;
import java.util.List;

public class AddNews extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User current_user = (User) session.getAttribute("current_user");
        if(current_user == null){
            response.sendRedirect("/Dormitory/logout");
            return;
        }

        String title = "",
                content = "",
                status = "";
        try{
            List<FileItem> multiparts = new ServletFileUpload(
                    new DiskFileItemFactory()).parseRequest(request);
            byte[] image = new byte[10];

            for(FileItem item : multiparts){
                if(!item.isFormField() && item.getSize()!=0){
                    image = item.get();

                } else {
                    if(item.getFieldName().equals("title")){
                        title = new String(item.getString().getBytes("iso-8859-1"), "UTF-8");
                    }
                    else if(item.getFieldName().equals("content")) {
                        content = new String(item.getString().getBytes("iso-8859-1"), "UTF-8");
                    }
                    else if(item.getFieldName().equals("status")) {
                        status = new String(item.getString().getBytes("iso-8859-1"), "UTF-8");
                    }
                }

            }
            Service service = new Service();
            Post news = new Post();
            news.setTitle(title);
            news.setContent(content);
            news.setStatus(status);
            news.setAuthor(current_user);
            news.setCreate_time(new Date());
            news.setUpdate_time(new Date());
            news.setImage(image);
            service.saveNews(news);

        } catch (Exception e){
            e.printStackTrace();
        }

        System.out.println(title+" "+content+" "+status);
        if(current_user.getStatus().equals("admin"))
            response.sendRedirect("/Dormitory/admin/news/all");
        else
            response.sendRedirect("/Dormitory/stuff/my_page");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
