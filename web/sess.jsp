<%-- 
    Document   : sess
    Created on : Sep 11, 2017, 7:57:22 AM
    Author     : Janakar-PT1585
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
   String name = request.getParameter( "name" );
   session.setAttribute( "theName", name );
%>
<HTML>
<BODY>
<a href="response.jsp">Continue</a>
</BODY>
</HTML>