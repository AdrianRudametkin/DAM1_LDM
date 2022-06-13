<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:strip-space elements="*" />
	<xsl:template match="/">
		<raiz>
			<xsl:apply-templates select=""/>
		</raiz>
	</xsl:template>
  
	<xsl:template match="">
		<etiqueta>
			<xsl:attribute name="">
				<xsl:value-of select="" />
			</xsl:attribute>
		
			<xsl:value-of select=""></xsl:value-of>
		</eticqueta>
	</xsl:template>
</xsl:stylesheet>