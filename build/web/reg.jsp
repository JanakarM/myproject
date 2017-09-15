<%-- 
    Document   : reg
    Created on : Sep 11, 2017, 4:14:15 AM
    Author     : Janakar-PT1585
--%>
<%@page import="java.text.SimpleDateFormat"%>
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
           String u3=null;
              if(session.getAttribute("theName")!=null)
              {
            try
            {
                 if(request.getParameter("gender") != null) {
                if(request.getParameter("gender").equals("male")) {
                    u3="male";
                }
                else if(request.getParameter("gender").equals("female"))
                {
                     u3="female";
                }
                 }
            String u=request.getParameter("ename");
            String u1=request.getParameter("id");
            String u2=request.getParameter("age");
             String u4=request.getParameter("l");
            String u5=request.getParameter("v");
            String u6=request.getParameter("place");
             String u7=request.getParameter("contact");
            String u8=request.getParameter("dept");
            String u10=request.getParameter("doj");
            String u9=u10.substring(0,4)+"/"+u10.substring(5,7)+"/"+u10.substring(8,10);
            out.println(u9);
            Connection con;
            PreparedStatement ps ;
            ResultSet rs;
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:80/db","root","1234");
            ps = con.prepareStatement("insert into emp values('"+u+"','"+u1+"','"+u2+"','"+u3+"',"+u4+","+u5+",'"+u6+"','"+u7+"','"+u8+"',"+u9+")");
            ps.executeUpdate();
            out.println("NEW EMPLOYEE ADDED");
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
