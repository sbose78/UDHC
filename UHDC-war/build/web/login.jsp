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
 
 <div><%@include file="hpanel.jsp" %></div>
 
    <table>  
        
        
        <td width="500px">
        
        <h4 align='center'>Sign In with your Yahoo/Google account </h4>
        
        <div align='center'>
            
                    
            
                        
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
        </td>
        <td width="400px">
            <h5 align='center'>Live chat with community</h5>
                                    <iframe src="http://webchat.freenode.net?channels=udhc&uio=Mj10cnVlJjQ9dHJ1ZSY5PXRydWUmMTE9MjM2JjEyPXRydWUe5" width="647" height="400"></iframe>
                                    
                                   </td>
                                    
                                    
                                    
                    
        </div>
                                    
    </table>
    </body>
</html>
