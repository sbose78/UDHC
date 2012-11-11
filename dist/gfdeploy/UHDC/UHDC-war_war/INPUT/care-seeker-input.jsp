<%-- 
    Document   : index
    Created on : 28 Apr, 2012, 2:55:33 PM
    Author     : root - shoubhik bose
--%>

<%@page import="java.util.ArrayList"%>
<%@ page import="bose.User" %>

<script>
    
    function setNewPatientStatus(isNewPatient)
    {
        var patient_status_div = document.getElementById("isNew");
        if(isNewPatient != 0 )
            {
                patient_status_div.value=0;
                
            }
            else
            {
                patient_status_div.value=1;
            }
        
            alert("Updated");
        
    }
    
</script>


<%



    String loggedInUserEmail=bose.User.getLoggedInUserEmail(request);
    

    if(bose.User.getLoggedInUserEmail(request).equals("GUEST"))
    {
        
        String redirect_url=request.getContextPath()+"/INPUT/care-seeker-input.jsp";
        request.getSession(true).setAttribute("redirect_url", redirect_url);
        response.sendRedirect(request.getContextPath()+"/account.jsp?message=YOU ARE NOT SIGNED IN");        
        //String link=request.getContextPath()+"/login_float.jsp";
    }
    ArrayList<User> users = new ArrayList<User>();
    System.out.println( User.getLoggedInUserRole(request));
    if( User.getLoggedInUserRole(request).equals("1"))
    {
    
       users= User.getPatientsBySocialWorkerID(loggedInUserEmail);
       System.out.println("FILLLED USERS");
    }
       
        

%>




       <script src="http://yui.yahooapis.com/3.5.0/build/yui/yui-min.js"></script>
  
    
<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.9.0/build/menu/assets/skins/sam/menu.css" />
<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.9.0/build/button/assets/skins/sam/button.css" />
<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.9.0/build/fonts/fonts-min.css" />
<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.9.0/build/container/assets/skins/sam/container.css" />
<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.9.0/build/editor/assets/skins/sam/editor.css" />
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/yahoo-dom-event/yahoo-dom-event.js"></script>
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/element/element-min.js"></script>
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/container/container-min.js"></script>
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/menu/menu-min.js"></script>
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/button/button-min.js"></script>
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/editor/editor-min.js"></script>



<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.9.0/build/fonts/fonts-min.css" />
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/yahoo/yahoo-min.js"></script>
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/event/event-min.js"></script>
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/connection/connection-min.js"></script>

<script src="http://yui.yahooapis.com/3.5.0/build/yui/yui-min.js"></script>


<%@ page import="bose.*" %> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <script src="http://yui.yahooapis.com/3.5.0/build/yui/yui-min.js"></script>
    
    <head>
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Health record form</title>
    </head>
    
     <div>
         
         
         <%@include file="../hpanel.jsp" %>
     </div>
    
    <body   class="yui-skin-sam" >
        
                  
            <h2 align="center"> Care-seeker health issue</h2>
<div id="care_seeker_form">

  <form method="post" action="<%=request.getContextPath() %>/CatchHealthIssue2" name="form1" id="form1"  enctype="multipart/form-data">

                    <p align='center'>
                        <label>
                            What is the problem in Short ?
                        <input type="text" maxlength="100" name="topic">
                        
                        </label> &nbsp;
                        
                        <label> UPLOAD Letter of consent (<a href="https://docs.google.com/document/d/1sojONu_CulO28z75DnyZc15C0QrUequr-OYap4GUPvI/edit" >Download the letter to be signed</a> ) : <input name="f" type="file" id="f"> 
                        </label>                       
                        
                        
                        
                        
 <%
 
 
 // List of care-seekers shown only to social workers
        if(!User.getLoggedInUserRole(request).equals("0"))
         {
                
%>                                          
<br>
<br>Patient name: &nbsp;

                        <select onchange='setNewPatientStatus(this.selectedIndex)' name="patient_name">
                            <option value="<%=User.getScientificName()%>">New care-seeker ( Name auto-generated )</option>                            
                            
                            
 <%                 
 
                               for(User user : users)
                               {
                                   out.println("<option value='"+user.getName()+"'"+">"+user.getName()+"</option>");
                                   System.out.println("<option  value='"+user.getName()+"'"+">"+user.getName()+"</option>");
                               }
                   out.println("</select> ");
        }        
        else{
        
        // for care-seekers, the name remains embedded.
        
            out.println("<input type='hidden' name='patient_name' value='"+User.getLoggedInUserName(request)+"'>");
        
        }
                   

%>
                   
<br>
<br>

                        <input type="hidden" name="isNew" id="isNew" value="0">
                        <br>
                        <textarea id="editor" name="editor" rows="20" cols="75" >

                        </textarea>
                        <br>                        
                        <br>
                        
                                <iframe width="800px" height="600px"src="https://docs.google.com/document/pub?id=1sojONu_CulO28z75DnyZc15C0QrUequr-OYap4GUPvI&amp;embedded=true"></iframe>
                                
                                <br>
                                
                        
                        
                        <input type="hidden" id="v" name="problem_details">
                        
                        <br>
                        <input type="button" name="b" id="b" value="I HAVE READ THE ABOVE DISCLAIMER AND WISH TO SUBMIT MY CASE">
                        </p>
                        
  </form>

                <script>

                        (function() {
                            var Dom = YAHOO.util.Dom,
                                Event = YAHOO.util.Event;

                            var myConfig = {
                                height: '180px',
                                width: '1000px',
                                dompath: true,
                                focusAtStart: true
                            };

                            YAHOO.log('Create the Editor..', 'info', 'example');
                            var myEditor = new YAHOO.widget.SimpleEditor('editor', myConfig);
                            myEditor.render();
                            
                         //Inside an event handler after the Editor is rendered
                            YAHOO.util.Event.on('b', 'click', function() {
                                //Put the HTML back into the text area
                                myEditor.saveHTML();

                                //The var html will now have the contents of the textarea
                                var html = myEditor.get('element').value;
                                document.getElementById("v").value=html;
                                document.form1.submit();
                            });
                        })();
                </script>


        
        
        
        </div>
        
        
    </body>
</html>
