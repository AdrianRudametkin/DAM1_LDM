<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <meta charset="UTF-8"/>
        <title>Título de la Página</title>
        <link rel="stylesheet" href="styles.css"/>
      </head>
      <body>
        <h1>My Plants</h1>
        <table border="1">
          <tr bgcolor="#5882FA">
            <th style="text-align:left">Common</th>
            <th style="text-align:left">Botanical</th>
          </tr>
          <xsl:for-each select="//PLANT">
            <tr>
              <td><xsl:value-of select="COMMON"></xsl:value-of></td>
              <td><xsl:value-of select="BOTANICAL"></xsl:value-of></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
