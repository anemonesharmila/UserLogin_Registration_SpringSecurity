/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.chatServer.dao.impl;

import com.chatServer.dao.UserDao;
import com.chatServer.entity.User;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author sharmila
 */
public class UserDaoImpl implements UserDao{
    private List<User> userList=new ArrayList<>();

    public UserDaoImpl() {
    }

   

   
   
    
    @Override
    public List<User> getAll() {
       if(userList.size()==0)
       {
           userList.add(new User("sharmila", "karki"));
           userList.add(new User("shusila", "karki"));
           userList.add(new User("ram", "ram"));
           userList.add(new User("shyam", "shyam"));
       }
     
           return userList;
    }

    @Override
    public User getByUserName(String userName) {
       for(User user:getAll())
       {
           if(user.getUserName().equalsIgnoreCase(userName))
           {
               return user;
           }
       }
       return null;
    }

    @Override
    public User login(String userName, String password) {
        for(User user:getAll())
        {
            if(user.getUserName().equals(userName) && user.getPassword().equals(password))
            {
                return user;
            }
        }
        return null;
    }
    
}
