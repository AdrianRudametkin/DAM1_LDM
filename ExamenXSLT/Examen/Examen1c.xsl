<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:strip-space elements="*" />
	<xsl:template match="/">
		<html>
			<head>
				<meta charset="UTF-8"/>
				<title>Discos</title>
				<link rel="stylesheet" href="styles.css"/>
			</head>
			<body>
				<h1>My CD Collection</h1>
				<table border="1">
					<tr bgcolor="green">
						<th>Title</th>
						<th>Company</th>
						<th>Price</th>
					</tr>
					<xsl:apply-templates select="//cd[country='USA' and (price&lt;9 or price=9)]"/>
				</table>
			</body>
		</html>
	</xsl:template>
  
	<xsl:template match="cd">
		<tr>
		  
			<td><xsl:value-of select="title"></xsl:value-of></td>
			<td><xsl:value-of select="company"></xsl:value-of></td>
			<xsl:choose>
			<xsl:when test="price&gt;8.5 and price&lt;9 ">
        <td bgcolor="green"><xsl:value-of select="price"></xsl:value-of></td>
			</xsl:when>
			<xsl:when test="price&gt;8 and price&lt;8.49">
        <td bgcolor="blue"><xsl:value-of select="price"></xsl:value-of></td>
			</xsl:when>
			<xsl:otherwise>
        <td bgcolor="gray"><xsl:value-of select="price"></xsl:value-of></td>
			</xsl:otherwise>
		</xsl:choose>

		</tr>
	</xsl:template>
</xsl:stylesheet>