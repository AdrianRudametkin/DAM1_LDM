<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:strip-space elements="*" />
	<xsl:template match="/">
		<raiz>
			<xsl:apply-templates select="">
				<xsl:sort select="xpath" data-type="tipo dato" order="descending"/>
			</xsl:apply-templates>
		</raiz>
	</xsl:template>
  
	<xsl:template match="">
		<xsl:choose>
			<xsl:when test="algo = '1'">
				<etiqueta1>
					<xsl:value-of select="" />
				</etiqueta1>
			</xsl:when>
			<xsl:when test="exp2">
				<etiqueta1>
					<xsl:value-of select="algo = '2'" />
				</etiqueta1>
			</xsl:when>
			<xsl:otherwise>
				<etiqueta1>
					<xsl:value-of select="algo = '3'" />
				</etiqueta1>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>