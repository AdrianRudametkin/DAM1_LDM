<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
     <html>
        <xsl:apply-templates />
    </html>
  </xsl:template>
  
  <xsl:template match="//PLANT">
    <xsl:value-of select="COMMON"></xsl:value-of>
    <xsl:value-of select="ZONE"></xsl:value-of>
    <xsl:value-of select="BOTANICAL"></xsl:value-of>
    <xsl:value-of select="PRICE"></xsl:value-of>
  </xsl:template>  

</xsl:stylesheet>