<cfoutput>
#startContent()#
<div class="well well-sm">
    #startFormTag(action="login", spamProtection=true, class="form-inline")#
        <div class="form-group"> 
            <label class="sr-only" for="email">Email address</label> 
            <input type="email" class="form-control" id="email" placeholder="Enter email"> 
        </div> 
        <div class="form-group"> 
            <label class="sr-only" for="password">Password</label> 
            <input type="password" class="form-control" id="password" placeholder="Password"> 
        </div>
        #submitTag(value="Login")#
    #endFormTag()#
</div>
#endContent()#
</cfoutput>