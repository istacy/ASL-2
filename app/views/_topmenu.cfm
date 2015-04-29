<cfoutput>
<div id="menu">
    	<!---#linkTo(route="home",text="home")#--->
        <!---#linkTo(route="about",text="about")#--->
        <cfif not structKeyExists(session,"user")>
        <div class="register">
            #linkTo(route="register",text="Sign Up")#
            <fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
            </fb:login-button>
        </div>
        
        <cfelse>
        Welcome #session.user.first_name# #session.user.last_name#
        #linkTo(route="galleries",text="My Account")#
        #linkTo(route="logOut",text="Log Out")#
        </cfif>
</div>
</cfoutput>