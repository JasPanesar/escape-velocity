<!---
			This file is part of the Escape Velocity Mura CMS Theme
--->
<cfoutput>

	<section class="is">
		<cfif Len($.component('rssFeedHeading'))>
			<header>
				<h2 class="rss-heading">
					#HTMLEditFormat($.setDynamicContent($.component('rssFeedHeading')))#
				</h2>
			</header>
		</cfif>
		<cftry>
			<cffeed source="#$.component('rssFeedLink')#" query="rs" />
			<cfcatch>
				<cfset rs = QueryNew('') />
			</cfcatch>
		</cftry>
			
		<cfset it = $.getBean('beanIterator').setQuery(rs) />
		<cfset maxItems = Val($.component('rssFeedMaxItems')) />

		<cfif it.hasNext()>
			<ul class="style3">
				<cfloop condition="it.hasNext()">
					<cfset item = it.next() />
					<li>

						<!--- Title --->
						<div class="rss-title">
							<a href="#item.getValue('rsslink')#">
								#HTMLEditFormat(item.getValue('title'))#
							</a>
						</div>

						<!--- Date --->
						<cfset theDate = $.convertFeedDateTime(item.getValue('publisheddate')) />
						<cfif YesNoFormat($.component('rssFeedShowPubDate')) and IsDate(theDate)>
							<div class="rss-date">
								#LSDateFormat(thedate, 'long')#
							</div>
						</cfif>

						<!--- Summary --->
						<cfif YesNoFormat($.component('rssFeedShowSummary'))>
							<div class="rss-summary">
								#item.getValue('content')#
							</div>
						</cfif>
					</li>

					<cfif it.getRecordIndex() eq maxItems>
						<cfbreak />
					</cfif>
				</cfloop>
			</ul>
		<cfelse>
			#$.dspNoItemsNotice()#
		</cfif>
	</section>

</cfoutput>