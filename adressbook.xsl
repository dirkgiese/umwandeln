<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	<xsl:template match="/">
		<div style="margin:20px">
			<h3>Root Template</h3>
			<xsl:for-each select="//address">
				<xsl:sort select="name"/>
				<h4>
					<xsl:value-of select="name"/>
				</h4>
			</xsl:for-each>

			<xsl:call-template name="vorlage" />

			<xsl:apply-templates select="addressbook/address">
				<xsl:sort select="name"/>
			</xsl:apply-templates>

		</div>
	</xsl:template>

	<xsl:template match="address">
		<xsl:value-of select="name"/> <br/>
	</xsl:template>

	<xsl:template name="vorlage">

	</xsl:template>

</xsl:stylesheet>