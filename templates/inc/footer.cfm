<!---
			This file is part of the Escape Velocity Mura CMS Theme
--->
<cfoutput>
		#$.dspObject(object='component',objectid='[ Footer ] Highlights')#

		<!-- Footer Wrapper -->
			<div id="footer-wrapper" class="wrapper">
				<div class="title">
					#$.dspComponent('[ Footer ] Title')#
				</div>
				<div class="container">
					<div class="row">
						<div class="12u">

							<!-- Footer -->
								<div id="footer">
									<header class="style1">
										#$.dspObject(object='component',objectid='[ Footer ] Header')#
									</header>
									<hr />
									<div>
										<div class="row">
											<div class="6u">
												<!-- Contact Form -->
													<section class="footer-one">
														#$.dspObject(
															object='form'
															, objectid='[ Footer ] Contact Form'
															, alloweditable=true
														)#
													</section>
												<!-- /Contact Form -->
											</div>
											<div class="6u">
												<!-- Get In Touch -->
													<section class="footer-two">
														<div class="feature-list feature-list-small">
															<div>
																#$.dspObject(object='component',objectid='[ Footer ] Get in touch')#
															</div>
														</div>
													</section>
												<!-- /Get In Touch -->
											</div>
										</div>
									</div>
									<hr />
								</div>
							<!-- /Footer -->

							<!-- Copyright -->
								<div id="copyright">
									<span>
										&copy; #Year(Now())# #HTMLEditFormat($.siteConfig('site'))#.
										Design by <a href="http://html5up.net/">HTML5 UP</a>.
										Powered by <a href="http://www.getmura.com">Mura CMS</a>.
									</span>
								</div>
							<!-- /Copyright -->

						</div>
					</div>
				</div>
			</div>
		<!-- /Footer Wrapper -->
	</body>
</html>
</cfoutput>
