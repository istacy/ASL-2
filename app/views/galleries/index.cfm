<cfoutput>
	#linkTo(route="newGallery",text="Create New Gallery")#
    <ul>
    <cfloop query="galleries">
    	<li>
        #linkTo(action="editGallery",key=galleries.id,text=galleries.name)#
        |
        #linkTo(action="deleteGallery",key=galleries.id,text="delete")#
        </li>
        
    </cfloop>
    </ul>
</cfoutput>