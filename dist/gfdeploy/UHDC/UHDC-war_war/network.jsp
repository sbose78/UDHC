<%-- 
    Document   : network.jsp
    Created on : 28 Apr, 2012, 7:35:26 PM
    Author     : root
--%>

<%@page import="bose.HealthRecord"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
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
        
        

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Network processing
            
            
            
        
            
        </title>
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
        
        
        
        
        
        
        
        
        <h2 align="center"> Network processing  </h2>
        
        
        <div align="center">
           <%
               String topic_id=request.getParameter("topic_id");
          //     out.println(HealthRecord.getHealthRecordByID(Integer.parseInt(topic_id)).getProblem_details());
                           
            %>   
            <button  onclick="hide()">HIDE NARRATIVE</button>
            <button  onclick="makeRequest()">SHOW NARRATIVE</button>
            
        </div>
        
        
        <div align="left" id="narrative">
            
                                          
        </div>
        
  <script type="text/javascript">
            
            function hide()
            {
                //document.getElementById("narrative").style.visibility="hidden";
                document.getElementById("narrative").innerHTML="";
                
            }
            
            function show()
            {
                document.getElementById("narrative").style.visibility="visible";
            }
            
            
            var div =  document.getElementById("narrative");

var handleSuccess = function(o){
    
        div.innerHTML="";
	YAHOO.log("The success handler was called.  tId: " + o.tId + ".", "info", "example");
	if(o.responseText !== undefined){
	               
        //        div.innerHTML = "<li>Transaction id: " + o.tId + "</li>";
	//	div.innerHTML += "<li>HTTP status: " + o.status + "</li>";
	//	div.innerHTML += "<li>Status code message: " + o.statusText + "</li>";
	//	div.innerHTML += "<li>HTTP headers received: <ul>" + o.getAllResponseHeaders + "</ul></li>";
		div.innerHTML = o.responseText  ;
	//	div.innerHTML += "<li>Argument object: Array ([0] => " + o.argument[0] +
						 " [1] => " + o.argument[1] + " )</li>";
	}
};

var handleFailure = function(o){
		YAHOO.log("The failure handler was called.  tId: " + o.tId + ".", "info", "example");

	if(o.responseText !== undefined){
		div.innerHTML = "<li>Transaction id: " + o.tId + "</li>";
		div.innerHTML += "<li>HTTP status: " + o.status + "</li>";
		div.innerHTML += "<li>Status code message: " + o.statusText + "</li>";
	}
};

var callback =
{
  success:handleSuccess,
  failure:handleFailure,
  argument:['foo','bar']
};

var sUrl = "assets/post.php";
var postData = "username=anonymous&userid=0";

function makeRequest(){
    
                div.innerHTML="";
                div.innerHTML="<p align='center'> <img src='http://www.freeiconsweb.com/Icons-show/loading/loading37.gif'/></p>";

        var topic_id= <%=topic_id%>;
	var request = YAHOO.util.Connect.asyncRequest('GET', '<%=request.getContextPath() %>/showIssue.jsp?topic_id='+topic_id, callback);
	
	YAHOO.log("Initiating request; tId: " + request.tId + ".", "info", "example");

}
            
        </script>

        
         <div align='center'>
                    <button  onclick="hide_posts()">HIDE POSTS</button>
                    <button  onclick="showPosts()">SHOW POSTS</button>
                    
        </div>
        
        <div id="posts" onload="showPosts()">
            
            
            
            
        </div>
        
        
 <script> 
       function hide_posts()
            {
                //document.getElementById("narrative").style.visibility="hidden";
                document.getElementById("posts").innerHTML="";
                
            }
       
       
       var posts=document.getElementById("posts");
       
       var handleSuccess_posts = function(o){
        
	YAHOO.log("The success handler was called.  tId: " + o.tId + ".", "info", "example");
	if(o.responseText !== undefined){
	               
        //        div.innerHTML = "<li>Transaction id: " + o.tId + "</li>";
	//	div.innerHTML += "<li>HTTP status: " + o.status + "</li>";
	//	div.innerHTML += "<li>Status code message: " + o.statusText + "</li>";
	//	div.innerHTML += "<li>HTTP headers received: <ul>" + o.getAllResponseHeaders + "</ul></li>";
		posts.innerHTML = o.responseText  ;
	//	div.innerHTML += "<li>Argument object: Array ([0] => " + o.argument[0] +
						 " [1] => " + o.argument[1] + " )</li>";
	}
};

