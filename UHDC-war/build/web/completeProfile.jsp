
<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.9.0/build/fonts/fonts-min.css" />
<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.9.0/build/container/assets/skins/sam/container.css" />
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/yahoo-dom-event/yahoo-dom-event.js"></script>
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/dragdrop/dragdrop-min.js"></script>
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/container/container-min.js"></script>

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
  

<%@ page import="bose.*" %> 
<%@ page import="java.util.*" %> 
</head>

<h3 align='right'>
    
    You are signed in as <%= User.getLoggedInUserEmail(request)  %>
    
</h3>

<body class="yui-skin-sam">


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

<div class="exampleIntro">
	<p align='center'> 
            
            Complete Registration        
        
        </p>			
</div>

<!--  UI CODE  ================ -->

<style>
	#container {height:15em;}
</style>

<script>
		YAHOO.namespace("example.container");

		function init() {
			// Instantiate a Panel from markup
			YAHOO.example.container.panel1 = new YAHOO.widget.Panel("panel1", { width:"400px", align:'center', height: '400px',visible:false, constraintoviewport:true } );
			YAHOO.example.container.panel1.render();

      YAHOO.example.container.panel2 = new YAHOO.widget.Panel("panel2", { width:"400px",height: '400px', align:'center', visible:false,  draggable:true , constraintoviewport:true  } );
			YAHOO.example.container.panel2.render();

			
			YAHOO.util.Event.addListener("show1", "click", YAHOO.example.container.panel1.show, YAHOO.example.container.panel1, true);
			//YAHOO.util.Event.addListener("hide1", "click", YAHOO.example.container.panel1.hide, YAHOO.example.container.panel1, true);

			YAHOO.util.Event.addListener("show2", "click", YAHOO.example.container.panel2.show, YAHOO.example.container.panel2, true);
			//YAHOO.util.Event.addListener("hide2", "click", YAHOO.example.container.panel2.hide, YAHOO.example.container.panel2, true);
		}

		YAHOO.util.Event.addListener(window, "load", init);
</script>

<div id="container" align="center">
	<div>
		<button id="show1">I'm a social worker</button> 
		
                <button id="show2">I'm a care-giver</button> 
		
	</div>
    
    
	
	
	<div id="panel1" align="center">
		<div class="hd"> SOCIAL WORKER PROFILE  </div>
		<div class="bd">
                    
                    <form action="<%=request.getContextPath()%>/registerUser"> 
                        <br>Name: <input type="text" name="name" value="<%= User.getLoggedInUserName(request) %>" <br>
                        <br> Username: <input type="text" name="username" value="<%= User.getLoggedInUserEmail(request) %>"> <br><br>
                        <input type="hidden" name="role" value="1" ><br><br>

                       
                        <input type="submit" value="Complete registration">
                    </form>
                    
                    
                    
                </div>
		<div class="ft"> Welcome to the network </div>
	</div>
    
        <div id="panel2" align="center">
		<div class="hd"> CARE-GIVER PROFILE  </div>
		<div class="bd">
                    
                    <form action="<%=request.getContextPath()%>/registerUser"> 
                        Name: <input type="text" name="name" value="<%= User.getLoggedInUserName(request) %>" ><br>
                        Username: <input type="text" name="email"value="<%= User.getLoggedInUserEmail(request) %>" ><br><br>
                        <input type="hidden" name="role" value="2" ><br><br>
                        
                        <input type="submit" value="Complete registration">
                    </form>
                    
                    
                    
                </div>
		<div class="ft"> Welcome to the network </div>
	</div>
	
</div>
<!--END SOURCE CODE =============================== -->