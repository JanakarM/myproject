<%-- 
    Document   : addadmin
    Created on : Sep 11, 2017, 4:26:32 AM
    Author     : Janakar-PT1585
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
              if(session.getAttribute("theName")!=null)
              {
             try
            {
                
            String u=request.getParameter("name");
            String u1=request.getParameter("pass");
            String u2=request.getParameter("mobile");
            Connection con;
            PreparedStatement ps ;
            ResultSet rs;
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:80/db","root","1234");
            ps = con.prepareStatement("insert into login (name,password,mobile)values('"+u+"','"+u1+"','"+u2+"')");
           ps.executeUpdate(); 
           out.println("NEW ADMIN ADDED");
           response.sendRedirect("admin.jsp");
            }
            catch(Exception e)
            {
                out.println(e);
            }
              }
              else
                  response.sendRedirect("error.jsp");
              %>
    </body>
</html>
