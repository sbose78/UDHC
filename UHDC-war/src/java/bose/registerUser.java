/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bose;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author root
 */
public class registerUser extends HttpServlet {

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
        try{
            
            /*
             * 
             * 
             *  public User(int role,String email,int approved,String name,String userid)
    {
        this.role=role;
        this.email=email;
        this.approved=approved;
        this.name=name;
        this.userid=userid;
    }
             * 
             */
            
            // 0 - caregiver
            // 1 - social worker
            // 2 - care-seeker
            
            int role= Integer.parseInt(request.getParameter("role"));
            String name=request.getParameter("name");
            String email=request.getSession().getAttribute("email").toString();
            User user=new User(role,email,1,name,"0");
            System.out.println(user.insertUser());
            
            request.getSession(true).setAttribute("name", name);
            request.getSession(true).setAttribute("role", request.getParameter("role") );
            
            
            /*
             * Added in the prev servlet
             * 
                        request.getSession().setAttribute("name",authentication.getFullname());
                        request.getSession().setAttribute("email",authentication.getEmail());
                        request.getSession().setAttribute("gender",authentication.getGender());
             *              * 
             */
            
            
            
        }
        
        catch(Exception e )
        {
            
            System.out.println(e.toString());
        
        
        } 
         finally {            
    
        }
        response.sendRedirect(request.getContextPath()+"/INPUT/displayMyInputs.jsp");
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
            throws ServletException, IOException {
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
            throws ServletException, IOException {
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
