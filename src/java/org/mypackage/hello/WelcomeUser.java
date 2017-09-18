/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mypackage.hello;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class WelcomeUser extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       //private static final String USERID="UserId";
       //logger LOGGER = new logger.class.l
        PrintWriter out=response.getWriter();
       try
       {
         String requestParam=request.getParameter("UserId");
         new DBConnector(requestParam);
         out.println("ok" + requestParam );
       }
       catch(Exception e)
       {
           out.println(e);
       }
    }

  
}
