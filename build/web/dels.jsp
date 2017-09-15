<%-- 
    Document   : dels
    Created on : Sep 12, 2017, 11:16:47 AM
    Author     : Janakar-PT1585
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
            if(session.getAttribute("theName")==null)
            {  
                response.sendRedirect("error.jsp");
            }
           %>
        <form action="del.jsp">
             ENAME:<input type="text" name="ename" value="" />
             <input type="submit" value="DELETE" />
        </form>
       
    </body>
</html>
