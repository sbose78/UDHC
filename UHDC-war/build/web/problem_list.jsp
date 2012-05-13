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
      
  
  <link rel="stylesheet" href="http://www.jqwidgets.com/jquery-widgets-demo/jqwidgets/styles/jqx.base.css" type="text/css" />
    <script type="text/javascript" src="http://www.jqwidgets.com/jquery-widgets-demo/scripts/gettheme.js"></script>
    <script type="text/javascript" src="http://www.jqwidgets.com/jquery-widgets-demo/scripts/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="http://www.jqwidgets.com/jquery-widgets-demo/jqwidgets/jqxcore.js"></script>
    <script type="text/javascript" src="http://www.jqwidgets.com/jquery-widgets-demo/jqwidgets/jqxmenu.js"></script>
    <script type="text/javascript" src="http://www.jqwidgets.com/jquery-widgets-demo/jqwidgets/jqxcheckbox.js"></script>
    
        <script type="text/javascript">
            $(document).ready(function () {
                var theme = getTheme();
                // Create a jqxMenu
                $("#jqxMenu").jqxMenu({ width: '800px', height: '30px', theme: theme });
                $("#jqxMenu").css('visibility', 'visible');
                $("#disabled").jqxCheckBox({ theme: theme, width: '150px', height: '20px' });
                $("#open").jqxCheckBox({ theme: theme, width: '150px', height: '20px' });
                $("#hover").jqxCheckBox({ theme: theme, width: '150px', height: '20px' });
                $("#topLevelArrows").jqxCheckBox({ theme: theme, width: '200px', height: '20px' });
                $("#animation").jqxCheckBox({ theme: theme, width: '150px', height: '20px' });

                $("#animation").bind('change', function (event) {
                    var value = event.args.checked;
                    // enable or disable the menu's animation.
                    if (!value) {
                        $("#jqxMenu").jqxMenu({ animationShowDuration: 0, animationHideDuration: 0, animationShowDelay: 0 });
                    }
                    else {
                        $("#jqxMenu").jqxMenu({ animationShowDuration: 500, animationHideDuration: 300, animationShowDelay: 200 });
                    }
                });

                $("#disabled").bind('change', function (event) {
                    var value = event.args.checked;
                    // enable or disable the menu
                    if (!value) {
                        $("#jqxMenu").jqxMenu({ disabled: false });
                    }
                    else {
                        $("#jqxMenu").jqxMenu({ disabled: true });
                    }
                });

                $("#hover").bind('change', function (event) {
                    var value = event.args.checked;
                    // enable or disable the menu's hover effect.
                    if (!value) {
                        $("#jqxMenu").jqxMenu({ enableHover: false });
                    }
                    else {
                        $("#jqxMenu").jqxMenu({ enableHover: true });
                    }
                });

                $("#open").bind('change', function (event) {
                    var value = event.args.checked;
                    // enable or disable the opening of the top level menu items when the user hovers them.
                    if (!value) {
                        $("#jqxMenu").jqxMenu({ autoOpen: false });
                    }
                    else {
                        $("#jqxMenu").jqxMenu({ autoOpen: true });
                    }
                });
                $("#topLevelArrows").bind('change', function (event) {
                    var value = event.args.checked;
                    // enable or disable the opening of the top level menu items when the user hovers them.
                    if (!value) {
                        $("#jqxMenu").jqxMenu({ showTopLevelArrows: false });
                    }
                    else {
                        $("#jqxMenu").jqxMenu({ showTopLevelArrows: true });
                    }
                });
            });
        </script>
  
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LIST </title>
    </head>
    
     <h4 align='right'>
    
    You are signed in as <%= bose.User.getLoggedInUserEmail(request)  %>
    
    </h4>
    
    <body>
        
        
        
        
        <div id='content' align="center">
        
        <div id='jqxWidget' style='height: 30px; ' >
            <div id='jqxMenu' style='visibility: hidden; margin-left: 100px; '>
                <ul>
                    <li><a href="<%=request.getContextPath()%>/home.jsp">Home</a></li>
                    <li><a href="<%=request.getContextPath()%>/howitworks.jsp">How it works</a></li>                    
                    <li>Social Workers
                    
                        <ul style='width: 180px;'>
                            <li><a href="<%=request.getContextPath()%>/mySocialUploads.jsp">My uploaded narratives</a></li>
                            <li><a href='<%=request.getContextPath()%>/index.jsp'>Submit a care-seeker narrative</a></li>
                            <li><a href='<%=request.getContextPath()%>/approval_status.jsp'>Care-seeker data approval status</a></li>
                            <li><a href='<%=request.getContextPath()%>/problem_list.jsp'>All health records</a></li>
                        </ul>
                        
                    </li>
                    
                    
                    
                    <li><a href='<%=request.getContextPath()%>/index.jsp'>Care-Seekers</a></li>
                    <li>Care-Givers
                    
                    
                    <ul style='width: 180px;'>
                                                        
                            <li><a href='<%=request.getContextPath()%>/approval_status.jsp'>Narratives pending approval</a></li>
                            <li><a href='<%=request.getContextPath()%>/problem_list.jsp'>All health records</a></li>
                        </ul>
                    
                    </li>
                    <li><a href='<%=request.getContextPath()%>/BLOG/blogs.jsp'>Blogs</a></li>
                    
                    <li><a href='http://boseapp3.apphb.com/downloadables/User-reviews.aspx'>User Reviews</a>                  </li>
                    <li><a href='http://boseapp3.apphb.com/downloadables/FAQ.aspx'>FAQs        </a>          </li>
                    <li> Health Records 
                        <ul style='width: 180px;'>
                            <li><a href="<%=request.getContextPath()%>/problem_list.jsp">Diagnosis in progress</a></li>
                            <li><a href='<%=request.getContextPath()%>/problem_list.jsp'>Featured</a></li>
                            <li><a href='<%=request.getContextPath()%>/problem_list.jsp'>Recently concluded diagnosis</a></li>
                            <li><a href='<%=request.getContextPath()%>/problem_list.jsp'>All records</a></li>
                        </ul>
                    </li>
                    <li>Help
                        
                        <ul style='width: 180px;'>
                            <li><a href="mailto:sbose78@gmail.com">Report a problem</a></li>
                            <li><a href="mailto:sbose78@gmail.com">Request a feature</a></li>
                            <li><a href="#">How to use ?</a></li>
                        </ul>
                    
                    </li>
                </ul>      
            </div>            
        </div>
    </div>
        <h3 align='center'> All Care-Seeker records </h3>
        
        <%
                ArrayList<HealthRecord> alhr= HealthRecord.getAllHealthRecords();        

         %>
        
        <div id="accordion">
            
                <%

                        for (HealthRecord n : alhr)
                        {
                            int topic_id=Integer.parseInt(n.getTopic_id());
                            String problem_id =n.getProblem_id();
                    
                    
                    //out.println("<h3><a href='#'>"+problem_id+" : "+topic+" </a></h3>");      
                            
                            
                %>    

                <h3><a href="#"> <%= problem_id %> &nbsp;:&nbsp; <%= n.getTopic() %>  </a></h3>
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
