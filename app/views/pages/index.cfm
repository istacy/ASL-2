<cfoutput>

    <div class="row hidden">
        <div
          class="fb-like"
          data-share="false"
          data-width="450"
          data-show-faces="true">
        </div>
    </div>
    <div id="status">
    </div>

	<cfif not structKeyExists(session,"user")>
   		 #includePartial("form/login")#
    </cfif>
    <div class="row-fluid">
    <cfif not structKeyExists(session,"user")>
        <p class="cta">Sign Up or Login</p>
    </cfif>
        <p class="cta-subhead">Turn your pictures into a Stop Motion Film</p>
        <img src="/images/home-img.png" alt="Stop Motion App By Stacy Faude" class="home-img">
    </div>

</cfoutput>