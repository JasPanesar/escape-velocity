<!---
			This file is part of the Escape Velocity Mura CMS Theme
--->
<cfoutput>
	<!-- Header Wrapper -->
		<div id="header-wrapper" class="wrapper">
			<div class="container">
				<div class="row">
					<div class="12u">
					
						<!-- Header -->
							<div id="header">
								
								<!-- Logo -->
									<div id="logo">
										<h1>
											<a href="#$.createHREF(filename='')#">
												#HTMLEditFormat($.siteConfig('site'))#
											</a>
										</h1>
										<cfif Len($.siteConfig('tagline'))>
											<span class="byline">
												#HTMLEditFormat($.siteConfig('tagline'))#
											</span>
										</cfif>
									</div>
								<!-- /Logo -->
								
								<!-- Nav -->
									<cf_CacheOMatic key="dspPrimaryNav#$.content('contentid')#">
										<nav id="nav">
											<!--- 
												For information on dspPrimaryNav(), visit:
												http://docs.getmura.com/v6/front-end/template-variables/document-body/
											--->
											#$.dspPrimaryNav(
												viewDepth=1
												, id='navPrimary'
												, class=''
												, displayHome='always'
												, closeFolders=true 
												, showCurrentChildrenOnly=false
												, liHasKidsClass='dropdown'
												, liHasKidsAttributes=''
												, liCurrentClass='current_page_item'
												, liCurrentAttributes=''
												, liHasKidsNestedClass='dropdown-submenu'
												, aHasKidsClass='dropdown-toggle'
												, aHasKidsAttributes=''
												, aCurrentClass=''
												, aCurrentAttributes=''
												, ulNestedClass='dropdown-menu'
												, ulNestedAttributes=''
												, aNotCurrentClass=''
												, siteid=$.event('siteid')
											)#
										</nav>
									</cf_CacheOMatic>
								<!-- /Nav -->

							</div>
						<!-- /Header -->

					</div>
				</div>
			</div>
		</div>
	<!-- // Header Wrapper // -->
</cfoutput>