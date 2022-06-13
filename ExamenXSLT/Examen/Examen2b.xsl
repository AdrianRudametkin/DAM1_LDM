<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:strip-space elements="*" />
	<xsl:template match="/">
		<catalog>
		  <xsl:apply-templates select="//cd[year&lt;1990]">
		    <xsl:sort select="year" order="descending"/>
		  </xsl:apply-templates>
		</catalog>
	</xsl:template>
  
	<xsl:template match="cd">
		<cd>
		  <title>
		    <xsl:attribute name="artist">
				  <xsl:value-of select="artist" />
			  </xsl:attribute>
			  <xsl:value-of select="title"/>
		  </title>
		  <price>
		    <xsl:value-of select="price"/>
          <xsl:choose>
            <xsl:when test="country = 'USA'">$</xsl:when>
            <xsl:otherwise>€</xsl:otherwise>
          </xsl:choose>
		  </price>
		  <year><xsl:value-of select="year"/></year>
		</cd>
	</xsl:template>
</xsl:stylesheet>