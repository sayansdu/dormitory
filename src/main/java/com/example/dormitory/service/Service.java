package com.example.dormitory.service;

import com.example.dormitory.dal.Dal;
import com.example.dormitory.entity.Comment;
import com.example.dormitory.entity.Post;
import com.example.dormitory.entity.User;

import java.util.List;

/**
 *
 * @author Shere
 */
public class Service {

    private Dal dal;

    public static boolean signIn = false;

    public Service() throws Exception {
        dal = new Dal();
    }

    public User getUserByEmail(String email){
        return dal.getUserByEmail(email);
    }

    public User getUserById(long id){
        return dal.getUserById(id);
    }

    public void saveUser(User user){
        dal.saveUser(user);
    }

    public void updateUser(User user){
        dal.updateUser(user);
    }

    public void deleteUser(long id){
        dal.deleteCommentByUser(id);
        dal.deleteNewsByUser(id);
        dal.deleteUser(id);
    }

    public List<User> getUsersByStatus(String status){
        return dal.getUsersByStatus(status);
    }

    public boolean checkUserByEmail(String email){
        return dal.checkUserByEmail(email);
    }

    public boolean checkUserByEmailForEdit(String email, long id){
        return dal.checkUserByEmailForEdit(email, id);
    }

    public void saveNews(Post news){
        dal.saveNews(news);
    }

    public List<Post> getNews(){
        return dal.getNews();
    }

    public List<Post> getNewsByAuthor(long id){
        return dal.getNewsByAuthor(id);
    }

    public void deleteNews(long new_id){
        dal.deleteCommentByPost(new_id);
        dal.deleteNews(new_id);
    }

    public Post getNewById(long new_id){
        return dal.getNewById(new_id);
    }


    public void saveComment(Comment comment){
        dal.saveComment(comment);
    }
    public List<Comment> getNewsComments(long post_id){
        return dal.getNewsComments(post_id);
    }
    public void deleteComment(long id){
        dal.deleteComment(id);
    }
}