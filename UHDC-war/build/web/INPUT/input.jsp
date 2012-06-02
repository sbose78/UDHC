<%-- 
    Document   : input
    Created on : 2 Jun, 2012, 12:15:22 PM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript" src="script.js"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UDHC: Input</title>
    </head>
    <body onload="renderRichText()">
        
            <div><%@include file="../hpanel.jsp" %></div>
        
        
      <div align="center">            
        <div id='input_tabs'>

            <ul>
                <li style="margin-left: 350px;">NEW CARE-SEEKER RECORD </li>
                <li> PAST INPUTS </li>
                <li> ARCHIVED </li>
            </ul>
            <div align="center" onload="renderRichText()">
                
                  <%@include file="new_careseeker.jsp" %>
              
            </div>
           <div align="center">
                <%@include file="current_inputs.jsp" %>
                
                

            </div>
                <div align="center" style="font-size: 300%"">

                <a href="<%=request.getContextPath()%>/HOW/how.jsp"> Go to archives </a>   
                
            </div>            
        </div>          
      </div>
       
        
        
        
    </body>
</html>
