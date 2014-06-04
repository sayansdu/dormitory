package com.example.dormitory.dal;

import com.example.dormitory.connection.SessionFactory;
import com.example.dormitory.entity.Comment;
import com.example.dormitory.entity.Post;
import com.example.dormitory.entity.User;
import org.apache.ibatis.session.SqlSession;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: sayan
 * Date: 4/18/14
 * Time: 5:58 PM
 * To change this template use File | Settings | File Templates.
 */
public class Dal {

    public User getUserById(long id){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        User user;
        try
        {
            user = session.selectOne("UserMapper.getUserById", id);
        } finally{
            session.close();
        }
        return user;
    }

    public User getUserByEmail(String email){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        User user;
        try
        {
            user = session.selectOne("UserMapper.selectUserByEmail", email);
        } finally{
            session.close();
        }
        return user;
    }

    public void saveUser(User user){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        try
        {
            session.insert("UserMapper.insertUser", user);
            session.commit();
        } finally{
            session.close();
        }
    }

    public void updateUser(User user){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        try
        {
            session.update("UserMapper.updateUser", user);
            session.commit();
        } finally{
            session.close();
        }
    }

    public void deleteUser(long id){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        try
        {
            session.update("UserMapper.deleteUser", id);
            session.commit();
        } finally{
            session.close();
        }
    }

    public List<User> getUsersByStatus(String status){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        List<User> users = new ArrayList<User>();
        try
        {
            users = session.selectList("UserMapper.getUsersByStatus", status);
        } finally{
            session.close();
        }
        return users;
    }

    public void saveNews(Post news){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        try
        {
            session.insert("NewsMapper.insertNews", news);
            session.commit();
        } finally{
            session.close();
        }
    }

    public void updateNews(Post news){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        try
        {
            session.update("NewsMapper.updateNews", news);
            session.commit();
        } finally{
            session.close();
        }
    }


    public List<Post> getNews(){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        List<Post> news = new ArrayList<Post>();
        try
        {
            news = session.selectList("NewsMapper.selectNews");
        } finally{
            session.close();
        }
        return news;
    }

    public List<Post> getNewsByAuthor(long id){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        List<Post> news = new ArrayList<Post>();
        try
        {
            news = session.selectList("NewsMapper.getNewsByAuthor", id);
        } finally{
            session.close();
        }
        return news;
    }

    public void deleteNews(long new_id){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        try
        {
            session.insert("NewsMapper.deleteNews", new_id);
            session.commit();
        } finally{
            session.close();
        }
    }

    public void deleteNewsByUser(long id){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        try
        {
            session.insert("NewsMapper.deleteNewsByUser", id);
            session.commit();
        } finally{
            session.close();
        }
    }

    public Post getNewById(long new_id){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        Post post = null;
        try
        {
            post = session.selectOne("NewsMapper.getNewsById", new_id);
        } finally {
            session.close();
        }
        return post;
    }

    public void saveComment(Comment comment){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        try
        {
            session.insert("CommentMapper.insertComment", comment);
            session.commit();
        } finally{
            session.close();
        }
    }

    public List<Comment> getNewsComments(long new_id){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        List<Comment> comments = new ArrayList<Comment>();
        try
        {
            comments = session.selectList("CommentMapper.getNewsComments", new_id);
        } finally{
            session.close();
        }
        return comments;
    }

    public void deleteComment(long id){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        try
        {
            session.delete("CommentMapper.deleteComment", id);
            session.commit();
        } finally{
            session.close();
        }
    }

    public void deleteCommentByPost(long post_id){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        try
        {
            session.delete("CommentMapper.deleteCommentByPost", post_id);
            session.commit();
        } finally{
            session.close();
        }
    }

    public void deleteCommentByUser(long id){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        try
        {
            session.delete("CommentMapper.deleteCommentByUser", id);
            session.commit();
        } finally{
            session.close();
        }
    }

    public boolean checkUserByEmail(String email){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        List<User> users = new ArrayList<User>();
        try
        {
            users = session.selectList("UserMapper.getUsersByEmail", email);
        } finally{
            session.close();
        }
        if(users.size()>0)
            return true;
        return false;
    }

    public boolean checkUserByEmailForEdit(String email, long id){
        SqlSession session = SessionFactory.getSessionFactory().openSession();
        List<User> users = new ArrayList<User>();
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("email", email);
        map.put("id", id);
        try
        {
            users = session.selectList("UserMapper.getUsersByEmailEdit", map);
        } finally{
            session.close();
        }
        if(users.size()>0)
            return true;
        return false;
    }
}
