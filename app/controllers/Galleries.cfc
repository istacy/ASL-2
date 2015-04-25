<cfcomponent extends="Controller" output="false">
	<cffunction name="init">
    	<cfscript>
			filters(through="$authenticate");
			filters(through="$getGallery",only="editGallery,updateGallery,deleteGallery,renderGallery");
			filters(through="$getPictures",only="editGallery,renderGallery");
		</cfscript>
        
    </cffunction>
    
    <cffunction name="$authenticate">
    	<cfif not authenticate()>
        	<cfset redirectTo(route="logout")>
        </cfif>
    </cffunction>
    
    <cffunction name="$getGallery">
    	<cfset gallery=model("gallery").findByKey(params.key)>
    </cffunction>
    
    <cffunction name="$getPictures">
    	<cfscript>
			pictures=model("picture").findAll(where="galleryId=#gallery.id#");
		</cfscript>
    </cffunction>
    
    <cffunction name="index">
		<cfscript>
			galleries=model("gallery").findAll(where="userId=#session.user.id#");
		</cfscript>
    </cffunction>
    
    <cffunction name="newGallery" hint="Add new gallery form">
    	<cfset gallery.name="">
    </cffunction>
    
    <cffunction name="createGallery" hint="Create database data">
    	<cfscript>
			gallery=model("gallery").new(params);
			gallery.userId=session.user.id;
			gallery.save();
			redirectTo(action="editGallery",key=gallery.id);
		</cfscript>
    </cffunction>
    
    <cffunction name="editGallery" hint="Edit form for the gallery">
    	
    </cffunction>
    
    <cffunction name="updateGallery" hint="Update database data">
    	<cfscript>
			gallery.update(name=params.name);
			redirectTo(action="index",success="Your gallery was updated.");
		</cfscript>
    </cffunction>
    
    <cffunction name="deleteGallery" hint="Delete data from the database">
    	<cfscript>
			gallery.delete();
			redirectTo(action="index",success="Your gallery was deleted.");
		</cfscript>
    </cffunction>
    
    <cffunction name="renderGallery" hint="Displays the slideshow">
    	<cfset contentFor(stylesheets='<link rel="stylesheet" href="/stylesheets/flexslider.css">')>
        <cfset contentFor(javascript='<script type="text/javascript" src="/javascripts/jquery.flexslider.js"></script>')>
        <cfset contentFor(javascript='<script type="text/javascript" src="/javascripts/render.js"></script>')>
    </cffunction>
    
</cfcomponent>