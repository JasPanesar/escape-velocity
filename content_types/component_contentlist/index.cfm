<!---
			This file is part of the Escape Velocity Mura CMS Theme
--->
<cfoutput>
	<cfsilent>
		<cfscript>
			feed = $.getBean('feed').loadBy(name=$.component('contentListFeed')).setMaxItems($.component('contentListMaxItems'));
			it = feed.getIterator();
		</cfscript>
	</cfsilent>

	<section class="is">

		<!--- Header --->
		<cfif Len($.component('contentListHeading'))>
			<header>
				<h2 class="list-heading">#HTMLEditFormat($.component('contentListHeading'))#</h2>
			</header>
		</cfif>

		<cfif feed.getIsNew()>
			#$.dspNoFeedNotice()#
		<cfelseif it.hasNext()>

			<cfloop condition="#it.hasNext()#">
				<cfsilent>
					<cfscript>
						item = it.next();
						img = $.getURLForImage(fileid=item.getValue('fileid'), size='small');
						hasImage = YesNoFormat($.component('contentListShowImage')) and Len(img);
						hasImageClass = hasImage ? 'has-image' : 'no-image';
					</cfscript>
				</cfsilent>
				<ul class="style2">
					<li class="list-item">
						<article class="is-post-excerpt #hasImageClass#">
							<cfif hasImage> 
								<a href="#item.getValue('url')#" class="image image-left list-image-link"><img src="#img#" alt="#HTMLEditFormat(item.getValue('menuTitle'))#" class="list-image" /></a>
							</cfif>
							<h3 class="list-title"><a href="#item.getValue('url')#">#HTMLEditFormat(item.getValue('menutitle'))#</a></h3>
							
							<!--- <span class="date">#LSDateFormat(item.getValue('releasedate'), 'long')#</span> --->

							<cfif YesNoFormat($.component('contentListShowSummary'))>
								<div class="list-summary">
									#$.setDynamicContent(item.getSummary())#
								</div>
							</cfif>
						</article>
					</li>
				</ul>
			</cfloop>
			<!--- Archives --->
			<cfif Len($.component('contentListButtonLinkHref'))>
				<div class="list-button">
					<a href="#$.component('contentListButtonLinkHref')#" class="button #$.component('contentListButtonStyle')#">
						<cfif Len($.component('contentListButtonLinkText'))>
							#HTMLEditFormat($.component('contentListButtonLinkText'))#
						<cfelse>
							Archives
						</cfif>
					</a>
				</div>
			</cfif>
		<cfelse>
			#$.dspNoItemsNotice()#
		</cfif>

	</section>
</cfoutput>