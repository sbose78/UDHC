<%@ page import="bose.*" %> 
<%@ page import="java.util.*" %> 
</head>

<div id="user_name" align='right' >
    
    You are signed in as <%= User.getLoggedInUserEmail(request)  %>
    
</div>
    
    

      <body>

  
  <div id="content_space">
      <div><%@include file="hpanel.jsp" %></div>
    
	
	
	<div id="completeProfile_panel1" >
		<div class="hd"> Are you a care-seeker? </div>
		<div class="bd">
                    
                    <form action="<%=request.getContextPath()%>/registerUser"> 
                        <br>Name: <input type="text" name="name" value="<%= bose.User.getScientificName() %>" <br>
                        
                        <br>      Email address <%=User.getLoggedInUserEmail(request)%> <input type="hidden" name="username" value="<%= User.getLoggedInUserEmail(request) %>"> <br><br>
                        <input type="hidden" name="role" value="0" ><br><br>

                       
                        <input type="submit" value="Sign up >>">
                    </form>                    
                </div>
		
	</div>
    
        <div id="completeProfile_panel2">
		<div class="hd"> Are you a care-giver? </div>
		<div class="bd">
                    <br>     
                    <form action="<%=request.getContextPath()%>/registerUser"> 
                        Name: <input type="text" name="name" value="<%= User.getLoggedInUserName(request) %>" ><br>
                        Email address <%=User.getLoggedInUserEmail(request)%><input type="hidden" name="email"value="<%= User.getLoggedInUserEmail(request) %>" ><br><br>
                        <input type="hidden" name="role" value="2" ><br><br>
                        
                        <input type="submit" value="Sign up >>">
                    </form>
                    
                    
                    
                </div>
		
	</div>
                        

       <div id="completeProfile_panel3" >
		<div class="hd"> Are you a Social worker ?  </div>
		<div class="bd">
                    <br>     
                    <form action="<%=request.getContextPath()%>/registerUser"> 
                        Name: <input type="text" name="name" value="<%= User.getLoggedInUserName(request) %>" ><br>
                        Email address <%=User.getLoggedInUserEmail(request)%> <input type="hidden" name="email"value="<%= User.getLoggedInUserEmail(request) %>" ><br><br>
                        <input type="hidden" name="role" value="1" ><br><br>
                        
                        <input type="submit" value="Sign up >>">
                    </form>
                    
                    
                    
                </div>
		
	</div>
                        
  </div>                        
  </body>                        
	

<!--END SOURCE CODE =============================== -->