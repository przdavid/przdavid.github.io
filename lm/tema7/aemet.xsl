<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html></html>
    <body>
      <h1>Datos AEMET</h1>
      <h2>Tiempo en Córdoba</h2>
    </body>
    <table border="3" bordercolor="#eaffea" bgcolor="#eaffea">
      <tr>
        <th>Día</th>
        <th>Estado del cielo</th>
        <th>Mínimas</th>
        <th>Máximas</th>
      </tr>
      <xsl:for-each select="/root/prediccion/dia">
      <tr>
        <td><xsl:value-of select="@fecha"/></td>
        <td><xsl:value-of select="estado_cielo/@descripcion"/></td>
        <td bgcolor="#88c4ff"><xsl:value-of select="temperatura/minima"/></td>
        <td bgcolor="#ff8888"><xsl:value-of select="temperatura/maxima"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </xsl:template>
</xsl:stylesheet>
