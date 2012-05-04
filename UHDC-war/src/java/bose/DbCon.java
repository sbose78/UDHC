/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bose;

/**
 *
 * @author root
 */

import java.sql.*;
public class DbCon {
    
    public static String connectToDatabase()
    {
        
          System.out.println("MySQL Connect Example.");
          Connection conn = null;
          String url = "jdbc:mysql://instance7904.db.xeround.com:5950/";
          String dbName = "health1";
          String driver = "com.mysql.jdbc.Driver";
          String userName = "sbose78_db1"; 
          String password = "qwerty";
           try
           {
                Class.forName(driver).newInstance();
                conn = DriverManager.getConnection(url+dbName,userName,password);
                System.out.println("Connected to the database");
                

                PreparedStatement pstatement = null;

                String queryString = "INSERT INTO forum(topic,problem_id) VALUES (?, ?)";
                        /* createStatement() is used for create statement
                object that is used for 
                    sending sql statements to the specified database. */
                pstatement = conn.prepareStatement(queryString);
                
                pstatement.setString(1, "BPD in child");
                pstatement.setString(2, "2");
                int updateQuery = pstatement.executeUpdate();
        
                pstatement.close();
                conn.close();
                System.out.println("Disconnected from database");
            }
            catch (Exception e) 
            {
                e.printStackTrace();
                return e.toString();
            }
           return "OK";
    }
    
    public static Connection getDbConnection()
    {
        Connection conn = null;
        try{
                System.out.println("MySQL Connect Example.");
               
                String url = "jdbc:mysql://instance7904.db.xeround.com:5950/";
                String dbName = "health1";
                String driver = "com.mysql.jdbc.Driver";
                String userName = "sbose78_db1"; 
                String password = "qwerty";
                Class.forName(driver).newInstance();
                conn = DriverManager.getConnection(url+dbName,userName,password);
                System.out.println("Connected to the database");

        }
          
          catch (Exception e) 
            {
                e.printStackTrace();
                
            }
          
          return conn;
    }
    
    public static String closeConnection(Connection con, PreparedStatement ps)
    {
        try{
        ps.close();
        con.close();
        }
        catch(Exception e)
        {
            return e.toString();
        }
        return "OK";
        
    }
    
    public static String closeConnection(Connection con)
    {
        try{
        //ps.close();
        con.close();
        }
        catch(Exception e)
        {
            return e.toString();
        }
        return "OK";
        
    }
    
}
