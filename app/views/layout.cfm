<!--- Place HTML here that should be used as the default layout of your application --->
<cfoutput>
<html>
<head>
	<link href="/stylesheets/bootstrap.min.css" rel="stylesheet" />
    <link href="/stylesheets/main.css" rel="stylesheet" />
    #includeContent("stylesheets")#
</head>

	<body>
    <div id="fb-root"></div>
	
  
        

    	<div class="wrapper">
        	<nav class="navbar">
            	
                	<div class="navbar-header">
                    	<a class="navbar-brand" href="/"><h1 class="logo">Stop Motion<br><span class="number">365</span></h1></a>
                    </div>
                   <div class="menu navbar-form navbar-right">
                        #includePartial('../topmenu')#
                	</div>
            </nav>
            #includePartial("../flash")#
            #includeContent()# 
        </div>

            
    	
     <script src="/javascripts/jquery-2.1.3.min.js"></script> 
	 <script src="/javascripts/bootstrap.min.js"></script>  
     #includeContent("javascript")#
     
     <footer class="footer">
     	<div class="container">
        	<p class="text-muted">&copy;2015 Created By: Stacy Faude | ASL | Full Sail University</p>
      	</div>
     </footer>
	</body>
</html>
</cfoutput>