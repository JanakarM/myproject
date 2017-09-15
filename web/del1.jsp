
<%-- 
    Document   : del1
    Created on : Sep 12, 2017, 11:19:06 AM
    Author     : Janakar-PT1585
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN PORTAL</title>
    </head>
    <body>
        <%
            String s=request.getParameter("ename");
            if(session.getAttribute("theName")!=null)
              {
             try
            {
            Connection con;
            PreparedStatement ps ;
            ResultSet rs;
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:80/db","root","1234");
            ps = con.prepareStatement("select * from login where name='"+s+"'");
           rs=ps.executeQuery(); 
           if(rs.next())
           {
               ps = con.prepareStatement("delete from login where name='"+s+"'");
               ps.executeUpdate(); 
               out.println(s+" is removed from admin");
           }
           else
               out.println("no such admin");
            }
            catch(Exception e)
            {
                out.println(e);
            }
                  }
              else
              {
                  out.println("invalid request");
                  out.println("<a href='index.jsp'>continue..</a>");
              }
            %>
    </body>
</html>
