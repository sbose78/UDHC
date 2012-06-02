<%-- 
    Document   : index
    Created on : 28 Apr, 2012, 2:55:33 PM
    Author     : root - shoubhik bose
--%>


<%@ page import="bose.*" %> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    
    <head>
        
    </h4>
    <body   class="yui-skin-sam" >
        
            <h2 align="center"> SOLUTION for Care-seeker health issue ? </h2>


  <form method="post" action="<%=request.getContextPath() %>/CatchHealthIssue" name="form1" id="form1">

                    <p align='center'>
                        <br>Write or paste the solution here <br>
                   
                        
         <textarea id="editor" name="editor" rows="20" cols="75" >
                
         </textarea>
                        <input type="hidden" id="v" name="problem_details">
                        <br>
                        <input type="button" name="b" id="b" value="SUBMIT SOLUTION">
                        </p>
                        
  </form>

                <script>

                      
                </script>


        
        
        
        
        
        
    </body>
</html>
