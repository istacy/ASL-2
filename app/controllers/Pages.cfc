<cfcomponent extends="Controller" output="false">
	<cffunction name="init">
    	
    </cffunction>
    
    <cffunction name="index">
        
    </cffunction>
    
    <cffunction name="about">
    	
    </cffunction>
    
    <cffunction name="addUser">
    	<cfscript>
			findUser = model('user').findOne(where="facebook_id='#params.id#'");
			
			// returns false if user doens't exist
			if(isboolean(findUser)) {
				params.facebook_id = params.id;
				structDelete(params,'id');
				user = model("user").new(params);
				user.save();
			} else {
				// found user, do nothing.	
			}

		</cfscript>
    </cffunction>
</cfcomponent>