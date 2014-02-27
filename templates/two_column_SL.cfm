<!---
			This file is part of the Escape Velocity  Mura CMS Theme
--->
<cfoutput>
	#$.dspThemeInclude('templates/inc/html_head.cfm')#

	<body class="left-sidebar">

		#$.dspThemeInclude('templates/inc/header.cfm')#

		<!--- Main Wrapper --->
			<div class="wrapper wrapper-style2">

				<!--- Page Title --->
				<div class="title">
					#$.renderEditableAttribute(attribute='title', label='Page Title')#
				</div>

				<div class="container">
					<div class="row">
						<div class="12u">

							<!-- Main -->
								<div id="main">
									<div>
										<div class="row">

											<div class="4u">
												<!-- Sidebar -->
													<div id="sidebar" class="sidebar">
														<!--- Left Column Content Display Objects --->
														#$.dspObjects(1)#
													</div>
												<!-- /Sidebar -->
											</div>

											<div class="8u skel-cell-important">
												<!--- Main Content / Body --->
												#$.dspThemeInclude('templates/inc/body.cfm')#
											</div>

										</div>
									</div>
								</div>
							<!-- // Main // -->

						</div>
					</div>
				</div>

			</div>
		<!--- // Main Wrapper // --->

	#$.dspThemeInclude('templates/inc/footer.cfm')#
</cfoutput>