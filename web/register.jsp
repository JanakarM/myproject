<%--
response.sendRedirect("view1.jsp");
 <form id="form1" action='reg.jsp' method="GET">
            <label>EMPNAME:</label><input style="margin-left: 10px" type="text" name="ename" value='' required/><br/><br/>
            <label name="id">ID:</label><input style="margin-left: 74px" type="text" name="id" value='' /><br/><br/>
            <label>AGE:</label><input style="margin-left: 60px" type="number" name="age" value='' /><br/><br/>
            <label name="id">GENDER:</label><input style="margin-left: 20px" type="radio" name="gender" value="male"  > Male
                                            <input style="margin-left: 90px" type="radio" name="gender" value="female" > Female <br>
                                            <br>
            <input style="margin-left: 100px" type="submit" value="REGISTER" />
            <button style="margin-left: 15px;display:<%=v%>" id="up1" onclick='this.form.action="register.jsp"'  >UPDATE</button><br>
             <input style="margin-left: 100px;margin-top:15px" type="reset" value="CLEAR" />
        </form>
if(u4.equals("male"))
                u5="checked";
            else if(u4.equals("female"))
               u6="checked";
 ps = con.prepareStatement("select * from emp where name='"+u+"'");
            rs=ps.executeQuery();
            if(rs.next())
            {
              v="inline";
             u3=rs.getString(1);
            u1=rs.getString(2);
            u2=rs.getString(3);
            u4=rs.getString(4);
            }
    Document   : register
    Created on : Sep 11, 2017, 4:17:33 AM
    Author     : Janakar-PT1585
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 
        
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN PORTAL</title>
        <script type="text/javascript" language="javascript" src="re.js">
           
            
        </script>
       
    </head>
    <body>
     <%
         String val1="";
         String val2="";
         String val20="";
         String val3="";
         String val30="";
         String val4="";
         String val5="";
         String val6="";
         String val7="";
         String rq[]={""};
                 String dis="none";
         String d="inline",d1="inline";
         String re="required";
         String r[]={null};
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
            if(request.getParameter("up")!=null)
            {    
                r=request.getParameterValues("cb");
                out.println(r[0]);
                v="inline";
                re="";
                try
                {
                if(r[1].equals(null))
                {
                d="none";
                }
                else
                {
                    d="none";
                d1="none";
                }
                }catch(Exception e)
                {
                    out.println(r[0]);
                    d="none";
               
                 String qu2="select * from emp where id="+r[0];
                   ps1=con.prepareStatement(qu2);
                   rs=ps1.executeQuery();
                    rs.next();
                   val1=rs.getString("age");
                   if(rs.getString("isregistered")=="1")
                   {
                   val2="checked";
                   }
                   else
                   {
                      val20="checked"; 
                   }
                    if(rs.getString("isverified")=="1")
                   {
                   val3="checked";
                   }
                   else
                   {
                      val30="checked"; 
                   }
                   val4=rs.getString("contact");
                   val5=rs.getString("dept");
                    out.println(r[0]);
                }
            }
            else if(request.getParameter("up1")!=null)
            {
                d="none";
                v="inline";
                 re="";
                out.println("edhuku");
                rq=request.getParameterValues("rr");
                out.println(rq[0]);
                String qr[]={"","","","","","","","","","",""};
               try
               {
                if(request.getParameter("ename")!=null)
                {
                    out.println(request.getParameter("ename"));
                }
               }
                catch(Exception e)
                {
                  out.println("1");
                }
               try
               {
                 if(request.getParameter("id")!="")
                {
                     qr[1]="id="+Integer.parseInt(request.getParameter("id"))+",";
                     out.println(qr[1]);
                }
               }
                catch(Exception e)
                {
                  out.println("2");
                }
               try
               {
                  if(request.getParameter("age")!="")
                {
                     qr[2]="age='"+Integer.parseInt(request.getParameter("age"))+"',";
                out.println(qr[2]);
                }
               }
                catch(Exception e)
                {
                  out.println("3");
                }
               try
               {
               if(request.getParameter("gender")!=null)
                       {
                  qr[3]="gender='"+request.getParameter("gender")+"',";   
                out.println(qr[3]);
                }
               } catch(Exception e)
                {
                  out.println("4");
                }
               try
               {
               if(request.getParameter("l")!=null)
                {
                  qr[4]="isregistered="+request.getParameter("l")+",";   
                out.println(qr[4]);
                }
               } catch(Exception e)
                {
                  out.println("4");
                }
                 try
                 {
                     if(request.getParameter("v")!=(null))
                {
                  qr[5]="isverified="+request.getParameter("v")+",";   
                out.println(qr[5]);
                }
                 }
                   catch(Exception e)
                {
                  out.println("5");
                } 
                try
                {
                    if(request.getParameter("place")!="")
                {
                  qr[6]="place='"+request.getParameter("place")+"',";   
                out.println(qr[6]);
                }
                } catch(Exception e)
                {
                  out.println("6");
                }
                 try
                 {
                     if(request.getParameter("contact")!=(null))
                {
                  qr[7]="contact='"+request.getParameter("contact")+"',";   
                out.println(qr[7]);
                }
                 }
                  catch(Exception e)
                {
                  out.println("7");
                }
                 try
                 {
                        if(!request.getParameter("dept").equals("hai"))
                {
                   if(request.getParameter("dept").equals("hr"))
                   {
                     dis="block";
                   }
                   
                  qr[8]="dept='"+request.getParameter("dept")+"',";   
                out.println(qr[8]);
                }
                 }
                  catch(Exception e)
                {
                  out.println("8");
                }
                 int i=0;
                 String qu=null;
                 out.println("out");
                 try
                 {
                  while(rq[i]!=null)
                  {
                      out.println("in");
                      qu="update emp set "+qr[1]+qr[2]+qr[3]+qr[4]+qr[5]+qr[6]+qr[7]+qr[8]+"id="+rq[i]+ " where id = "+rq[i]+"";
                      out.println(qu);
                 ps1 = con.prepareStatement(qu);
                 ps1.executeUpdate();
                
                 i++;
                  }
                 }catch(Exception e){
                     
                  }
           }
            else if(request.getParameter("ok")!=null)
            {
                
                String rz[]=request.getParameterValues("rr1");
               int h=0;
             try
             {
               while(rz[h]!=null)
               {
                   String qu2="select contact from emp where name='"+rz[h]+"'";
                   ps1=con.prepareStatement(qu2);
                   rs=ps1.executeQuery();
                  rs.next();
                   out.println("inserting"+rz[h]);
                String qu1="insert into login(name,password,mobile) values('"+rz[h]+"','"+request.getParameter("hr")+"',"+rs.getString(1)+")";
                  ps1 = con.prepareStatement(qu1);
                 ps1.executeUpdate();
                  out.println("inserting"+rz[h]);
                  h++;
               }
             }
             catch(Exception e)
                {
                  out.println(e);
                  response.sendRedirect("view1.jsp");
                }
               
            }
            }
                catch(Exception e)
                {
                  out.println(e);
                  
                }
            
            }
           %> <style>
            form{
                margin-left:330px;
                border: 1px solid black;
                padding:15px 0px 10px 10px;
                width:300px
            }
            label
            {
              float: left;
              width: 100px;   
              color:blue;
            }
            
        </style>
        
           <form id="form1" action='register.jsp' method="GET">
               
              <%
                  try
                  {
                  int j=0;
              while(r[j]!=null)
              {
                   out.println("<input type='hidden' name='rr' value='"+r[j]+"' />");
                   j++;
              }
                
            j=0;
              while(rq[j]!=null)
              {
                   out.println("<input type='hidden' name='rr1' value='"+rq[j]+"' />");
                   j++;
              }
                  }
                  catch(Exception e){}
              %>
            <label style="display:<%=d%>">EMPNAME:</label><input  type="text" name="ename"  value='' style="display:<%=d%>" <%=re%>/><br/><br/>
            <label style="display:<%=d%>">ID:</label><input  type="text" name="id"  value='' style="display:<%=d%>" <%=re%>/><br/><br/>
            <label style="display:<%=d1%>">AGE:</label><input  type="number" style="display:<%=d1%>" name="age" value='<%=val1%>' /><br/><br/>
            <label style="display:<%=d%>">GENDER:</label><input  type="radio" name="gender" value="male" style="display:<%=d%>" checked> <p style="display:<%=d%>">Male</p>
            <input  type="radio" name="gender" value="female" style="display:<%=d%>"> <p style="display:<%=d%>">Female</p> <br><br>
            <label style="display:'inline'">ISLICENSED:</label><input type="checkbox" name="l" value='true' <%=val2%> />Yes 
            <input type="checkbox" name="l" style="display:'inline'" value='false' <%=val20%>/>No <br/><br/>
            <label style="display:'inline'">ISVERIFIED:</label><input  type="checkbox" name="v" value='true' <%=val3%>  />Yes 
            <input  type="checkbox" name="v" value='false' <%=val30%>/>No <br/><br/>
            <label style="display:<%=d%>">DOJ:</label><input  type="date" style="display:<%=d%>" name="doj"  value='' /><br/><br/>
            <label style="display:<%=d%>">PLACE:</label><input  type="text" style="display:<%=d%>" name="place" value='' /><br/><br/>
            <label style="display:<%=d1%>">CONTACT:</label><input type="text" style="display:<%=d1%>" name="contact" value='<%=val4%>' /><br/><br/>
            <label style="display:'inline'">DEPT:</label> <select name="dept" style="display:'inline'">
                <option value="hai"><%=val5%></option>
    <option value="testing">testing</option>
    <option value="sales">sales</option>
    <option value="dev">dev</option>
    <option value="tech.sup">marketting</option>
    <option value="hr">hr</option>
  </select><br/><br/>
  <label style="display:<%=d%>">.</label><input name="hr" type='password' style="display:<%=dis%>" /><label style="display:<%=d%>">.</label><input type="submit" name="ok" style="display:<%=dis%>" /><br>
            <input style="margin-left: 100px" type="submit" style="display:<%=d%>" onclick="this.form.action='reg.jsp'"  value="REGISTER" />
            <button style="margin-left: 15px;display:<%=v%>" name="up1" onclick="this.form.action='register.jsp'"  >UPDATE</button><br>
            <input style="margin-left: 100px;margin-top:15px" type="reset" value="CLEAR" /><button type="button" onclick="window.location.href='admin.jsp'" style="margin-left: 10px" class="dropbtn" onclick="n()" value="de">Home</button>
        </form> 
       
    </body>
</html>
