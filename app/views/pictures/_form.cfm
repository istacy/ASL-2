<cfoutput>
	<cfif params.action eq 'addPicture'>
    	#fileFieldTag(name="image")#
    <cfelse>
        <img src="#picture.url#/#picture.filename#">
    </cfif>
    #dateSelect(objectName="picture", property="dateTaken")#
    #textField(objectName="picture", property="caption")#
</cfoutput>