<%-- 
    Document   : viewSolution
    Created on : 17 May, 2012, 12:53:26 AM
    Author     : root
--%>

<%@page import="bose.HealthRecord"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%= bose.HealthRecord.showSolution(Integer.parseInt( request.getParameter("topic_id"))) %>    

</html>
