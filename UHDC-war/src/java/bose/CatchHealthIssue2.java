/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bose;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.*;
import org.apache.commons.fileupload.disk.*;
import org.apache.commons.fileupload.servlet.*;//ServletFileUpload;



/**
 *
 * @author root
 */
public class CatchHealthIssue2 extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        System.out.println("--------------IN SERVLET-----");
        
        String topic = "";//request.getParameter("topic");
        String problem_details = "";//request.getParameter("problem_details");
        String swid= User.getLoggedInUserEmail(request);
        String patient_name="";
        String isNew="";
        
    try {
        List<FileItem> items = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
        
        String fieldname;
        String fieldvalue=""; ;
        InputStream filecontent=null ;
        for (FileItem item : items) {
            if (item.isFormField()) {
                // Process regular form field (input type="text|radio|checkbox|etc", select, etc).
                fieldname = item.getFieldName();
                fieldvalue = item.getString();
                
                if( fieldname.equals("isNew"))
                {
                    isNew=fieldvalue;
                }
                
                if(fieldname.equals("topic"))
                {
                    topic=fieldvalue;
                }
                else if(fieldname.equals("problem_details"))
                {
                    problem_details=fieldvalue;
                }
                
                else if(fieldname.equals("patient_name"))
                {
                    patient_name=fieldvalue;                    
                }
                
                System.out.println(fieldname+"....formfield...."+fieldvalue);
                // ... (do your job here)
            } else {
                // Process form file field (input type="file").
               //ouur String fieldname = item.getFieldName();
                String filename = (item.getName());
                System.out.println("....non-form-field...."+filename);
                 filecontent = item.getInputStream();
                
              
                // ... (do your job here)
            }
        }
       // String sc_name=bose.User.getScientificName();
          HealthRecord hr=new HealthRecord(topic,swid,"0",problem_details,filecontent);
          
          String name=bose.User.getLoggedInUserName(request);
          
          // This is an object created to help invoke functions
          
          User u=new User(patient_name,swid);
         
          /*
           The first condition checks whether its a new patient 
          the second condtion checks whether the logged in user is *not* a care-seeker because the rest can add new 
          patients to the database
          * 
          * 
          */
          
          if(isNew.equals("1") && !User.getLoggedInUserRole(request).equals("0"))
             
          {
            u.insertSocialWorkerPatient();
          }
          
          hr.insertHealthRecord3(patient_name);
          //HealthRecord.insertImage(filecontent,Integer.parseInt(fieldvalue));          
          
          
           String to[]={"sbose78@gmail.com"};//,"shivika.ch@gmail.com ","rakesh7biswas@gmail.com"};
            String subject="[UDHC] Patient name : "+ patient_name + "uploaded by " + bose.User.getLoggedInUserName(request);
            String content=" Hi, <br>A new health issue has been posted on UDHC<br>: "+topic;
            content+="<br> ***This is an automated email sent from the UDHC website. Visit <a href='http://care.udhc.co.in/INPUT/displayInputs.jsp'>LIST OF RECORDS</a> for attached images  ***<br><br>";
            content+=problem_details;
            content+="<br><br>Warm regards, <br> The UDHC Team";
            
            topic="[ UDHC ] - "+ patient_name + "uploaded by " + bose.User.getLoggedInUserName(request);
           // problem_details="A new issue has been uploaded at <a href='http://care.udhc.co.in/INPUT/displayInputs.jsp'>UDHC NETWORK</a><br><br>"
           //         +problem_details;
            bose.EmailUtil.sendMail("sbose78", to, subject, content);
            
             response.sendRedirect(request.getContextPath()+"/INPUT/displayMyInputs.jsp");
           
    }
         
          
         
        
     catch (Exception e) {
        throw new ServletException("Cannot parse multipart request.", e);
    }

    // ...
 }
    
  
        
        
        
        
        
        
        
        
        
        

    
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws  ServletException, IOException{
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}

