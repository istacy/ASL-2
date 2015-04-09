<cfcomponent extends="Model">
	<cffunction name="init">
    	<cfset table("gallery")>
        <cfset hasMany(name="pictures",modelName="Picture",foreignKeys="galleryId",dependent="deleteAll")>
        <cfset belongsTo(name="user",modelName="User",foreignKey="userId")>
    </cffunction>
</cfcomponent>