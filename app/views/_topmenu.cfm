<cfoutput>
<div id="menu">
    	#linkTo(route="home",text="home")#
        #linkTo(route="about",text="about")#
        <cfif not structKeyExists(session,"user")>
        #linkTo(route="register",text="register")#
        <cfelse>
        Welcome #session.user.first_name# #session.user.last_name#
        #linkTo(route="galleries",text="My Account")#
        #linkTo(route="logOut",text="Log Out")#
        </cfif>
</div>
</cfoutput>