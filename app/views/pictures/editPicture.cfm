<cfoutput>
#linkTo(route="editGallery",key=gallery.id, text="Back")#
  #startFormTag(action="updatePicture",key=picture.id, params="galleryId=#gallery.id#")#
		#includePartial("form")#
        #submitTag(value="Save Changes")#
    #endFormTag()#
</cfoutput>