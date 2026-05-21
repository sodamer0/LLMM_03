<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html>
      <body>
        <h2>Lista de CDs</h2>
        <table border="1">
          <tr>
            <th>Título</th>
            <th>Artista</th>
            <th>Precio</th>
          </tr>
          
          <xsl:for-each select="CATALOG/CD">
            <tr>
              <td><xsl:value-of select="TITLE"/></td>
              <td><xsl:value-of select="ARTIST"/></td>
              <td><xsl:value-of select="PRICE"/></td>
            </tr>
          </xsl:for-each>
          
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>