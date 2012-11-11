<%-- 
    Document   : login
    Created on : 29 Apr, 2012, 12:33:22 AM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<html>
    <head>
        
         
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UDHC Alpha release</title>
</head>
    




      <body>

  
  <div id="content_space">
      <div><%@include file="hpanel.jsp" %></div>
        <div id="loginbox">      
                    
                        
                        <table>
                            <td > 
                                
                                <form action="<%=request.getContextPath() %>/openid" method="get">
                                    <input name="op" value="Yahoo" type="hidden">
                                    <input type='image' src='http://l.yimg.com/a/i/reg/openid/buttons/7.png'>
                                </form>
                                
                            </td>
                            
                            <td>
                                
                                <form action="<%=request.getContextPath() %>/openid" method="get">
                                    <input name="op" value="Google" type="hidden">
                                    <input type='image' src='http://fests.eu/images/openid/login/google.png'>
                                </form>                                                                
                                
                            </td>
                        </table>    
       
                                    
                                    
                                    
                    
        </div>                  
                                    
                                    
                                    
          
          
       
    <script src="http://www.google.com/jsapi?key=AIzaSyA5m1Nc8ws2BbmPRwKu5gFradvD_hgq6G0" type="text/javascript"></script>
    <script type="text/javascript">
        
           /*
    *  How to load a feed via the Feeds API.
    */
    /*
    google.load("feeds", "1");
    
    // Our callback function, for when a feed is loaded.
    function feedLoaded(result) {
      if (!result.error) {
        // Grab the container we will put the results into
        var container = document.getElementById("content_feed");
        container.innerHTML = '<b>Recent posts from BMJ</b> <br>';
    
        // Loop through the feeds, putting the titles onto the page.
        // Check out the result object for a list of properties returned in each entry.
        // http://code.google.com/apis/ajaxfeeds/documentation/reference.html#JSON
        for (var i = 0; i < result.feed.entries.length; i++) {  //
          var entry = result.feed.entries[i];
          var div = document.createElement("div");
          div.innerHTML="<a href='"+entry.link+"'>"+entry.title+"</a>";
          //div.appendChild(document.createTextNode(entry.title));
              
          div.className="feed_title";
          container.appendChild(div);
       
          
        }
      }
    }
    
    function OnLoad() {
      // Create a feed instance that will grab Digg's feed.
      var feed = new google.feeds.Feed("http://casereports.bmj.com/rss/recent.xml");
    
      // Calling load sends the request off.  It requires a callback function.
      feed.load(feedLoaded);
    }
    
    google.setOnLoadCallback(OnLoad);
    
    
   */
    </script>
            <div id="content_feed">
                
                Are you a care-seeker? 
                
                <ul>
                    <li>Sign up OR Login using your Google/Yahoo account</li>
                    <li>Complete the short registration</li>
                    <li>Fill your health issue details and <B>SUBMIT</b></li>
                    <li>Add more images/scans if required</li>                    
                                        
                </ul>
                
                
                
                
                
                
            </div>
                                    
      </div>                                                                        
     
                                      <div><%@include file="footer.jsp" %></div>
                                    
     </body>
 
 
</html>
