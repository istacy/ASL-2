<cfoutput>
<div class="well">
    #startFormTag(action="login", spamProtection=true)#
        #textFieldTag(label="Email", name="email")#
        #passwordFieldTag(label="Password", name="password")#
        #submitTag(value="Login")#
    #endFormTag()#
</div>
</cfoutput>