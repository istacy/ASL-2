<cfcomponent extends="Controller" output="false">
	<cffunction name="init">
    	<cfscript>
			filters(through="$authenticate",only="myAccount,galleries");
		</cfscript>
        
    </cffunction>
    
    <cffunction name="$authenticate">
    	<cfif not authenticate()>
        	<cfset redirectTo(route="logout")>
        </cfif>
    </cffunction>
    
    <cffunction name="index">
        <cfset contentFor(javascript = '<script src="/javascripts/app.js"></script>')>
		
    </cffunction>
    
    <cffunction name="about">
    	
    </cffunction>
    
    <cffunction name="addUser">
    	<cfscript>
			renderNothing();
			user = model('user').findOne(where="facebook_id='#params.id#'");
			
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
    
    <cffunction name="createUser">
    	<cfset user = model('user').new(params)>
        <cfset user.save()>
        
    	<cfdump var="#params.email#">
        <cfabort>
    </cffunction>
    
    <cffunction name="register">
			#linkTo(route="register",text="register")#
    </cffunction>
    
    <cffunction name="myAccount">
    	
    </cffunction>
    
    <cffunction name="galleries">
    
    </cffunction>
    
    <cffunction name="logout">
    	<cfscript>
        	structDelete(session,"user");
			redirectTo(route="home");
        </cfscript>
    </cffunction>
    
</cfcomponent>