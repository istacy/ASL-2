<cfcomponent extends="Controller" output="false">
	<cffunction name="init">
        
    </cffunction>
    
    <cffunction name="index">
        <cfset contentFor(javascript = '<script src="/javascripts/app.js"></script>')>
		
    </cffunction>
    
    <cffunction name="about">
    	
    </cffunction>
    
    <cffunction name="addUser">
    	<cfscript>
			renderNothing();
			user = model('user').findOne(where="email='#params.email#'");
			
			// returns false if user doens't exist
			if(isboolean(user)) {
				params.facebook_id = params.id;
				structDelete(params,'id');
				user = model("user").new(params);
				user.save();
			} 
			loginUser(userId=user.id);
			
			returnData.successful=true;
			returnData.message="The user successfuly logged in.";
			renderText(serializeJson(returnData));
		</cfscript>
    </cffunction>
    
    <cffunction name="register" hint="Page display of form">
		
    </cffunction>
    
    <cffunction name="registerUser" hint="Add a new user">
    	<cfscript>
			user = model("user").findOne(where="email='#params.email#'");
			if(isBoolean(user)){   
				user = model("user").new(params);
				user.save();
				loginUser(user.id);
				redirectTo(route="galleries",success="You successfully registered.");
			} else {
				redirectTo(route="home",error="This email is already registered.");
			}
		</cfscript>
    </cffunction>
    
    <cffunction name="login">
    	<cfdump var="#params#">
        <cfabort>
    </cffunction>
    
    <cffunction name="logout">
    	<cfscript>
        	structDelete(session,"user");
			redirectTo(route="home");
        </cfscript>
    </cffunction>
    
</cfcomponent>