
<script>
    
    function open_login(provider)
    {
        var link="<%=request.getContextPath() %>/openid?op="+provider;
        var myWin = window.load(link);//,"MainWin","width=500px" + ",height=500px"+ ",screenX=500px" + ",screenY=500px" + ",left=500px" + ",top= 500px"+ ",scrollbars=yes,toolbar=0,status=1,menubar=0,resizable=0,titlebar=no");
        return false;
    }
    
</script>

        <div id="login_buttons">
            
            <input type='image' onclick="open_login('Yahoo')" src='http://l.yimg.com/a/i/reg/openid/buttons/7.png'>
            <input type='image' onclick="open_login('Google')" src='http://fests.eu/images/openid/login/google.png'>          
            
        </div>
        

        
  
        
         
              
                  
                  <link rel="stylesheet" href="<%=request.getContextPath()%>/mystyle.css" type="text/css" />

        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      
        
        
        <script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-31924728-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>




                 <h2>
                     
                     <table>
                         
                         <tr>
                             
                             <td>
                                                      <a href="<%=request.getContextPath()%>/login.jsp">User-driven healthcare</a>

                             </td>
                             
                             <td>
                                 
                                 
                                 
                             </td>
                             
                         </tr>
                         
                     </table>
                       
                      
                 </h2>
                   
                   <br>
     
     
     <div id="horizontal_nav_bar">
         
         <ul>
             
             <li><a href="<%=request.getContextPath()%>/account.jsp">                   
                     <%= bose.User.getLoggedInUserEmail(request)%>
                      - MY ACCOUNT</a></li>
              <li><a href="<%=request.getContextPath()%>/home.jsp">HOME</a></li>
                    <li><a href="<%=request.getContextPath()%>/HOW/how.jsp">HOW</a></li>                    
                    <li><a href='<%=request.getContextPath()%>/STATICS/what.jsp'> WHAT</a></li>             
                    
                    <li><a href='<%=request.getContextPath()%>/STATICS/why.jsp'>WHY</a></li>
                    
                      <li><a href='<%=request.getContextPath()%>/INPUT/displayInputs.jsp'>INPUT</a></li>
                    
                    <li><a href='<%=request.getContextPath()%>/PROCESS/process.jsp'>PROCESS</a></li>
                    
                    <li><a href='<%=request.getContextPath()%>/problem_list.jsp'>OUTPUT</a>                  </li>
                                   
             
             
         </ul>
         
         
         
     </div>
                    
                    
     