<%-- 
 <a href="#" onclick="fn5(2)">2</a>
     <a href="#" onclick="fn5(4)">4</a>
     <a href="#" onclick="fn5(6)">6</a>
     <a href="#" onclick="fn5(8)">8</a>
 window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
    Document   : view1
    Created on : Sep 11, 2017, 6:29:47 AM
    Author     : Janakar-PT1585
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN PORTAL</title>
        <link rel = "stylesheet" type = "text/css" href = "newcss.css" />
    </head>
    <script type="text/javascript" language="javascript" src="re.js">
        </script>
    <body>       
            <%
                int q1=2,p=1;
                int b=2;
                int c=1,le=0;
             if(session.getAttribute("theName")!=null)
              {
            out.println("<h3>Employees</h3>");
                 try
            {
            Connection con;
            PreparedStatement ps,ps1 ;
            ResultSet rs;
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:80/db","root","1234");
            ps = con.prepareStatement("select * from emp");
           rs=ps.executeQuery();
           while(rs.next())
               le++;
           rs=ps.executeQuery();
            if(request.getParameterValues("emps")!=null)
            {
            String[] q=request.getParameterValues("emps");
            int j=0; 
            try
            {
                while(q[j]!=null)
             {
             ps1 = con.prepareStatement("delete from emp where name='"+q[j++]+"'");
            ps1.executeUpdate();
             }
            }
            catch(Exception e)
            {
            response.sendRedirect("view1.jsp");
            }
            }
             try
           {
               if(request.getParameter("sub")!=null)
               {
           b=Integer.parseInt(request.getParameter("in"));
                     String y1=request.getParameter("in2");
           q1=Integer.parseInt(y1);
            String y2=request.getParameter("in1");
           p=Integer.parseInt(y2);
                      if(request.getParameter("sub").equals("<<"))
                   {
                       if(p-b>0)
                       {
                             p=p-b;
                       q1=p+b-1;
                            int r=0;
                       while(r++<p-1)
                           rs.next();
                       }
                      
                   }
                   else
                   {
                       int r=0;
                      
                   if(q1+1<=le)
                   {
                        while(r++<q1)
                           rs.next();
                      p=(q1+1);
                 q1=(q1+b); 
                 if(q1>le)
                 {
                     q1=q1-q1%le;
                 }
                   }
                   else
                   {
                        while(r++<q1-b)
                           rs.next();
                   }
               }
               }
                 }
           catch(Exception e){out.println(e);}
          try
          {
              if(request.getParameter("submit")!=null)
               {
           String y=request.getParameter("submit");
           b=Integer.parseInt(y);
            p=1;
               q1=b;
               }
                  
              
           }
           catch(Exception e){out.println(e);}
            
            %>
            <form style="width:300px" action="view1.jsp" method="get">
                     <input type="submit" name="sub" class="dropbtn" value="<<"/>
                 <label id="lb" value=""><%=p%>-<label><%=q1%></label> of <%=le%></label>
                 <input type="hidden" value="<%=p%>" name="in1">
                 <input type="hidden" value="<%=q1%>" name="in2">
                 <input type="submit" name="sub" class="dropbtn" value=">>"/>
                
                     <div class="dropdown">
<label onclick="fn6()" class="dropbtn"><%=b%></label>
<input type="hidden" value="<%=b%>" name="in">
  <div id="myDropdown1" class="dropdown-contenta">
          <input class="dropbtna" type="submit" name="submit" value="2" onclick="fn5(2)" /><br>
          <input class="dropbtna" type="submit" name="submit" value="4" onclick="fn5(4)"/><br>
          <input class="dropbtna" type="submit" name="submit" value="6" onclick="fn5(6)"/><br>
          <input class="dropbtna" type="submit" name="submit" value="8" onclick="fn5(8)"/>
      
  </div>
</div>
  </form>
                    <div class="dropdown">
<button onclick="fn1()" class="dropbtn">Add/Remove Columns</button>
  <div id="myDropdown" class="dropdown-content">
      <input type="checkbox" name="col" value="1" disabled checked = true/>name<br>
      <input type="checkbox" name="col" value="2" checked = true/>id<br>
      <input type="checkbox" name="col" value="3" checked = true/>age<br>
      <input type="checkbox" name="col" value="4" checked = true/>gender<br>
      <input type="checkbox" name="col" value="5" checked = true/>islicensed<br>
   <input type="checkbox" name="col" value="6" checked = true/>isverified<br>
    <input type="checkbox" name="col" value="7" checked = true/>place<br>
   <input type="checkbox" name="col" value="8" checked = true/>dept<br>
   <input type="checkbox" name="col" value="9" checked = true/>contact<br>
    <input type="checkbox" name="col" value="10" checked = true/>doj<br>
   <button class="dropbtn" onclick="fn3()" >Apply</button><button class="dropbtn" onclick="fn4(1)">Reset</button>
  </div>
</div>
  <div id="my" class="dropdown">
      <div class="dropdown">
      <button class="dropbtn" onclick="fun2()" >Search</button>
<div id="myDropdown2" class="dropdown-contenta">
          <input class="dropbtna" type="submit" name="submit" id="1" value="name       " onclick="fun(1)" /><br>
          <input class="dropbtna" type="submit" name="submit" id="2"value="id            " onclick="fun(2)"/><br>
          <input class="dropbtna" type="submit" name="submit" id="3"value="age        " onclick="fun(3)"/><br>
          <input class="dropbtna" type="submit" name="submit" id="4"value="gender     " onclick="fun(4)"/>
           <input class="dropbtna" type="submit" name="submit" id="5"value="islicensed " onclick="fun(5)" /><br>
          <input class="dropbtna" type="submit" name="submit" id="6"value="isverified " onclick="fun(6)"/><br>
          <input class="dropbtna" type="submit" name="submit" id="7"value="place      " onclick="fun(7)"/><br>
          <input class="dropbtna" type="submit" name="submit" id="8"value="dept       " onclick="fun(8)"/><br>
          <input class="dropbtna" type="submit" name="submit" id="9"value="contact    " onclick="fun(9)"/>
          <input class="dropbtna" type="submit" name="submit" id="9"value="doj    " onclick="fun(10)"/>
      </div>
  </div>
      
  </div>
             <div style="overflow-x:auto;">
                  <form action="del.jsp">
                      <div><table>
  <tr>
      <th></th>
    <th>Name    <button type="button" class="dropbtn" id="1a" onclick="fn2(1)" >^</button></th>
    <th>Id      <button type="button"class="dropbtn" id="2a" onclick="fn2(2)" >^</button></th>
    <th>Age     <button type="button" class="dropbtn" id="3a" onclick="fn2(3)" >^</button></th>
    <th>Gender  <button type="button" class="dropbtn" id="4a" onclick="fn2(4)" >^</button></th>
    <th>isregistered  <button type="button" class="dropbtn" id="5a" onclick="fn2(5)" >^</button></th>
    <th>isverified  <button type="button" class="dropbtn" id="6a" onclick="fn2(6)">^</button></th>
 <th>place    <button type="button" class="dropbtn" id="7a" onclick="fn2(7)">^</button></th>
    <th>dept      <button type="button" class="dropbtn" id="8a" onclick="fn2(8)">^</button></th>
    <th>contact     <button type="button" class="dropbtn" id="9a" onclick="fn2(9)" >^</button></th>
    <th>doj     <button type="button" class="dropbtn" id="9a" onclick="fn2(10)" >^</button></th>
  </tr>
            <%
           int i,j=p;
          
           while(rs.next() && j<=q1)
           {
               i=1;
               if(rs.getString(2)!=null)
               {
               %>
               <tr>
                   <td><input type="checkbox" value='<%=rs.getString(2)%>' name="cb" /></td>
                   <%
                   }
                       try
                   {
               while(rs.getString(i)!=null)
               {
               %>
               
    <td><%=rs.getString(i++)%></td>
   
               <%
                   }
}catch(Exception e){}
               %></tr>
            <%
                j++;
           }
          %>
          </table><button class="dropbtn" type="button" onclick="fn4(2)" >Reset</button>   
          <button class="dropbtn" name="up"  value="up"onclick="this.form.action='register.jsp'">Update</button>
       <button class="dropbtn" name="de" value="de">Delete</button>  
        <button class="dropbtn" onclick="this.form.action='admin.jsp'" value="de">Home</button>
                      </div>
          
       </form>
             </div>
           
          <%
           }
         
            catch(Exception e)
            {
                out.println(e);
            }
                  }
              else
              {
                  response.sendRedirect("error.jsp");
                  out.println("<a href='index.jsp'>continue..</a>");
              }
                %>
       
    </body>
</html>
