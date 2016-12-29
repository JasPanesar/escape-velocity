<mura>
	<extensions>
		<!---
					This file is part of the Escape Velocity Mura CMS Theme
		--->
		<extension type="Component" subType="ContentList" hasBody="0">

			<attributeset name="Content List Info" container="Basic">
				<!-- Heading -->
				<attribute
					name="contentListHeading"
					label="Content List Heading/Title"
					hint="Enter the Heading you wish to appear above the listing of content."
					type="textbox"
					defaultValue=""
					required="false"
					validation=""
					regex=""
					message=""
					optionList=""
					optionLabelList="" />

				<!-- Feed -->
				<attribute
					name="contentListFeed"
					label="Content Listing Content Collection/Local Index Feed Name"
					hint="Select the name of the Local Content Collection/Index to use"
					type="selectbox"
					defaultValue="[mura]ListFirst($.getLocalFeedNames(), '^')[/mura]"
					required="false"
					validation=""
					regex=""
					message=""
					optionList="[mura]$.getLocalFeedNames()[/mura]"
					optionLabelList="[mura]$.getLocalFeedNames()[/mura]" />

				<!-- Show Image? -->
				<attribute
					name="contentListShowImage"
					label="Show Associated Image?"
					hint=""
					type="radiogroup"
					defaultValue="true"
					required="false"
					validation=""
					regex=""
					message=""
					optionList="true^false"
					optionLabelList="Yes^No" />

				<!-- Show Summary? -->
				<attribute
					name="contentListShowSummary"
					label="Show Summary?"
					hint=""
					type="radiogroup"
					defaultValue="true"
					required="false"
					validation=""
					regex=""
					message=""
					optionList="true^false"
					optionLabelList="Yes^No" />

				<!-- Max Items -->
				<attribute
					name="contentListMaxItems"
					label="Max Items To Display"
					hint=""
					type="selectbox"
					defaultValue="4"
					required="false"
					validation=""
					regex=""
					message=""
					optionList="1^2^3^4^5^6^7^8^9^10"
					optionLabelList="1^2^3^4^5^6^7^8^9^10" />

				<!-- Button Link -->
					<attribute
						name="contentListButtonLinkHref"
						label="Archive Button Link URL (including http://)"
						hint="Enter a URL if you wish to add a button below the content"
						type="textbox"
						defaultValue=""
						required="false"
						validation=""
						regex=""
						message=""
						optionList=""
						optionLabelList="" />
					<attribute
						name="contentListButtonLinkText"
						label="Archive Button Link Text"
						hint="Enter the button text to display if you wish to add a button below the content"
						type="textbox"
						defaultValue="Archives"
						required="false"
						validation=""
						regex=""
						message=""
						optionList=""
						optionLabelList="" />
					<attribute
						name="contentListButtonStyle"
						label="Archive Link Button Style"
						hint="Normal is pink, Blend is transparent with light grey text and border, Contrast is dark grey with white text."
						type="radiogroup"
						defaultValue="button-style1"
						required="false"
						validation=""
						regex=""
						message=""
						optionList="button-style1^button-style2^button-style3"
						optionLabelList="Normal^Blend^Contrast" />
			</attributeset>
			<!-- // Content List Info // -->

		</extension>
	</extensions>
</mura>
