/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.chatServer.dao;

import com.chatServer.entity.User;
import java.util.List;

/**
 *
 * @author sharmila
 */
public interface UserDao {
    List<User> getAll();
    User getByUserName(String userName);
    User login(String userName,String password);
    
}
