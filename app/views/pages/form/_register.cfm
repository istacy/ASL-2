<cfoutput>
#startContent()#
	<div class="row-fluid">
    <div class="col-lg-6 col-md-6 col-sm-12 col-md-offset-3 col-lg-offset-3">
    #startFormTag(action="registerUser", spamProtection=true, class="form-horizontal register-form")#
    
        #textFieldTag(label="First Name", name="first_name", labelClass="control-label col-sm-4", class="form-control", appendToLabel="<div class=""col-sm-8"">", append="</div></div>")#
      
        #textFieldTag(label="Last Name", name="last_name", labelClass="control-label col-sm-4", class="form-control", appendToLabel="<div class=""col-sm-8"">", append="</div></div>")#
       
        #textFieldTag(label="Email Addy", name="email", labelClass="control-label col-sm-4", class="form-control", appendToLabel="<div class=""col-sm-8"">", append="</div></div>")#
        
        #passwordFieldTag(label="Password", name="password", labelClass="control-label col-sm-4", class="form-control", appendToLabel="<div class=""col-sm-8"">", append="</div></div>")#
        
       <div class="row-fluid">
            <div class="col-sm-8 col-sm-offset-4">
                #submitTag(value="Sign Up")#
            </div>
        </div>
       
    #endFormTag()#
    </div>
    </div>
#endContent()#
</cfoutput>