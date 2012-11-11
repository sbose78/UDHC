/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bose;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author root
 */
public class User {
    
    int role ; // SOCIAL , SEEKER , GIVER
    String email ; // only for GIVER and SEEKER
    int approved; 
    String userid;
    String name;
    
    // this constructor is used for the PATIENT table. 
    // name = scientific name of patient
    // email = email of social worker
    
    public User(String name, String email)
    {
        this.name=name;
        this.email=email;
               
    }
    
    public User(int role,String email,int approved,String name,String userid)
    {
        this.role=role;
        this.email=email;
        this.approved=approved;
        this.name=name;
        this.userid=userid;
    }
    
    public String getName()
     {
        return name;
        
    }
    
    public String getEmail()
    {
        return email;
    }
    
    public static String getScientificName()
    {
        
        Connection con;//=DbCon.getDbConnection();
     
        try{
            
                con=DbCon.getDbConnection();

                ResultSet rst=null;
                Statement stmt=null;

                stmt=con.createStatement();
                con.setAutoCommit(false);
                rst=stmt.executeQuery("select name from health1.scientific_names where used = 0 ");
              
                while(rst.next()){
                    
                    
                        String name=rst.getString("name");
                          stmt.executeUpdate("UPDATE health1.scientific_names SET used = 1  WHERE name= '"+name+"'");
                      //  System.out.println(name);
                    //    name=sanitizeName(name);
                        con.commit();
                        DbCon.closeConnection(con);
                        return name;
                }
                
                stmt = null;
                
                
                DbCon.closeConnection(con);
                
                
        }
        
        
        
        catch(Exception e)
        {
            System.out.println(e.toString());
        }       
        
        
        return "ERROR RETIEVING SCIENTIFIC NAME";
    }
    
    public static String sanitizeName(String s)
    {
        char original[]=s.toCharArray();
        char changed[]=new char[original.length];
        
        int j=0;
        for(int i=0;i<original.length;i++)
        {
            System.out.print(original[j]);
            if(Character.isLetter(original[i]))
            {
                changed[j++]=original[i];
            }
            else if(Character.isWhitespace(original[i]))
            {
                changed[j++]='_';
            }
                            
        }
        String updated=changed.toString();
        updated=updated.substring(0, j);
        System.out.println(updated);
        
        return updated;
    }
    
    public static boolean checkUserPresence(String email)
    {
        
        
        Connection con;//=DbCon.getDbConnection();
     
        try{
            
                con=DbCon.getDbConnection();

                ResultSet rst=null;
                Statement stmt=null;

                stmt=con.createStatement();
                rst=stmt.executeQuery("select * from health1.user_roles ");
                while(rst.next()){
                    if(rst.getString("email").equals(email))
                        return true;
                }
                DbCon.closeConnection(con);
        }
        
        
        
        catch(Exception e)
        {
            System.out.println(e.toString());
        }
        
        
        
        return false;
    }
    
    /*
    public ArrayList<User> getAllUsers()
    {
        
        ArrayList<HealthRecord> lhr = new ArrayList<HealthRecord>();
        
        Connection con;//=DbCon.getDbConnection();
     
        try{
            
                con=DbCon.getDbConnection();

                ResultSet rst=null;
                Statement stmt=null;

                stmt=con.createStatement();
                rst=stmt.executeQuery("select * from health1.user_roles ");
                while(rst.next()){

                    
                    User =new HealthRecord(rst.getString("idforum"),rst.getString("topic"),"0","0",rst.getString("problem_details"));
                    lhr.add(h);
                }
        }
        
        
        
        catch(Exception e)
        {
            System.out.println(e.toString());
        }
        
        return lhr;
    }
    * 
    * 
    */
    
    public static String getRole(String email)
    {
        
        return "SOCIAL";
    }
    
    public String insertUser()
    {
        try
        {
                Connection conn= DbCon.getDbConnection();
                PreparedStatement pstatement = null;        

                String queryString = "INSERT INTO user_roles(role,email,approved,name) VALUES (?, ?,?, ?)";
                pstatement = conn.prepareStatement(queryString);
                
                pstatement.setInt(1, this.role);
                pstatement.setString(2, this.email);
                pstatement.setInt(3, 1);
                pstatement.setString(4, this.name);
                
                int updateQuery = pstatement.executeUpdate();
                
                DbCon.closeConnection(conn, pstatement);
            
        }
        catch(Exception e)
        {
            System.out.println(e.toString());
            return e.toString();
            
        }
        return "OK";
     
        
    }
    