var handleFailure_posts = function(o){
		YAHOO.log("The failure handler was called.  tId: " + o.tId + ".", "info", "example");

	if(o.responseText !== undefined){
		posts.innerHTML = "<li>Transaction id: " + o.tId + "</li>";
		posts.innerHTML += "<li>HTTP status: " + o.status + "</li>";
		posts.innerHTML += "<li>Status code message: " + o.statusText + "</li>";
	}
};

var callback_posts =
{
  success:handleSuccess_posts,
  failure:handleFailure_posts,
  argument:['foo','bar']
};

/*
var sUrl = "assets/post.php";
var postData = "username=anonymous&userid=0";
*/
function showPosts(){

        posts.innerHTML="<p align='center'> <img src='http://www.freeiconsweb.com/Icons-show/loading/loading37.gif'/></p>";

        var topic_id= <%=topic_id%>;
	var request = YAHOO.util.Connect.asyncRequest('GET', '<%=request.getContextPath() %>/showPosts.jsp?topic_id='+topic_id, callback_posts);
	
	YAHOO.log("Initiating request; tId: " + request.tId + ".", "info", "example");

}
            
</script>
        
        
        
        
        <br>
        <br>
        
        
                                                <div id="sendPostStatus" align="center"></div>                                      

        <div  class="yui-skin-sam">

            
                                <form method="post" action="<%=request.getContextPath() %>/CatchForumPost" name="form1" id="form1">

                                   <p align='center'>

                                        <textarea id="editor" name="editor" rows="20" cols="75" >
                                        </textarea>
                                       
                                        <input type="text" id="v" name="post_data">
                                        <input type="hidden" id="topic_id" name="topic_id" value="<%=request.getParameter("topic_id")%>">
                                        <br>
                                        <input type="button" name="b" id="b" value="SUBMIT">
                                   </p>

                                </form>
                                        
                                          </div>
                                        
                                        
                                        


                <script>

                        var sendPostStatus = document.getElementById('sendPostStatus');


                        (function() {
                            var Dom = YAHOO.util.Dom,
                                Event = YAHOO.util.Event;

                            var myConfig = {
                                height: '200px',
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
                                //document.form1.submit();
                                
                                sendPost();
                            });
                        })();
                </script>

            
      
           <script>

                        var handleSuccess_sendPost = function(o){
                                YAHOO.log("The success handler was called.  tId: " + o.tId + ".", "info", "example");
                                if(o.responseText !== undefined){

                                    /*
                                        div.innerHTML = "<li>Transaction id: " + o.tId + "</li>";
                                        div.innerHTML += "<li>HTTP status: " + o.status + "</li>";
                                        div.innerHTML += "<li>Status code message: " + o.statusText + "</li>";
                                        div.innerHTML += "<li>HTTP headers received: <ul>" + o.getAllResponseHeaders + "</ul></li>";
                                        div.innerHTML += "<li>PHP response: " + o.responseText + "</li>";
                                        div.innerHTML += "<li>Argument object: Array ([0] => " + o.argument[0] +
                                                                        " [1] => " + o.argument[1] + " )</li>";

                                */
                                    sendPostStatus.innerHTML="POSTED SUCCESSFULLY";

                                    showPosts();

                                }
                        };

                        var handleFailure_sendPost = function(o){
                                        YAHOO.log("The failure handler was called.  tId: " + o.tId + ".", "info", "example");

                                if(o.responseText !== undefined){
                                    /*
                                        div.innerHTML = "<li>Transaction id: " + o.tId + "</li>";
                                        div.innerHTML += "<li>HTTP status: " + o.status + "</li>";
                                        div.innerHTML += "<li>Status code message: " + o.statusText + "</li>";

                                        */
                                }
                        };

                        var callback_sendPost =
                        {
                        success:handleSuccess_sendPost,
                        failure:handleFailure_sendPost,
                        argument:['foo','bar']
                        };

                        //var sUrl = "assets/post.php";


                        function sendPost(){
                            
                            sendPostStatus.innerHTML="POSTING....";

                            var topic_id_param=document.getElementById("topic_id").value;                            
                            var post_data_param=document.getElementById("v").value;                            
                            
                        var postData_sendPost = "topic_id="+topic_id_param+"&post_data="+post_data_param;
                               //alert( " Postinng "  );
                                //sendPostStatus.inner="Posting comment, please wait...."
   var request = YAHOO.util.Connect.asyncRequest('POST', '<%=request.getContextPath() %>/CatchForumPost', callback_sendPost, postData_sendPost);

                                YAHOO.log("Initiating request; tId: " + request.tId + ".", "info", "example");

                        }

             </script>
        
    </body>
</html>
