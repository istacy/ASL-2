<cfif not flashIsEmpty()>
<cfoutput>
   <div class="container-fluid">
   	<cfset flashKey = flashKeyExists("success") ? 'success' : ''>
       <cfif flashKey eq ''>
       	<cfset flashKey = flashKeyExists("error") ? 'danger' : flashKeyExists("info") ? 'info' : 'warning'>
       </cfif>
       <div class="alert alert-#flashKey# fade in">
           <button type="button" class="close" data-dismiss="alert">&times;</button>
           #flashMessages()#
       </div>
</div>
</cfoutput>
</cfif>