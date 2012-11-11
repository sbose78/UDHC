/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bose;
import bose.models.Report;
import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author root
 */
public class HealthRecord {
    String topic_id;
    String topic;
    String problem_details;
    String socialWorker_id;
    String problem_id;
    int approved;
    InputStream consent_letter;
    
    public HealthRecord()
    {
                
    }
    
    public HealthRecord(String topic, String socialWorker_id,String problem_id, String problem_details)
    {
        this.problem_id=problem_id;
        this.socialWorker_id=socialWorker_id;
        this.problem_details=problem_details;
        this.topic=topic;
        
    }
    
    
    public HealthRecord(String topic, String socialWorker_id,String problem_id, String problem_details, InputStream consent_letter)
    {
        this.consent_letter=consent_letter;
        this.problem_id=problem_id;
        this.socialWorker_id=socialWorker_id;
        this.problem_details=problem_details;
        this.topic=topic;
        
    }
      public HealthRecord(String topic, String socialWorker_id,String problem_id, String problem_details, InputStream consent_letter,int approved)
    {
        this.approved=approved;
        this.consent_letter=consent_letter;
        this.problem_id=problem_id;
        this.socialWorker_id=socialWorker_id;
        this.problem_details=problem_details;
        this.topic=topic;
        
    }
    
    public HealthRecord(String topic_id,String topic, String socialWorker_id,String problem_id, String problem_details)
    {
        
        this.topic_id= topic_id;
        this.problem_id=problem_id;
        this.socialWorker_id=socialWorker_id;
        this.problem_details=problem_details;
        this.topic=topic;
    }
    
    
     public static ArrayList<HealthRecord> getAllHealthRecords()
    {
        ArrayList<HealthRecord> lhr = new ArrayList<HealthRecord>();
        
        Connection con;//=DbCon.getDbConnection();
     
        try{
            
                con=DbCon.getDbConnection();

                ResultSet rst=null;
                Statement stmt=null;

                stmt=con.createStatement();
                rst=stmt.executeQuery("select * from health1.forum ");
                while(rst.next()){

                    
                    HealthRecord h=new HealthRecord(rst.getString("idforum"),rst.getString("topic"),rst.getString("social_worker_id"),rst.getString("problem_id"),rst.getString("problem_details"));
                    lhr.add(h);
                }
                DbCon.closeConnection(con);
        }
        
        
        
        catch(Exception e)
        {
            System.out.println(e.toString());
        }
        
        
        
        return lhr;
    }
    
    
    public static byte[] getImageData(int idhealth_files)
    {
        Connection con;//=DbCon.getDbConnection();
        
          InputStream is;
          byte[] imgdata=null;
     
        try{
            
                con=DbCon.getDbConnection();

                ResultSet rst=null;
                Statement stmt=null;
                
              

                stmt=con.createStatement();
                rst=stmt.executeQuery("select * from health1.health_files where idhealth_files = "+idhealth_files);
                while(rst.next()){
                    
                        //is=rst.getBinaryStream("file");
                         Blob b=rst.getBlob("file");
                         imgdata=b.getBytes(1, (int)b.length());
                         break;
                         
                }
                DbCon.closeConnection(con);
                return imgdata;
        }
        
        
        
        catch(Exception e)
        {
            System.out.println(e.toString());
        }
        
        return null;
        
    }
    
    
    public static ArrayList<Integer> getImagesList(int topic_id)
    {
        ArrayList<Integer> list=new ArrayList<Integer>();
        Connection con;
        
       try{
            
                con=DbCon.getDbConnection();

                ResultSet rst=null;
                Statement stmt=null;
                
              

                stmt=con.createStatement();
                rst=stmt.executeQuery("select idhealth_files from health1.health_files where topic_id = "+topic_id);
                while(rst.next()){
                    
                    list.add(rst.getInt("idhealth_files"));     
                }
                DbCon.closeConnection(con);
                
                
        }
        
        
        
        catch(Exception e)
        {
            System.out.println(e.toString());
        }
        
        
        return list;
        
        
    }
    
    
     public static ArrayList<Report> getImagesListAndInfo(int topic_id)
    {
        ArrayList<Report> list=new ArrayList<Report>();
        Connection con;
        
       try{
            
                con=DbCon.getDbConnection();

                ResultSet rst=null;
                Statement stmt=null;
                
              

                stmt=con.createStatement();
                rst=stmt.executeQuery("select idhealth_files, file_name from health1.health_files where topic_id = "+topic_id);
                while(rst.next()){
                    Report report = new Report(rst.getInt("idhealth_files")+"",rst.getString("file_name"));
                    list.add(report);
                    //list.add(rst.getInt("idhealth_files"));     
                }
                DbCon.closeConnection(con);
                
                
        }
        
        
        
        catch(Exception e)
        {
            System.out.println(e.toString());
        }
        
        
        return list;
        
        
    }
   
    
    
