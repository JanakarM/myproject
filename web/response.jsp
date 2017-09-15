<%-- 
    Document   : response
    Created on : Sep 11, 2017, 1:00:12 AM
    Author     : Janakar-PT1585
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title>ADMIN PORTAL</title>
    </head>
    <body>
        <%
            try
            {
            String u=request.getParameter("name");
            String u1=request.getParameter("pass");
            Connection con;
            PreparedStatement ps ;
            ResultSet rs;
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:80/db","root","1234");
            ps = con.prepareStatement("select password from login where name='"+u+"'");
            rs = ps.executeQuery(); 
            if(rs.next())
            {
            if(rs.getString(1).equals(u1))
            {
                String a=request.getParameter("name");
            session.setAttribute("theName",a);
                out.println("<h3>Login successfull</h3>");
                String site = "admin.jsp" ;
                response.setStatus(response.SC_MOVED_TEMPORARILY);
                response.setHeader("Location", site); 
            }
            else
            {
                 out.println("<h3>Login unsuccessfull</h3>");
                out.println("<a href='index.jsp'>continue..</a>");
            }
            }
            else
            {
                 out.println("<h3>Login unsuccessfull</h3>");
                 out.println("<a href='index.jsp'>continue..</a>");
            }
            }
            catch(Exception e)
            {
                out.println(e);
            }
            %>
     <%--   <jsp:useBean id="mybean" scope="session" class="org.mypackage.hello.NameHandler" />
        <jsp:setProperty name="mybean" property="name"  /> 
        <h1>Hello,<jsp:getProperty name="mybean" property="name" /> !</h1>--%>
    </body>
</html>
