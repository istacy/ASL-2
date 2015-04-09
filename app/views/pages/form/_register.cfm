<cfoutput>
#startFormTag(action="register", spamProtection=true)#
	#textField(label="First Name", objectName="firstName", property="firstName")#
    #textField(label="Last Name", objectName="lastName", property="lastName")#
	#textFieldTag(label="Email", name="email")#
    #passwordFieldTag(label="Password", name="password")#
    #passwordFieldTag(label="Confirm Password", name="confirmPassword")#
    #submitTag(text="Login")#
#endFormTag()#
</cfoutput>