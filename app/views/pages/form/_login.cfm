<cfoutput>
#startFormTag(action="createUser", spamProtection=true)#
	#textFieldTag(label="Email", name="email")#
    #passwordFieldTag(label="Password", name="password")#
    #submitTag(text="Login")#
#endFormTag()#
</cfoutput>