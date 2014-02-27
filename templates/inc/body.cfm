<!---
			This file is part of the Escape Velocity Mura CMS Theme
--->
<cfoutput>	

	<!--- Breadcrumbs --->
		<nav>#$.dspCrumbListLinks(separator='&nbsp;/&nbsp;&nbsp;')#</nav>

	<!-- Content -->
		<div id="content">
			<article class="is is-post">

				<!--- Page Heading + Credits/Byline + Release Date --->	
					<cfif Len($.content('pageHeading')) OR Len($.content('credits'))>
						<header class="style1">

							<!--- Heading --->
							<cfif Len($.content('pageHeading'))>
								<h2>#$.renderEditableAttribute(attribute='pageheading', label='Page Heading')#</h2>
							</cfif>

							<!--- Credits / Byline --->
							<cfif Len($.content('credits'))>
								<span class="byline">
									#$.renderEditableAttribute(attribute='credits', label='Credits')#
								</span>
							</cfif>

							<!--- Release Date --->
							<cfif Len($.dspReleaseDate())>
								<span class="release-date">
									#$.dspReleaseDate()#
								</span>
							</cfif>

						</header>
					</cfif>

				<!--- Primary Associated Image --->					
					<cfset img = $.getURLForImage(fileid=$.content('fileid'), size='bodyimage') />
					<cfif Len(img)>
						<span class="image image-featured">
							<img src="#img#" alt="#HTMLEditFormat($.content('title'))#" />
						</span>
					</cfif>

				<!--- Content Body --->
					<!--- 
						For information on dspBody(), visit:
						http://docs.getmura.com/v6/front-end/template-variables/document-body/
					--->
					#$.dspBody(
						body=$.content('body')
						, pageTitle=''
						, crumbList=false
						, showMetaImage=false
					)#
			</article>

			<!--- Main Content Display Objects --->
			<cfif Len($.dspObjects(2))>
				<div>
					<div class="row">
						<div class="12u skel-cell-important">
							#$.dspObjects(2)#
						</div>
					</div>
				</div>
			</cfif>

		</div>
	<!-- /Content -->

</cfoutput>