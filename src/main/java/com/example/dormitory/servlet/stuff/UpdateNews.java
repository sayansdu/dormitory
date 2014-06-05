package com.example.dormitory.servlet.stuff;

import com.example.dormitory.entity.Post;
import com.example.dormitory.service.Service;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.List;

public class UpdateNews extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            String title = "",
                    content = "",
                    status = "",
                    news_id = null;

            try{
                List<FileItem> multiparts = new ServletFileUpload(
                        new DiskFileItemFactory()).parseRequest(request);
                byte[] image = new byte[0];

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
                        } else if(item.getFieldName().equals("news_id")){
                            news_id = new String(item.getString().getBytes("iso-8859-1"), "UTF-8");
                        }
                    }

                }

                if(news_id==null)
                    response.sendRedirect("/Dormitory/stuff/my_page");

                Service service = new Service();
                Post news = service.getNewById(Long.parseLong(news_id));
                news.setTitle(title);
                news.setContent(content);
                news.setStatus(status);
                news.setUpdate_time(new Date());
                if(image.length!=0)
                    news.setImage(image);
                service.updateNews(news);

                response.sendRedirect("/Dormitory/news/get?news_id=" + news_id);
                return;
            }catch (Exception e){
                e.printStackTrace();
            }

        response.sendRedirect("/Dormitory/stuff/my_page");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
