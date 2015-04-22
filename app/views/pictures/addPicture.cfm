<cfoutput>
  #startFormTag(action="uploadPicture",params="galleryId=#gallery.id#", multipart="true")#
		#includePartial("form")#
        #submitTag(value="Upload Picture")#
    #endFormTag()#
</cfoutput>