<!---
	This is the parent controller file that all your controllers should extend.
	You can add functions to this file to make them globally available in all your controllers.
	Do not delete this file.
--->
<cfcomponent extends="Wheels">
	<cffunction name="loginUser">
    	<cfargument name="userId" default="0">
        	<cfset user=model("user").findByKey(arguments.userId)>
            <cfset session.user={
				id=user.id,
				first_name=user.first_name,
				last_name=user.last_name,
				email=user.email,
				facebook_id=user.facebook_id 
				}>
    </cffunction>
</cfcomponent>