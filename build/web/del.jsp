<%-- 
 ps = con.prepareStatement("select * from emp where name='"+s+"'");
           rs=ps.executeQuery(); 
           if(rs.next())
           {
               ps = con.prepareStatement("delete from emp where name='"+s+"'");
               ps.executeUpdate(); 
               out.println(s+" is removed from employee");
           }
           else
               out.println("no such employee");
            }
    Document   : del
    Created on : Sep 12, 2017, 11:09:06 AM
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
            String s=request.getParameter("ename");
            if(session.getAttribute("theName")!=null)
              {
             try
            {
            Connection con;
            PreparedStatement ps ;
            ResultSet rs;
             String[] r={null};
             if(request.getParameterValues("cb")!=null)
            {
           r=request.getParameterValues("cb");
            }
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:80/db","root","1234");
            int i=0;
            if(request.getParameter("de")!=null)
            {
            while(r[i]!=null)
            {
                 ps = con.prepareStatement("delete from emp where name='"+r[i]+"'");
               ps.executeUpdate(); 
               out.println(r[i]+" is removed from employee"+"<br>");
               i++;
            }
            }
            }
            catch(Exception e)
            {
                out.println();
                response.sendRedirect("view1.jsp");
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
