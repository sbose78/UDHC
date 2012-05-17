<%-- 
    Document   : submitSolution.jsp
    Created on : 28 Apr, 2012, 2:55:33 PM
    Author     : root - shoubhik bose
--%>



          <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
  
  
       <script src="http://yui.yahooapis.com/3.5.0/build/yui/yui-min.js"></script>
  
  <link rel="stylesheet" href="http://www.jqwidgets.com/jquery-widgets-demo/jqwidgets/styles/jqx.base.css" type="text/css" />
    <script type="text/javascript" src="http://www.jqwidgets.com/jquery-widgets-demo/scripts/gettheme.js"></script>
    <script type="text/javascript" src="http://www.jqwidgets.com/jquery-widgets-demo/scripts/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="http://www.jqwidgets.com/jquery-widgets-demo/jqwidgets/jqxcore.js"></script>
    <script type="text/javascript" src="http://www.jqwidgets.com/jquery-widgets-demo/jqwidgets/jqxmenu.js"></script>
    <script type="text/javascript" src="http://www.jqwidgets.com/jquery-widgets-demo/jqwidgets/jqxcheckbox.js"></script>
    
    
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



<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.9.0/build/fonts/fonts-min.css" />
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/yahoo/yahoo-min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/SOLUTION/scripts.js"></script>



    

    

<%@ page import="bose.*" %> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <script src="http://yui.yahooapis.com/3.5.0/build/yui/yui-min.js"></script>
    
    <head>
        
        <script type="text/javascript">
            $(document).ready(function () {
                var theme = getTheme();
                // Create a jqxMenu
                $("#jqxMenu").jqxMenu({ width: '1000px', height: '30px', theme: theme });
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
        <title>Health record form</title>
    </head>
    
    <%
            String topic_id=request.getParameter("topic_id");
    %>
    <input type="hidden" value="<%=topic_id%>" id="topic_id">
    <input type="hidden" value="<%= request.getContextPath() %>" id="context_path">
    
    <h4 align='right'>
    
    You are signed in as <%= bose.User.getLoggedInUserEmail(request)  %>
    
    </h4>
    <div  class="yui-skin-sam" >
        
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
        
   <body>  <br><br>
       <div align='center'>
                    <button  onclick="show_solution_list('<%=request.getContextPath()%>/SOLUTION/viewSolution.jsp?topic_id=<%=topic_id%>')">SHOW SOLUTION</button>
                    <button  onclick="show_solution_box('<%=request.getContextPath()%>/SOLUTION/submitSolution.jsp')">ADD SOLUTION</button>
                    <button  onclick="showPosts(<%= topic_id %>)">VIEW MEDICAL HEALTH RECORD</button>
                    
        </div>
       
                    
       <div id="sendSolutionStatus" align="center">  
       </div>
                    
                    
       <div id="solution_box" align="center">  
       </div>
                    
                                         <div id="posts" onload="showPosts(<%= topic_id %>)"></div>

        
                    
                    
                        
                        
    </body>
</html>
