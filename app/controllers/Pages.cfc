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
    
    <cffunction name="myAccount">
    	<cfscript>
			gallery = model("gallery").new();
			gallery.name = 'test';
			gallery.userid = session.user.id;
			gallery.save();
		</cfscript>
    </cffunction>
    
</cfcomponent>