<%-- 
    Document   : problem_list
    Created on : 28 Apr, 2012, 5:47:27 PM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page import="bose.*" %> 
<%@ page import="java.util.*" %> 

<html>
    
    <head>
        
        
        <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
  
  <script>
  $(document).ready(function() {
    $("#accordion").accordion();
  }); 
      </script>
      
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LIST </title>
    </head>
    <body>
        <h2 align='center'> List of Care-Seeker Issues </h2>
        
        <%
                ArrayList<HealthRecord> alhr= HealthRecord.getAllHealthRecords();        

         %>
        
        <div id="accordion">
            
                <%

                        for (HealthRecord n : alhr)
                        {
                            int topic_id=Integer.parseInt(n.getTopic_id());
                %>    

                <h3><a href="#"> <%= n.getTopic() %>  </a></h3>
                        <div align="center">
                                <p>
                            <a href="<%=request.getContextPath()%>/showIssue.jsp?topic_id=<%=n.getTopic_id()  %>"> Care-seeker narrative  </a>         
                           &nbsp;&nbsp; ||&nbsp;&nbsp;<a href="<%=request.getContextPath()%>/network.jsp?topic_id=<%=n.getTopic_id()  %>"> Network processing page  </a> 
                           &nbsp;&nbsp; ||&nbsp;&nbsp;<a href="<%=request.getContextPath()%>/solution.jsp?topic_id=<%=n.getTopic_id()  %>"> Solution page </a> 
                            <%            
                           ArrayList<Integer> images=HealthRecord.getImagesList(topic_id);
                        int i = 0;
                        for(Integer image : images )
                        {        i++;
                                out.println("<li><a href='"+request.getContextPath()+"/ViewImage?file_id="+image+"'>Attached Image "+i+"</a>,");
                        }

                          %> 
                                </p>
                        </div>	
                                
                <%
                            }
                %>                                                              
        </div>
           
          
        
    </body>
</html>
