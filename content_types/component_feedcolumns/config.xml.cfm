<mura>
	<extensions>
		<!---
					This file is part of the Escape Velocity Mura CMS Theme
		--->
		<extension type="Component" subType="FeedColumns" hasBody="0">

			<attributeset name="Local Feed Columns Info" container="Basic">

				<!-- Heading -->
				<attribute
					name="feedColumnsHeading"
					label="Local Feed Heading / Title"
					hint=""
					type="textbox"
					defaultValue="Mura CMS"
					required="false"
					validation=""
					regex=""
					message=""
					optionList=""
					optionLabelList="" />

				<!-- Feed -->
				<attribute
					name="feedColumnsFeed"
					label="Content Collection/Local Index Feed Name"
					hint="Select the name of the Local Content Collection/Index to use"
					type="selectbox"
					defaultValue="[mura]ListFirst($.getLocalFeedNames(), '^')[/mura]"
					required="false"
					validation=""
					regex=""
					message=""
					optionList="[mura]$.getLocalFeedNames()[/mura]"
					optionLabelList="[mura]$.getLocalFeedNames()[/mura]" />

				<!-- Max Items -->
				<attribute
					name="feedColumnsMaxItems"
					label="Max Items To Display"
					hint=""
					type="selectbox"
					defaultValue="3"
					required="false"
					validation=""
					regex=""
					message=""
					optionList="1^2^3^4^5^6^7^8^9^10"
					optionLabelList="1^2^3^4^5^6^7^8^9^10" />

				<!-- Column Count -->
				<attribute
					name="feedColumnsColumnCount"
					label="Number of Columns To Display"
					hint=""
					type="selectbox"
					defaultValue="3"
					required="false"
					validation=""
					regex=""
					message=""
					optionList="1^2^3^4"
					optionLabelList="1^2^3^4" />

				<!-- Read More Text -->
				<attribute
					name="feedColumnsReadMoreText"
					label="Read More Text"
					hint=""
					type="textbox"
					defaultValue="Read More"
					required="false"
					validation=""
					regex=""
					message=""
					optionList=""
					optionLabelList="" />
			</attributeset>
			<!-- // Local Feed Columns Info // -->

		</extension>
	</extensions>
</mura>
