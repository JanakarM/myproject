<%-- 
    Document   : index
    Created on : Sep 11, 2017, 12:54:07 AM
    Author     : Janakar-PT1585
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN PORTAL</title>
    </head>
    <body>
        <style>
            form{
                margin-left:380px;
                border: 1px solid black;
                padding:15px 0px 10px 10px;
                width:300px
            }
            
        </style>
        
        <form  name="Name Input Form" action="response.jsp">
            <h3>LOGIN PAGE</h3>
            USERNAME:<input style="margin-left: 10px" type="text" name="name" /><br /><br />
            PASSWORD:<input style="margin-left: 10px" type="password" name="pass"  /><br /><br />
            <input style="margin-right: 10px; margin-left: 100px" type="submit" value="LOGIN" /><input type="reset" value="CLEAR" />
            <br/>
            
        </form>
    </body>
</html>
