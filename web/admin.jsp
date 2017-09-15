<%-- 
    Document   : admin
    Created on : Sep 11, 2017, 4:26:51 AM
    Author     : Janakar-PT1585
--%>
 <%--  "<a href='del1s.jsp'>REMOVE ADMIN</a>"+"<br/>"+"<br/>"+
                 "<a  href='dels.jsp'  >REMOVE EMPLOYEE</a>"+"<br/>"+"<br/>"+ --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN PORTAL</title>
        <script type="text/javascript" src="re.js">
</script>
    </head>
    <body>
        
        <%
            if(session.getAttribute("theName")==null)
            {  
              response.sendRedirect("error.jsp");
            }
             %>
             <style>
                 table{
                     border-collapse: collapse;
                     margin-left:420px;
                     margin-top:30px;
                 }
                 th,td{
                    border: 1.6px solid #ffddff;
                    padding: 8px;
                 }
                 a{
                     text-decoration: none;
                 }
                 </style>
            
        
        <table style="border: 2px solid #ffffdd">
           <tr><th> <b>ADMIN</b></th></tr>
            <tr><td><a href='adds.jsp'>ADD NEW ADMIN</a></td></tr>
              <tr><td> <a href='register.jsp'>ADD EMPLOYEE</a></td></tr>
                <tr><td> <a  href='view.jsp' >VIEW ADMINS</a></td></tr>
                  <tr><td><a  href='view1.jsp'>VIEW EMPLOYEE</a></td></tr>
                    <tr><td><a href='index1.jsp'>LOGOUT</a></td></tr>
        </table>      
    </body>
</html>
