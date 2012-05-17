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
        <title>Authentication</title>
    
    
        
        
        
        
</head>

<body>
   
        
        <h4 align='center'> Yahoo/Google Sign-in </h4>
        
        <div align='center'>
            
                    
            
                        
                        <table>
                            <td> 
                                
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
    </body>
</html>