    public static ArrayList<HealthRecord> getSubmissionsByUserEmail(String email)
    {
       
        ArrayList<HealthRecord> lhr = new ArrayList<HealthRecord>();
        
        Connection con;//=DbCon.getDbConnection();
     
        try{
            
                con=DbCon.getDbConnection();

                ResultSet rst=null;
                Statement stmt=null;

                stmt=con.createStatement();
                rst=stmt.executeQuery("select * from health1.forum where social_worker_id = '"+email+"'");
                while(rst.next()){

                    
                    HealthRecord h=new HealthRecord(rst.getString("idforum"),rst.getString("topic"),rst.getString("social_worker_id"),rst.getString("problem_id"),rst.getString("problem_details"));
                    lhr.add(h);
                }
                DbCon.closeConnection(con);
        }
        
        
        
        catch(Exception e)
        {
            System.out.println(e.toString());
        }
        
        return lhr;
    
    }
    
    
    public static String insertImage(InputStream image,int topic_id)
    {
        try{
        
        Connection conn= DbCon.getDbConnection();
        
                PreparedStatement pstatement = null;

                String queryString = "INSERT INTO health_files(file,topic_id) VALUES (?,?)";
                pstatement = conn.prepareStatement(queryString);
                
                pstatement.setBlob(1, image);       
                pstatement.setInt(2, topic_id);  
                
                int updateQuery = pstatement.executeUpdate();
                
                DbCon.closeConnection(conn, pstatement);
                
        }
        catch(Exception e)
        {
            System.out.println(e.toString());
        }
        
        
        
        return "OK";
    }
    
    // Called from UploadImage.java
    public static String insertImageWithName(InputStream image,int topic_id,String file_name)
    {
        try{
        
        Connection conn= DbCon.getDbConnection();
        
                PreparedStatement pstatement = null;

                String queryString = "INSERT INTO health_files(file,topic_id,file_name) VALUES (?,?,?)";
                pstatement = conn.prepareStatement(queryString);
                
                pstatement.setBlob(1, image);       
                pstatement.setInt(2, topic_id);  
                pstatement.setString(3, file_name);
                        
                
                int updateQuery = pstatement.executeUpdate();
                
                DbCon.closeConnection(conn, pstatement);
                
        }
        catch(Exception e)
        {
            System.out.println(e.toString());
        }
        
        
        
        return "OK";
    }
    
    
    // called from CatchHealthIssue servlet
    
    public String insertHealthRecord()
    {
        try            
        {
               this.problem_id=User.getScientificName();
                Connection conn= DbCon.getDbConnection();
                PreparedStatement pstatement = null;

                String queryString = "INSERT INTO forum(topic,social_worker_id,problem_details,problem_id) VALUES (?,?, ?,?)";
                pstatement = conn.prepareStatement(queryString);
                
                pstatement.setString(1, this.topic);
                pstatement.setString(2, this.socialWorker_id);
                
                pstatement.setString(3, this.problem_details);
                pstatement.setString(4, this.problem_id);
                
                int updateQuery = pstatement.executeUpdate();
                
                DbCon.closeConnection(conn, pstatement);
            
        }
        catch(Exception e)
        {
            return e.toString();
        }
        return "OK";
    }   
    
    
    //added consent letter
    
