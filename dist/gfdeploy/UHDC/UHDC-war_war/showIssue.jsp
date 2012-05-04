<%-- 
    Document   : showIssue.jsp
    Created on : 30 Apr, 2012, 6:49:10 PM
    Author     : root
--%>

<%@page import="bose.HealthRecord"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   
    <body>
        <ul>
        
        <%        
           int topic_id=Integer.parseInt(request.getParameter("topic_id"));
           ArrayList<Integer> images=HealthRecord.getImagesList(topic_id);
           int i = 0;
           for(Integer image : images )
           {        i++;
                  out.println("<li><a href='"+request.getContextPath()+"/ViewImage?file_id="+image+"'>View image "+i+"</a>");
           }
         %>
        <%= bose.HealthRecord.getHealthRecordByID(Integer.parseInt(request.getParameter("topic_id"))).getProblem_details()%>
    </body>
</html>
