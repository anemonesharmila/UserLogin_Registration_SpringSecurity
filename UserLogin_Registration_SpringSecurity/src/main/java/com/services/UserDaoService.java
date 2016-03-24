package com.services;

import com.model.User;

import java.util.List;

/**
 * Created by sharmila on 12/18/2015.
 */
public interface UserDaoService {
    public int insert(User user);
    public  int delete(int userId);
    public int updateRow(User user);
    public List<User> getList();
    public User getRowById(int userId);


}
