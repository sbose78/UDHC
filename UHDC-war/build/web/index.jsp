<%-- 
    Document   : index
    Created on : 28 Apr, 2012, 2:55:33 PM
    Author     : root - shoubhik bose
--%>



<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.9.0/build/menu/assets/skins/sam/menu.css" />
<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.9.0/build/button/assets/skins/sam/button.css" />
<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.9.0/build/fonts/fonts-min.css" />
<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.9.0/build/container/assets/skins/sam/container.css" />
<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.9.0/build/editor/assets/skins/sam/editor.css" />
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/yahoo-dom-event/yahoo-dom-event.js"></script>
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/element/element-min.js"></script>
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/container/container-min.js"></script>
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/menu/menu-min.js"></script>
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/button/button-min.js"></script>
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/editor/editor-min.js"></script>


<%@ page import="bose.*" %> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <script src="http://yui.yahooapis.com/3.5.0/build/yui/yui-min.js"></script>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Health record form</title>
    </head>
    <body   class="yui-skin-sam" >
        
            <h2 align="center"> Care-seeker health issue</h2>


  <form method="post" action="/UHDC-war/CatchHealthIssue" name="form1" id="form1">

                    <p align='center'>
                        <label>
                            What is the problem in Short ?
                        <input type="text" maxlength="50" name="topic">
                        
                        </label><br><br>
                    
         <textarea id="editor" name="editor" rows="20" cols="75" >
                
         </textarea>
                        <input type="hidden" id="v" name="problem_details">
                        <br>
                        <input type="button" name="b" id="b" value="SUBMIT HEALTH RECORD FOR PROCESSING">
                        </p>
                        
  </form>

                <script>

                        (function() {
                            var Dom = YAHOO.util.Dom,
                                Event = YAHOO.util.Event;

                            var myConfig = {
                                height: '300px',
                                width: '1000px',
                                dompath: true,
                                focusAtStart: true
                            };

                            YAHOO.log('Create the Editor..', 'info', 'example');
                            var myEditor = new YAHOO.widget.SimpleEditor('editor', myConfig);
                            myEditor.render();
                            
                         //Inside an event handler after the Editor is rendered
                            YAHOO.util.Event.on('b', 'click', function() {
                                //Put the HTML back into the text area
                                myEditor.saveHTML();

                                //The var html will now have the contents of the textarea
                                var html = myEditor.get('element').value;
                                document.getElementById("v").value=html;
                                document.form1.submit();
                            });
                        })();
                </script>


        
        
        
        
        
        
    </body>
</html>
