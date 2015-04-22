<cfoutput>
    #linkTo(controller="pictures", action="addPicture", text="Add Picture", class="btn btn-default", params="galleryId=#gallery.Id#")#
    #startFormTag(route="updateGallery",key=gallery.id)#
    	<input name="_method" value="put" type="hidden" />
		#includePartial("galleryForm")#
    #endFormTag()#
    <div>
    	<p>list of pictures</p>
        <cfloop query="pictures">
        	<img src="#pictures.url#/#pictures.filename#">
            <div class="caption">#pictures.caption#</div>
            <div class="action">
            	#linkTo(route="deletePicture", galleryId=gallery.Id,key=pictures.id, text="remove picture")#
            	#linkTo(route="editPicture", galleryId=gallery.Id,key=pictures.id, text="edit picture")#
            </div>
        </cfloop>
    </div>
</cfoutput>