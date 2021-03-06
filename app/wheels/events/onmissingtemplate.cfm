<cffunction name="onMissingTemplate" returntype="void" access="public" output="true">
	<cfargument name="targetpage" type="any" required="true">
	<cfscript>
		$simpleLock(name="reloadLock#application.applicationName#", execute="$runOnMissingTemplate", executeArgs=arguments, type="readOnly", timeout=180);
	</cfscript>
</cffunction>

<cffunction name="$runOnMissingTemplate" returntype="void" access="public" output="true">
	<cfargument name="targetpage" type="any" required="true">
	<cfscript>
		if (!application.wheels.showErrorInformation)
		{
			$header(statusCode=404, statustext="Not Found");
		}
		$includeAndOutput(template="#application.wheels.eventPath#/onmissingtemplate.cfm");
		$abort();
	</cfscript>
</cffunction>