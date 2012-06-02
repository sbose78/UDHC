<%-- 
    Document   : hpanel
    Created on : 18 May, 2012, 8:31:18 PM
    Author     : root
--%>

        
            <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
   
  
        
        
         <link rel="stylesheet" href="<%=request.getContextPath()%>/jqwidgets/styles/jqx.base.css" type="text/css" />
         <link rel="stylesheet" href="<%=request.getContextPath()%>/jqwidgets/styles/jqx.energyblue.css" type="text/css" />
         <link rel="stylesheet" href="<%=request.getContextPath()%>/jqwidgets/styles/jqx.summer.css" type="text/css" />
         
                  <link rel="stylesheet" href="<%=request.getContextPath()%>/jqwidgets/styles/jqx.darkblue.css" type="text/css" />

    <script type="text/javascript" src="http://www.jqwidgets.com/jquery-widgets-demo/scripts/gettheme.js"></script>
    <script type="text/javascript" src="http://www.jqwidgets.com/jquery-widgets-demo/scripts/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/jqwidgets/jqxcore.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/jqwidgets/jqxmenu.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/jqwidgets/jqxcheckbox.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/jqwidgets/jqxtabs.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/jqwidgets/jqxexpander.js"></script>
    
        <script type="text/javascript">
            $(document).ready(function () {
                var theme = 'energyblue';//getTheme();
                // Create a jqxMenu
                $('#jqxTabs').jqxTabs({ position: 'top', width: '1000px', height: '1000px' , theme: theme, reorder: true });
                $("#jqxMenu").jqxMenu({ width: '800px', height: '30px', theme: theme });
                $("#jqxMenu").css('visibility', 'visible');
                $("#disabled").jqxCheckBox({ theme: theme, width: '150px', height: '20px' });
                $("#open").jqxCheckBox({ theme: theme, width: '150px', height: '20px' });
                $("#hover").jqxCheckBox({ theme: theme, width: '150px', height: '20px' });
                $("#topLevelArrows").jqxCheckBox({ theme: theme, width: '200px', height: '20px' });
                $("#animation").jqxCheckBox({ theme: theme, width: '150px', height: '20px' });
                $("#jqxLoginInfo").jqxExpander({ width: '200px', theme: 'darkblue' });
               

                $("#animation").bind('change', function (event) {
                    var value = event.args.checked;
                    // enable or disable the menu's animation.
                    if (!value) {
                        $("#jqxMenu").jqxMenu({ animationShowDuration: 0, animationHideDuration: 0, animationShowDelay: 0 });
                    }
                    else {
                        $("#jqxMenu").jqxMenu({ animationShowDuration: 500, animationHideDuration: 300, animationShowDelay: 200 });
                    }
                });

                $("#disabled").bind('change', function (event) {
                    var value = event.args.checked;
                    // enable or disable the menu
                    if (!value) {
                        $("#jqxMenu").jqxMenu({ disabled: false });
                    }
                    else {
                        $("#jqxMenu").jqxMenu({ disabled: true });
                    }
                });

                $("#hover").bind('change', function (event) {
                    var value = event.args.checked;
                    // enable or disable the menu's hover effect.
                    if (!value) {
                        $("#jqxMenu").jqxMenu({ enableHover: false });
                    }
                    else {
                        $("#jqxMenu").jqxMenu({ enableHover: true });
                    }
                });

                $("#open").bind('change', function (event) {
                    var value = event.args.checked;
                    // enable or disable the opening of the top level menu items when the user hovers them.
                    if (!value) {
                        $("#jqxMenu").jqxMenu({ autoOpen: false });
                    }
                    else {
                        $("#jqxMenu").jqxMenu({ autoOpen: true });
                    }
                });
                $("#topLevelArrows").bind('change', function (event) {
                    var value = event.args.checked;
                    // enable or disable the opening of the top level menu items when the user hovers them.
                    if (!value) {
                        $("#jqxMenu").jqxMenu({ showTopLevelArrows: false });
                    }
                    else {
                        $("#jqxMenu").jqxMenu({ showTopLevelArrows: true });
                    }
                });
            });
        </script>
        
        
        
        
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
        


        <div id='content' align="center">
        
        <div id='jqxWidget' style='height: 30px; ' >
            <div id='jqxMenu' style='visibility: hidden; margin-left: 70px; '>
                <ul>
                    <li><a href="<%=request.getContextPath()%>/problem_list.jsp">INPUT</a></li>
                    <li><a href="<%=request.getContextPath()%>/problem_list.jsp">PROCESS</a></li>                    
                    <li><a href='<%=request.getContextPath()%>/problem_list.jsp'>OUTPUT</a></li>                    
                </ul>      
            </div>            
        </div>
    </div>
                        
        <br>
        <br>
        <br>
        <br>
        


