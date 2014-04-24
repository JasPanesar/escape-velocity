<!---
			This file is part of the Escape Velocity  Mura CMS Theme
--->
<cfoutput>
	#$.dspThemeInclude('templates/inc/html_head.cfm')#

	<body class="homepage">

		<!--- Header --->
		#$.dspThemeInclude('templates/inc/header.cfm')#

		<!-- Intro Wrapper -->
			<div id="intro-wrapper" class="wrapper wrapper-style1">
				
				<cfif Len($.content('homeIntroTitle'))>
					<div class="title">
						#$.renderEditableAttribute(
							attribute='homeIntroTitle'
							, label='Intro Section Title'
						)#
					</div>
				</cfif>

				<div class="container">
					<div class="row">
						<div class="12u">
							<!-- Intro -->
								<section id="intro">
									#$.dspBody(bodyattribute='homeIntroBody', showMetaImage=false)#
								</section>
							<!-- /Intro -->
						</div>
					</div>
				</div>
			</div>
		<!-- /Intro Wrapper -->

	#$.dspThemeInclude('templates/inc/footer.cfm')#
</cfoutput>