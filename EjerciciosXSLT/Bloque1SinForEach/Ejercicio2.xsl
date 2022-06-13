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
        <table>
          <tr>
            <th>Common</th>
            <th>Botanical</th>
            <th>Price</th>
          </tr>
          <xsl:apply-templates select="//PLANT[PRICE='$2.44']"/>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="PLANT">
    <tr>
      <td><xsl:value-of select="COMMON"/></td>
      <td><xsl:value-of select="BOTANICAL"/></td>
      <td><xsl:value-of select="PRICE"/></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>