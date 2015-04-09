<cfcomponent extends="Model">
	<cffunction name="init">
    	<cfset table("picture")>
        <cfset belongsTo(name="gallery",modelName="Gallery",foreignKey="galleryId")>
    </cffunction>
</cfcomponent>