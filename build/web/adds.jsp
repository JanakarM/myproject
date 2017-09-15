<%-- 
    Document   : adds
    Created on : Sep 11, 2017, 4:36:37 AM
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
              String v="none";
           String u="";
            ResultSet rs=null;
            String u4,u1,u2,u3;
                   String u5="unchecked";
                   String u6="unchecked";
                            u4="";
                                    u2="";
                                    u1="";
                                    u3="";
            if(session.getAttribute("theName")==null)
            {  
                response.sendRedirect("error.jsp");
            }
            else
            {
               try
            {
            u=request.getParameter("emps");
           
            Connection con;
            PreparedStatement ps,ps1 ;
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:80/db","root","1234");
            if(request.getParameter("name")==null)
            {    
            ps = con.prepareStatement("select * from login where name='"+u+"'");
            rs=ps.executeQuery();
            if(rs.next())
            {
              v="inline";
             u3=rs.getString(4);
            u1=rs.getString(2);
            u2=rs.getString(3);
            }
            }
            else
            {
                 ps1 = con.prepareStatement("update login set name='"+request.getParameter("name")+"',password='"+request.getParameter("pass")+"',mobile='"+request.getParameter("mobile")+"' where name='"+request.getParameter("name")+"'");
                ps1.executeUpdate();
                response.sendRedirect("admin.jsp");
            }
            }
                catch(Exception e)
                {
                    
                }  
            }
           %>
           <style>
            form{
                margin-left:380px;
                border: 1px solid #dd22aa;
                padding:15px 0px 10px 10px;
                width:300px
            }
            
        </style>
        <form action="addadmin.jsp">
            NAME:      <input style="margin-left: 50px" type="text" name="name" value="<%=u1%>" /><br/><br/>
           PASSWORD: <input style="margin-left: 10px" type="password" name="pass" value="<%=u2%>" /><br/><br/>
            MOBILE:<input style="margin-left: 40px" type="text" name="mobile" value="<%=u3%>" /><br/><br/>
            <input style="margin-left: 100px" type="submit" value="ADD" />
            <button style="margin-left: 15px;display:<%=v%>" onclick='this.form.action="adds.jsp"'  >UPDATE</button><br>
            <input style="margin-left: 100px;margin-top:15px" type="reset" value="CLEAR" />
        </form>
    </body>
</html>
