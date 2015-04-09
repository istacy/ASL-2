<!--- Place HTML here that should be used as the default layout of your application --->
<cfoutput>
<html>
<head>
	<link href="/stylesheets/bootstrap.min.css" rel="stylesheet" />
</head>

	<body>
    <div id="fb-root"></div>
	
      
    
    	<div class="wrapper">
        	<div class="container">
            	#includePartial('../topmenu')#
				#includeContent()#
            </div>
        </div>
            
    	
     <script src="/javascripts/jquery-2.1.3.min.js"></script> 
	 <script src="/javascripts/bootstrap.min.js"></script>  
     #includeContent("javascript")#
	</body>
</html>
</cfoutput>