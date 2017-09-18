/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mypackage.hello;

import java.sql.*;
public class DBConnector{


    public DBConnector(String a)
    {
        createDBConnection(a);
    }
  private void createDBConnection(String a)
  {
      Connection con;
            PreparedStatement ps ;
            ResultSet rs;
            try
            {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:80/db","root","1234");
            ps = con.prepareStatement("delete from emp where id="+a);
            ps.executeUpdate();
            con.close();
            }catch(Exception e){
            e.printStackTrace();}
            }

}
