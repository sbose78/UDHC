<!DOCTYPE html>

<div>

<html lang="en">
<head>
        <title> UDHC: How we go about it</title>
        
   <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
  
        
    <link rel="stylesheet" href="<%=request.getContextPath()%>/jqwidgets/styles/jqx.base.css" type="text/css" />
  
    <script type="text/javascript" src="<%=request.getContextPath()%>/jqwidgets/jqxcore.js"></script>
    
    <script type="text/javascript" src="<%=request.getContextPath()%>/jqwidgets/jqxtabs.js"></script>

    
    <script type="text/javascript">
    $(document).ready(function () {
        alert("correcting");
         $('.jqxTabs').jqxTabs({ position: 'top', width: '1000px', height: '700px' , reorder: true });
    });
    </script>
    
</head>



<body class='default'>
    
    <div id="content_space">
        
    
     <div><%@include file="../hpanel.jsp" %></div>
    
    <div id='jqxWidget' align='center' >
        
         <br><br>
          <br><br>
        
        <div align='center' >
            
            <b>Pneumomediastimum Ganiari</b>
            
        </div>
        
        <br><br>
        
        <div class='jqxTabs'>

            <ul>
                <li style="margin-left: 370px;">INPUT </li>
                <li>PROCESS</li>
                <li>OUTPUT</li>
           </ul>
            <div align="center">
               <iframe src="https://docs.google.com/viewer?authuser=0&srcid=0Bz8VjLQTuhwvd0pOWVNmX3ZBRUE&pid=explorer&a=v&chrome=false&embedded=true" width="750" height="650"></iframe>            
            </div>
            <div align="center">
                
                <iframe src="https://docs.google.com/viewer?authuser=0&srcid=0Bz8VjLQTuhwvNGsyWHF5VXM4TG8&pid=explorer&a=v&chrome=false&embedded=true" width="750" height="650"></iframe>
                
            </div>
            <div align="center">
                
                 <iframe src="https://docs.google.com/viewer?authuser=0&srcid=0Bz8VjLQTuhwvdXppSWZLUno3alE&pid=explorer&a=v&chrome=false&embedded=true" width="750" height="650"></iframe>

            </div>

         
        </div>
        <br><br>
        <div align='center'>
            
            <b>SDH Mathabhanga</b>
          </div>
        <br><br>
        <div class='jqxTabs'>

            <ul>
                <li style="margin-left: 370px;">INPUT </li>
                <li>PROCESS</li>
                <li>OUTPUT</li>
            </ul>
            <div align="center">
               <iframe src="https://docs.google.com/viewer?authuser=0&srcid=0Bz8VjLQTuhwvaHM1SnZoTTIzVVU&pid=explorer&a=v&chrome=false&embedded=true" width="750" height="650"></iframe>
            </div>
           <div align="center">
               <iframe src="https://docs.google.com/viewer?authuser=0&srcid=0Bz8VjLQTuhwvbEl6cVQ1aU13ems&pid=explorer&a=v&chrome=false&embedded=true" width="750" height="650"></iframe>

            </div>
            <div align="center">

                <iframe src="https://docs.google.com/viewer?authuser=0&srcid=0Bz8VjLQTuhwvbDZRQXMycFFuNVE&pid=explorer&a=v&chrome=false&embedded=true" width="750" height="650"></iframe></td>
                
            </div>

            
        </div>
       
        
        
    </div>
    </div>
     <div><%@include file="../footer.jsp" %></div>
</body>
</html>
