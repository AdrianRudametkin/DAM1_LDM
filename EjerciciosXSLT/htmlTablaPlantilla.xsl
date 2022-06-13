<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:strip-space elements="*" />
	<xsl:template match="/">
		<html>
			<head>
				<meta charset="UTF-8"/>
				<title>Título de la Página</title>
				<link rel="stylesheet" href="styles.css"/>
			</head>
			<body>
				<h1>Header</h1>
				<table>
					<tr>
						<th>Table Header</th>
					</tr>
					<xsl:apply-templates select=""/>
				</table>
			</body>
		</html>
	</xsl:template>
  
	<xsl:template match="">
		<tr>
			<td><xsl:value-of select=""></xsl:value-of></td>
		</tr>
	</xsl:template>
</xsl:stylesheet>