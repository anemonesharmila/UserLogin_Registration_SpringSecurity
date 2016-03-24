package com.dao;

import com.model.User;

import java.util.List;

/**
 * Created by sharmila on 12/13/2015.
 */
public interface UserDao {
    public int insert(User user);
    public  int delete(int userId);
    public int updateRow(User user);
    public List<User> getList();
    public User getRowById(int userId);

}
