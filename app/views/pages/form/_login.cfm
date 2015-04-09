<cfoutput>
<div class="well">
    #startFormTag(action="createUser", spamProtection=true)#
        #textFieldTag(label="Email", name="email")#
        #passwordFieldTag(label="Password", name="password")#
        #submitTag(value="Login")#
    #endFormTag()#
</div>
</cfoutput>