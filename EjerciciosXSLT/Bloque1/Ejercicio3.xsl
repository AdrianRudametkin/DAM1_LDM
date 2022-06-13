<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
 
   
  <xsl:template match="/CATALOG/PLANT[ZONE=4]">
    <tr>
      <td><xsl:value-of select="COMMON"></xsl:value-of></td>
      <td><xsl:value-of select="BOTANICAL"></xsl:value-of></td>
      <td><xsl:value-of select="PRICE"></xsl:value-of></td>
      <td><xsl:value-of select="ZONE"></xsl:value-of></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>