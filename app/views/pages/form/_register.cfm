<cfoutput>
#startFormTag(action="registerUser", spamProtection=true)#
	#textFieldTag(label="First Name", name="first_name")#
    #textFieldTag(label="Last Name", name="last_name")#
	#textFieldTag(label="Email", name="email")#
    #passwordFieldTag(label="Password", name="password")#
    #submitTag(value="Sign Up")#
#endFormTag()#
</cfoutput>