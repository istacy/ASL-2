<cfcomponent extends="Controller" output="false">
	<cffunction name="init">
    	<cfscript>
			filters(through="$authenticate");
			filters(through="$getGallery",only="editPicture,uploadPicture,deletePicture,updatePicture");
		</cfscript>
        
    </cffunction>
    
    <cffunction name="$authenticate">
    	<cfif not authenticate()>
        	<cfset redirectTo(route="logout")>
        </cfif>
    </cffunction>
    
    <cffunction name="$getGallery">
    	<cfset gallery=model("gallery").findOne(where="userId=#session.user.id# AND id=#params.galleryId#")>
    </cffunction>
    
    <cffunction name="addPicture" hint="Add Picture Form">
		<cfscript>
			picture = model("picture").new();
			picture.caption = "";
			picture.dateTaken = now();
			gallery = model("gallery").findByKey(params.galleryId);
		</cfscript>
    </cffunction>
    
    <cffunction name="uploadPicture" hint="Upload picture to server and insert into database">
		<cfset myPath = ExpandPath( "/")>
        <cfset thisPath = "images/#session.user.id#/#gallery.id#">
        <cfset myPath = myPath&thisPath>
        <cfif not directoryExists(myPath)>
        	<cfdirectory directory="#myPath#" action="create">
        </cfif>
        <cffile action="upload" destination="#myPath#" filefield="image" nameconflict="makeunique">
        <cfscript>
        	if(cffile.filewassaved){
				picture=model("picture").new();
				picture.filename=cffile.serverfile;
				picture.url=thisPath;
				picture.location=cffile.serverdirectory;
				picture.dateTaken=params.picture.dateTaken;
				picture.caption=params.picture.caption;
				picture.galleryId=gallery.id;
				picture.save();
				redirectTo(route="editGallery",key=gallery.id, success="You picture was uploaded!");
			}else{
				redirectTo(route="editGallery",key=gallery.id, error="ERROR! You picture was NOT uploaded!");
			}
			
        </cfscript>
    </cffunction>
    
    <cffunction name="editPicture" hint="Edit Picture Form">
    	<cfscript>
			if(not isBoolean(gallery)){
				picture=model("picture").findOne(where="galleryId=#gallery.id# AND id=#params.key#");
				if(isBoolean(picture)){
					redirectTo(route="home", error="The Picture was not found.");
				}
			} else {
				redirectTo(route="home", error="The Picture was not found.");	
			}
		</cfscript>
    </cffunction>
    
    <cffunction name="updatePicture" hint="Update database data">
    	<cfscript>
			if(not isBoolean(gallery)){
				picture=model("picture").findOne(where="galleryId=#gallery.id# AND id=#params.key#");
				if(not isBoolean(picture)){
					if(picture.update(properties=params.picture)){
						redirectTo(route="editGallery", key=gallery.id, success="Your picture was updated.");
					} else {
						redirectTo(route="home", error="There was an error updating the picture.");
					}
				} else {
					redirectTo(route="home", error="The Picture was not found.");
				}
			} else {
				redirectTo(route="home", error="The Picture was not found.");	
			}
		</cfscript>
    </cffunction>
    
    <cffunction name="deletePicture" hint="Delete data from the database">
    	<cfscript>
			if(not isBoolean(gallery)){
				picture=model("picture").findOne(where="galleryId=#gallery.id# AND id=#params.key#");
				if(not isBoolean(picture)){
					removeImage(picture.location&'/'&picture.filename);
					picture.delete();
					redirectTo(back=true,success="The picture was deleted.");
				}else {
					redirectTo(route="home", error="The Picture was not found.");
				}
			}else{
				//Gallery wasnt found
				redirectTo(route="home", error="The Picture was not found.");	
			}
			
		</cfscript>
    </cffunction>
    
    <cffunction name="removeImage">
    	<cfargument name="location" default="">
        <cffile action="delete" file="#arguments.location#">
    </cffunction>
    
</cfcomponent>