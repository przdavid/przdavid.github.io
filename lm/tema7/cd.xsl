﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
<style>
table {
 border: 1px solid black;
}
tr {
 background-color: #839ca2;
 text-align: left;
}
</style>
</head>
<body>
 <h2>My CD Collection</h2>
 <h3>Bob Dylan</h3>
 <table>
 <tr >
 <th>Title</th>
 <th>Artist</th>
 <th>Company</th>
 <th>Price</th>
 <th>Year</th>
 </tr>
 <xsl:for-each select="catalog/cd">
 <tr>
 <td><xsl:value-of select="title"/></td>
 <td><xsl:value-of select="artist"/></td>
 <td><xsl:value-of select="company"/></td>
 <xsl:choose>
 <xsl:when test="price &lt; 10">
 <td bgcolor="#ff00ff"><xsl:value-of select="price"/></td>
 </xsl:when>
 </xsl:choose>
 <td><xsl:value-of select="year"/></td>
 </tr>
 </xsl:for-each>
 </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>