    public static ArrayList<User> getPatientsBySocialWorkerID(String social_worker_id)
    {
        
        Connection con;//=DbCon.getDbConnection();
        
        ArrayList<User> user_al=new ArrayList<User>();
     
        try{
            
                con=DbCon.getDbConnection();

                ResultSet rst=null;
                Statement stmt=null;

                stmt=con.createStatement();
                rst=stmt.executeQuery("select * from health1.patient where social_worker_id = '"+social_worker_id+"'");
                while(rst.next()){
                    
                    String social_worker=rst.getString("social_worker_id");
                    String name=rst.getString("name") ;
                    
                    
                    User user=new User(name,social_worker);
                    user_al.add(user);
                        //return true;
                }
                DbCon.closeConnection(con);
        }
        
        
        
        catch(Exception e)
        {
            System.out.println(e.toString());
        }
        
        
        return user_al;
    }
    
    
    
    
    public String insertSocialWorkerPatient()
    {
        String name=this.name;
        String social_worker_id=this.email;
         try
        {
                Connection conn= DbCon.getDbConnection();
                PreparedStatement pstatement = null;        

                String queryString = "INSERT INTO health1.patient(name,social_worker_id) VALUES (?, ?)";
                pstatement = conn.prepareStatement(queryString);                
                
                pstatement.setString(1, name);                
                pstatement.setString(2, social_worker_id);
                
                int updateQuery = pstatement.executeUpdate();                
                DbCon.closeConnection(conn, pstatement);            
        }
        catch(Exception e)
        {
            System.out.println(e.toString());
            return e.toString();
            
        }
                
        
     
        return "OK";
    }
    
    public static String getName(String email)
    {
        
                    Connection con;//=DbCon.getDbConnection();
                    String name="";

                            try{

                                    con=DbCon.getDbConnection();

                                    ResultSet rst=null;
                                    Statement stmt=null;

                                    stmt=con.createStatement();
                                    rst=stmt.executeQuery("SELECT name FROM health1.user_roles where email = '"+email+"'");//'sbose78@gmail.com'");
                                    while(rst.next()){
                                        name= rst.getString("name");
                                    }
                                    DbCon.closeConnection(con);
                                    
                            }



                            catch(Exception e)
                            {
                                System.out.println(e.toString());
                            }
 
                               if(name.equals(""))
                               {
                                   name="ANONYMOUS";
                               }

                               
                            return name;

        
    }
    
    
    public static String getRedirectURL(HttpServletRequest request )
    {
        try{
            
            if(request.getSession()!=null)
            {
                String s=(String)request.getSession().getAttribute("redirect_url").toString();
                return s;        
            }

        }
        
        catch(Exception e )
        {
            return request.getContextPath()+"/home.jsp";
        }
        return request.getContextPath()+"/home.jsp";
        
    }
    
    public static String getLoggedInUserName( HttpServletRequest request )
    {
        try{
            
            if(request.getSession()!=null)
            {
                String s=(String)request.getSession().getAttribute("name").toString();
                return s;        
            }

        }
        
        catch(Exception e )
        {
            return "GUEST";
        }
        return "GUEST";
    }
    
    public static String getLoggedInUserEmail( HttpServletRequest request )
    {
        try{
            if(request.getSession()!=null)
            {
                String s=(String)request.getSession().getAttribute("email").toString();
                return s;        
            }
        }
        catch(Exception e)
        {
            return "GUEST";
        }
        return "GUEST";
    }
    
    public static String getLoggedInUserRole( HttpServletRequest request )
    {
        try
                {
                if(request.getSession()!=null)
                {
                    String s=(String)request.getSession().getAttribute("role").toString();
                    return s;        
                }

        }
       catch(Exception e)
        {
            return "0";
        }
        return "0";
    }
    
    
     public static int getLoggedInUserRole( String email )
     {
            Connection con;//=DbCon.getDbConnection();
                    String name="";
                    int n=0;

                            try{

                                    con=DbCon.getDbConnection();

                                    ResultSet rst=null;
                                    Statement stmt=null;

                                    stmt=con.createStatement();
                                    rst=stmt.executeQuery("SELECT role FROM health1.user_roles where email = '"+email+"'");//'sbose78@gmail.com'");
                                    while(rst.next()){
                                        n= rst.getInt("role");
                                    }
                                    DbCon.closeConnection(con);
                                    
                            }



                            catch(Exception e)
                            {
                                System.out.println(e.toString());
                            }
 
                              
                            return n;
    }
    
    
    public static void signout(HttpServletRequest request)
    {
        request.getSession(true).setAttribute("email", "GUEST");
    }
            
  
            
}
