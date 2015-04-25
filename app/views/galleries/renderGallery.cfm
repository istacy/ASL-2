<cfoutput>
	<div class="flexslider">
        <ul class="slides">
            <cfloop query="pictures">
                <li><img src="#pictures.url#/#pictures.filename#"></li>
            </cfloop>
        </ul>
    </div>
</cfoutput>