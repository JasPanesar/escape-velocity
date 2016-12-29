<!---
			This file is part of the Escape Velocity Mura CMS Theme
--->
<cfoutput>
	<section class="is">

		<!--- Header Image (if above heading) --->
			<cfset img = $.getURLForImage(fileid=$.component('compHeaderImage'), size='componentheaderimage') />
			<cfset href = Len($.component('compButtonLinkHref')) ? $.component('compButtonLinkHref') : '##' />

			<cfif Len(img) and $.component('compHeaderImagePlacement') eq 'above'>
				<a href="#href#" class="image image-full">
					<img src="#img#" alt="#HTMLEditFormat($.setDynamicContent($.component('compHeading')))#" />
				</a>
			</cfif>

		<!--- Heading --->
			<cfif Len($.component('compHeading'))>
				<header>
					<#$.getHeaderTag('subHead1')#>#HTMLEditFormat($.setDynamicContent($.component('compHeading')))#</#$.getHeaderTag('subHead1')#>
				</header>
			</cfif>

		<!--- Header Image (if below heading) --->
			<cfif Len(img) and $.component('compHeaderImagePlacement') eq 'below'>
				<a href="#href#" class="image image-full">
					<img src="#img#" alt="#HTMLEditFormat($.setDynamicContent($.component('compHeading')))#" />
				</a>
			</cfif>

		<!--- Content --->
			#$.setDynamicContent($.component('body'))#

		<!--- Footer / Button --->
			<cfif Len($.component('compButtonLinkHref'))>
				<footer>
					<a href="#$.component('compButtonLinkHref')#" class="button #$.component('compButtonStyle')#"><cfif Len($.component('compButtonLinkText'))>#HTMLEditFormat($.component('compButtonLinkText'))#<cfelse>Find out more</cfif></a>
				</footer>
			</cfif>

	</section>
</cfoutput>
