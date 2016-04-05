/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.charServer.handler;

import com.chatServer.dao.UserDao;
import com.chatServer.dao.impl.UserDaoImpl;
import com.chatServer.entity.User;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;

/**
 *
 * @author sharmila
 */
public class ClientListener extends Thread {

    private Socket client;
    private RequestHandler handler;
    private UserDao userDao = new UserDaoImpl();

    public ClientListener() {
    }

    public ClientListener(Socket client, RequestHandler handler) {
        this.client = client;
        this.handler = handler;
    }

    private void sendMessage(Socket client, String message) throws IOException {
        PrintWriter writer = new PrintWriter(client.getOutputStream());
        writer.write(message + "\r\n");
        writer.flush();
    }

    private void broadcastMessage(String message) throws IOException {
        for (User u : handler.getUsers()) {
            sendMessage(client, message);
        }
    }

    @Override
    public void run() {

        try {
            while (true) {
                if (!checkLogin()) {
                    break;
                }
            }
            BufferedReader reader = new BufferedReader(new InputStreamReader(client.getInputStream()));
            String line = "";
            User loggedInUser = handler.getUserBySocket(client);
            while (!(line = reader.readLine()).equalsIgnoreCase("exit")) {

                StringBuilder builder = new StringBuilder();
                if (line.equalsIgnoreCase("/list")) {
                    for (User user : handler.getUsers()) {
                        builder.append(user.getUserName() + "\r\n");

                    }
                    builder.append("Total users:" + handler.getUsers().size());
                    sendMessage(client, builder.toString());
                } else if (line.startsWith("/pm")) {
                    String[] token = line.split(":");
                    User u = handler.getUserByUserName(token[1]);
                    if (u != null) {
                        sendMessage(u.getSocket(), u.getUserName() + "says : " + token[2]);
                    }

                } else {
                    broadcastMessage(loggedInUser.getUserName() + "says : " + line);
                }

            }
        } catch (IOException ex) {
            System.out.println(ex.getMessage());
        }

    }

    private boolean checkLogin() throws IOException {
        sendMessage(client, "Welcome to the server \r\n Enter your username:  ");

        BufferedReader reader = new BufferedReader(new InputStreamReader(client.getInputStream()));
        String userName = reader.readLine();
        sendMessage(client, "Enter your password");
        String password = reader.readLine();
        User user = userDao.login(userName, password);
        if (user == null) {
            sendMessage(client, "Invalid username and password");
            return true;
        } else {
            user.setSocket(client);
            handler.addUser(user);
            sendMessage(client, "You are now logged in successfully");
            return false;
        }
    }

}