    public String insertHealthRecord2()
    {
        try            
        {
               this.problem_id=User.getScientificName();
                Connection conn= DbCon.getDbConnection();
                PreparedStatement pstatement = null;

                String queryString = "INSERT INTO forum(topic,social_worker_id,problem_details,problem_id,consent_letter,approval) VALUES (?,?, ?,?,?,?)";
                pstatement = conn.prepareStatement(queryString);
                
                pstatement.setString(1, this.topic);
                pstatement.setString(2, this.socialWorker_id);
                
                pstatement.setString(3, this.problem_details);
                pstatement.setString(4, this.problem_id);
                pstatement.setBlob(5, consent_letter); 
                
                pstatement.setInt(6,0);
                
                int updateQuery = pstatement.executeUpdate();
                
                DbCon.closeConnection(conn, pstatement);
            
        }
        catch(Exception e)
        {
            return e.toString();
        }
        return "OK";
    }   
    
    //getting scientific name externally
    public String insertHealthRecord3(String sc_name)
    {
        try            
        {
               this.problem_id=sc_name;
                Connection conn= DbCon.getDbConnection();
                PreparedStatement pstatement = null;

                String queryString = "INSERT INTO forum(topic,social_worker_id,problem_details,problem_id,consent_letter) VALUES (?,?, ?,?,?)";
                pstatement = conn.prepareStatement(queryString);
                
                pstatement.setString(1, this.topic);
                pstatement.setString(2, this.socialWorker_id);
                
                pstatement.setString(3, this.problem_details);
                pstatement.setString(4, this.problem_id);
                pstatement.setBlob(5, consent_letter);                
                
                int updateQuery = pstatement.executeUpdate();
                
                DbCon.closeConnection(conn, pstatement);
            
        }
        catch(Exception e)
        {
            return e.toString();
        }
        return "OK";
    }   
    
    
    public String getTopic()
    {
        return topic;
    }
    public String getProblem_details()
    {
        return problem_details;
    }
   
    
    public String getTopic_id()
    {
        
        return topic_id;
    }
    
     public String getProblem_id()
    {
        
        return problem_id;
    }
    
    public static HealthRecord getHealthRecordByID(int id)
    {
        Connection con;//=DbCon.getDbConnection();
        String a="";
        HealthRecord h = new HealthRecord(a,a,a,a);   
        try{            
                con=DbCon.getDbConnection();
                ResultSet rst=null;
                Statement stmt=null;
                stmt=con.createStatement();
                rst=stmt.executeQuery("select * from health1.forum where idforum = "+id);                                   
                
                while(rst.next())
                {
                    h=new HealthRecord(rst.getString("topic"),"0","0",rst.getString("problem_details"));                           
                    break;
                }
                DbCon.closeConnection(con);
                
        }
        catch(Exception e)
        {
            System.out.println(e.toString());
        }
        
        return h; 
    }
    
    public String insertSolution(int topic_id,String solution,String user)
    {
        try            
        {       Connection conn= DbCon.getDbConnection();
                PreparedStatement pstatement = null;
               
                String queryString = "UPDATE health1.forum SET solution_user = ? , solution_content = ? WHERE idforum = "+topic_id;
                pstatement = conn.prepareStatement(queryString);
                
                pstatement.setString(1, user);
                pstatement.setString(2, solution);
                
                int updateQuery = pstatement.executeUpdate();
                DbCon.closeConnection(conn, pstatement);            
        }
        catch(Exception e)
        {
            return e.toString();
        }                        
        return "OK";
    }    
    
     
    public static String showSolution(int topic_id)
    {
        Connection con;//=DbCon.getDbConnection();
        String solution_user="";
        String solution_content="";
        
        try{
                con=DbCon.getDbConnection();

                ResultSet rst=null;
                Statement stmt=null;

                stmt=con.createStatement();
                rst=stmt.executeQuery("select solution_user , solution_content from health1.forum where idforum = "+topic_id);
                while(rst.next()){
                    solution_user=rst.getString("solution_user");
                    solution_content=rst.getString("solution_content");
                    break;
                }
                DbCon.closeConnection(con);
        }       
        catch(Exception e)
        {
            System.out.println(e.toString());
        }
                    
        return solution_content;
    }    
    
}
