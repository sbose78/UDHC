<%-- 
    Document   : viewSolution
    Created on : 17 May, 2012, 12:53:26 AM
    Author     : root
--%>

<%@page import="bose.HealthRecord"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%
    int topic_id= Integer.parseInt( request.getParameter("topic_id"));
    
%>

<h3 align="center">
    
    Remedy :
    
</h3>

<div >
    
    <%= bose.HealthRecord.showSolution(Integer.parseInt( request.getParameter("topic_id"))) %>    
    
</div>

    


