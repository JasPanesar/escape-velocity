<!--
	This file is part of the Escape Velocity Mura CMS Theme

	Notes:
		* Custom Image Sizes + Class Extensions required for this theme.
		* Feel free to rename this file or comment out the nodes below once this file has been parsed by Mura.
-->
<theme>

	<imagesizes>
		<!-- used for the primary associated image -->
		<imagesize name="bodyimage" width="1200" height="297" />
		<imagesize name="componentheaderimage" width="347" height="177" />
		<!-- used for the header background image -->
		<imagesize name="headerbackgroundimage" width="1920" height="573" />
	</imagesizes>

	<extensions>
		<cfinclude template="class_extensions/definitions/baseDefault.cfm" />
		<cfinclude template="class_extensions/definitions/pageHome.cfm" />
		<cfinclude template="class_extensions/definitions/componentRSSFeed.cfm" />
		<cfinclude template="class_extensions/definitions/componentContentList.cfm" />
		<cfinclude template="class_extensions/definitions/componentFeedColumns.cfm" />
		<cfinclude template="class_extensions/definitions/componentWithHeadingAndButtonLink.cfm" />
	</extensions>

</theme>