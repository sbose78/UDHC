
<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.9.0/build/fonts/fonts-min.css" />
<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.9.0/build/container/assets/skins/sam/container.css" />
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/yahoo-dom-event/yahoo-dom-event.js"></script>
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/dragdrop/dragdrop-min.js"></script>
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/container/container-min.js"></script>

<%@ page import="bose.*" %> 
<%@ page import="java.util.*" %> 
</head>

<h3 align='right'>
    
    You are signed in as <%= User.getLoggedInUserEmail(request)  %>
    
</h3>

<body class="yui-skin-sam">



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
                    
                    <form action="/UHDC-war/registerUser"> 
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