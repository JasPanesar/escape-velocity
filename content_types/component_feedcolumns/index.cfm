<!---
			This file is part of the Escape Velocity Mura CMS Theme
--->
<cfoutput>
	<!-- Highlights Wrapper -->
		<div class="wrapper wrapper-style3">

			<!--- Feed Heading --->
			<cfif Len(arguments.feedHeading)>
				<div class="title">
					#HTMLEditFormat(arguments.feedHeading)#
				</div>
			</cfif>

			<div class="container">
				<div class="row">
					<div class="12u">
						
						<!-- Highlights -->
							<div id="highlights">
								<div>
									<cfif local.it.hasNext()>
										<cfloop condition="local.it.hasNext()">

											<!--- Start Row --->
												<cfif not local.it.currentIndex() mod local.itemsPerRow>
													<div class="row">
												</cfif>

											<!--- THE ITEM --->
												<cfset local.item = local.it.next() />
												<div class="#local.columnClass#">
													<section class="highlight">

														<!--- Primary Image --->
														<cfset local.img = variables.$.getURLForImage(fileid=local.item.getValue('fileid'), size='componentheaderimage') />
														<cfif Len(local.img)>
															<a href="#local.item.getValue('url')#" class="image image-full">
																<img src="#local.img#" alt="#HTMLEditFormat(local.item.getValue('menuTitle'))#" />
															</a>
														</cfif>

														<!--- Title --->
														<h3>
															<a href="#local.item.getValue('url')#">
																#HTMLEditFormat(local.item.getValue('menuTitle'))#
															</a>
														</h3>

														<!--- Summary --->
														#local.item.getSummary()#

														<!--- Read More Button --->
														<cfif Len(arguments.readMoreText)>
															<ul class="actions">
																<li>
																	<a href="#local.item.getValue('url')#" class="button button-style1">
																		#arguments.readMoreText#
																	</a>
																</li>
															</ul>
														</cfif>
													</section>
												</div>

											<!--- End Row --->
												<cfif not local.it.currentIndex() mod local.itemsPerRow or local.it.currentIndex() eq local.totalItems>
													</div><!-- @End Row -->
												</cfif>

										</cfloop>
									</cfif>
								</div>
							</div>
						<!-- /Highlights -->
						
					</div>
				</div>
			</div>
		</div>
	<!-- /Highlights Wrapper -->
</cfoutput>