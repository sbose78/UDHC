
<%@page import="bose.models.Report"%>
<html>
    <head>
                <style type="text/css">
                    /* jQuery lightBox plugin - Gallery style */
                    #gallery {

                            padding: 5px;

                            margin-left: 20%;
                            width:60%;

                    }
                    #gallery ul { list-style: none; }
                    #gallery ul li { display: inline; }
                    #gallery ul img {
                            border: 5px solid #3e3e3e;
                            border-width: 5px 5px 20px;

                    }
                    
                    #gallery ul a:hover img {
		border: 5px solid #fff;
		border-width: 5px 5px 20px;
		color: #fff;
                
                width: 240px;
                height: 240px;
	}
            </style>        

        

            <link rel="stylesheet" href="<%=request.getContextPath()%>/mystyle.css" type="text/css" />
            <%@page import="bose.HealthRecord"%>
            <%@page import="java.util.ArrayList"%>



            <script type="text/javascript" src="js/jquery.js"></script>
            <script type="text/javascript" src="js/jquery.lightbox-0.5.js"></script>

            <link rel="stylesheet" type="text/css" href="css/jquery.lightbox-0.5.css" media="screen" />

            <script type="text/javascript">
            $(function() {
                    // Use this example, or...

                    // This, or...
                    // This, or...
                            $('#gallery a').lightBox();// Select all links in the page
                    // ... The possibility are many. Use your creative or choose one in the examples above
            });

            </script>

        
    </head>
    
    
    
        
        
        
        <div><%@include file="../hpanel.jsp" %></div>




<%        
        int topic_id=Integer.parseInt(request.getParameter("topic_id"));
        
%>

   
   
   <div id="gallery">
       <ul>
           
        
<%        
        
        ArrayList<Report> images=HealthRecord.getImagesListAndInfo(topic_id);
        int i = 0;
        for(Report image : images )
        {        i++;
  //              out.print("<a href='"+request.getContextPath()+"/ViewImage?file_id="+image+"'><img src='"+request.getContextPath()+"/ViewImage?file_id="+image+"' height='50px' width='50px' /> "+i+"</a>,");
%>

<li>
   
    <a href="<%=request.getContextPath()%>/ViewImage?file_id=<%= image.getReport_id()%>" title="<%= image.getDescription() %>">
        <img src='<%=request.getContextPath()%>/ViewImage?file_id=<%= image.getReport_id()%>' height='200px' width='200px' />
    </a>
   
    
    
</li>


<%
        }
%>
       </ul>
       
<%

     out.println(bose.HealthRecord.getHealthRecordByID(Integer.parseInt(request.getParameter("topic_id"))).getProblem_details());

%>
       
</div>
       
<%       
   
%>
       

</html>
