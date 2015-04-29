<cfoutput>
#startContent()#
<div id="movie">
    <div class="flexslider">
        <ul class="slides">
            <cfloop query="pictures">
                <li><img src="#pictures.url#/#pictures.filename#"></li>
            </cfloop>
        </ul>
    </div>
</div>
<a href="javascript:void(0)" id="replay-slide">Replay</a>
#endContent()#
</cfoutput>