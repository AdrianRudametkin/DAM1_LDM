<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:strip-space elements="*" />
  <xsl:template match="/">
    <html>
      <xsl:apply-templates select="/ies"/>
      <xsl:apply-templates select="//ciclo"/>
    </html>
  </xsl:template>
  
  <xsl:template match="ies">
    <h1><xsl:value-of select="nombre"/></h1>
  </xsl:template>
  
  <xsl:template match="ciclo">
    <p><xsl:value-of select="nombre"/></p>
  </xsl:template>
  
</xsl:stylesheet>