/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.chatServer;

import com.charServer.handler.ClientListener;
import com.charServer.handler.RequestHandler;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;

/**
 *
 * @author sharmila
 */
public class MainProgram {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws IOException {
        RequestHandler handler=new RequestHandler();
        ServerSocket server = new ServerSocket(9000);
        System.out.println("Server is running at 9000");
        while (true) {
            Socket client=server.accept();
            System.out.println("connection request from :"+client.getInetAddress().getHostAddress());
            ClientListener listner=new ClientListener(client,handler);
            listner.start();
        }
    }

}
