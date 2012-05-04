<%-- 
    Document   : showPosts
    Created on : 1 May, 2012, 12:56:13 PM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page import="bose.*" %> 
<%@ page import="java.util.*" %> 

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
        
            int topic_id=Integer.parseInt(request.getParameter("topic_id"));
            ArrayList<bose.ForumPost> posts = bose.ForumPost.getPostsByTopic_id(topic_id);
            out.println(topic_id);
             for (ForumPost f : posts)
             {
                out.println("<p>"  );
                out.println( f.getEmail() +" said, <br>"  );
                out.println(f.getPost_data() + "<br> </p>");
             }
        %>
        
        
        
    </body>
</html>
