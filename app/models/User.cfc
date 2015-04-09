<cfcomponent extends="Model">
	<cffunction name="init">
    	<cfset table("users")>
        <cfset hasMany(name="galleries",modelName="Gallery",foreignKeys="userId",dependent="deleteAll")>
    </cffunction>
</cfcomponent>