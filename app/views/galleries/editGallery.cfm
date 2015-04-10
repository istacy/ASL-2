<cfoutput>
	<a class="btn btn-default" href="javascript:void(0)">Add Picture</a>
    #startFormTag(route="updateGallery",key=gallery.id)#
    	<input name="_method" value="put" type="hidden" />
		#includePartial("galleryForm")#
    #endFormTag()#
    <div>
    	<p>list of pictures</p>
        <cfloop query="pictures">
        	<img src="#pictures.fileUrl#">
        </cfloop>
    </div>
</cfoutput>