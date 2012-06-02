/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bose.google;


import com.google.gdata.client.docs.DocsService;
import com.google.gdata.data.*;
import com.google.gdata.data.docs.*;
import com.google.gdata.data.docs.DocumentListEntry.MediaType;
import com.google.gdata.data.media.MediaByteArraySource;
import com.google.gdata.util.*;
import java.net.URL;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class UploadToDocs extends HttpServlet {

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
          


        DocsService docsService = new DocsService("care.udhc.co.in");                
        try {
                docsService.setUserCredentials("sbose78@gmail.com", "**");      

                DocumentListEntry newDocument = new DocumentListEntry();
                
                  URL documentFeedURL = new URL("https://docs.google.com/feeds/default/private/full");

            DocumentListFeed docsFeed = docsService.getFeed(documentFeedURL, DocumentListFeed.class);

            for(DocumentListEntry entry: docsFeed.getEntries()){
                System.err.println(entry.getTitle().getPlainText());
            }

                
                /*
                String s="hello bose";
                byte byteData[]=s.getBytes();
                
                // Load the byte array into a MediaSource
                MediaByteArraySource mediaSource = new MediaByteArraySource(byteData, MediaType.fromFileName("bose.doc").getMimeType());
                MediaContent content = new MediaContent();
                content.setMediaSource(mediaSource);
                content.setMimeType(new ContentType(mediaSource.getContentType()));
                newDocument.setContent(content);

                String gdocsFilename = new String("My Filename");
                newDocument.setTitle(new PlainTextConstruct(gdocsFilename));
                out.println("OK");
                // Push it into Google Docs!!  "https://docs.google.com/feeds/default/private/full"

                DocumentListEntry uploadedRef = docsService.insert(new URL("https://docs.google.com/feeds/default/private/full/"), newDocument);
            
         */  
        }
        
        catch(Exception e)
        {
           out.println(e.toString());
           
        }
        finally {            
            out.close();
        }
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
