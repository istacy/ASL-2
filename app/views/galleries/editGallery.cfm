<cfoutput>
#startContent()#
    #linkTo(controller="pictures", action="addPicture", text="Add Picture", class="btn btn-default", params="galleryId=#gallery.Id#")#
    <hr />
    #startFormTag(route="updateGallery",key=gallery.id)#
    	<input name="_method" value="put" type="hidden" />
		#includePartial("galleryForm")#
       
    #endFormTag()#
    <div>
    	<h1>My Pictures</h1>
        <cfloop query="pictures">
        <div class="img-box">
        	<img class="sm-img" src="#pictures.url#/#pictures.filename#">
            <div class="caption">#pictures.caption#</div>
            <div class="action">
            	#linkTo(route="deletePicture", galleryId=gallery.Id,key=pictures.id, text="<span class=""glyphicon glyphicon-trash"">delete</span>")#
            	#linkTo(route="editPicture", galleryId=gallery.Id,key=pictures.id, text="<span class=""glyphicon glyphicon-pencil"">edit</span>")#
            </div>
            </div>
        </cfloop>
    </div>
    #endContent()#
</cfoutput>