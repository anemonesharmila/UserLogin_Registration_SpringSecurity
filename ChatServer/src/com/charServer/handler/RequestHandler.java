/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.charServer.handler;

import com.chatServer.entity.User;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author sharmila
 */
public class RequestHandler {
// add users to the userlist who come to chat

    private List<User> userList = new ArrayList<>();

    public void addUser(User user) {
        userList.add(user);
    }

    public List<User> getUsers() {
        return userList;
    }

    public User getUserBySocket(Socket client) {
        for (User u : userList) {
            if (u.getSocket().equals(client)) {
                return u;
            }
        }
        return null;
    }
    public User getUserByUserName(String userName)
    {
        for(User u:userList)
        {
            if(u.getUserName().equalsIgnoreCase(userName));
            return u;
        }
        return null;
    }
}
