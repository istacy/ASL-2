<!---
	Here you can add routes to your application and edit the default one.
	The default route is the one that will be called on your application's "home" page.
--->
<cfset addRoute(name="home", pattern="", controller="pages", action="index")>
<cfset addRoute(name="about", pattern="/about", controller="pages", action="about")>
<cfset addRoute(name="logout", pattern="/logout", controller="pages", action="logout")>
<cfset addRoute(name="register", pattern="/register", controller="pages", action="register")>
<cfset addRoute(name="galleries", pattern="/galleries", controller="galleries", action="index")>
<cfset addRoute(name="newGallery", pattern="/new-gallery", controller="galleries", action="newGallery")>
<cfset addRoute(name="updateGallery", pattern="/update-gallery/[key]", controller="galleries", action="updateGallery")>