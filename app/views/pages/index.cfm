<cfoutput>

<div class="row"><div
  class="fb-like"
  data-share="true"
  data-width="450"
  data-show-faces="true">
</div>
</div>
<fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
</fb:login-button>

<div id="status">
</div>
#includePartial("form/login")#
</cfoutput>