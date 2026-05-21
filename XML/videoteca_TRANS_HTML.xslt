<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:template match="/">
    <html>
      <body>
        <h1>Videoteca</h1>
        <p>Fecha: <xsl:value-of select="videoteca/@data_creación"/></p>
        
        <h2>Películas</h2>
        <table border="1">
          <tr>
            <th>ID</th>
            <th>Título</th>
            <th>Título Original</th>
            <th>Año</th>
            <th>Director</th>
            <th>Género</th>
            <th>Duración</th>
            <th>Actores (IDs)</th>
            <th>Importe</th>
            <th>Moneda</th>
          </tr>
          <xsl:for-each select="videoteca/película">
            <tr>
              <td><xsl:value-of select="@id"/></td>
              <td><xsl:value-of select="título"/></td>
              <td><xsl:value-of select="títuloorixinal"/></td>
              <td><xsl:value-of select="ano"/></td>
              <td><xsl:value-of select="director"/></td>
              <td><xsl:value-of select="xénero"/></td>
              <td><xsl:value-of select="duración"/></td>
              <td>
                <xsl:for-each select="actúa">
                  <xsl:value-of select="@id"/><xsl:text> </xsl:text>
                </xsl:for-each>
              </td>
              <td><xsl:value-of select="importe"/></td>
              <td><xsl:value-of select="importe/@moneda"/></td>
            </tr>
          </xsl:for-each>
        </table>
        
        <h2>Actores</h2>
        <table border="1">
          <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Sexo</th>
            <th>Fecha Nacimiento</th>
            <th>URL</th>
          </tr>
          <xsl:for-each select="videoteca/actor">
            <tr>
              <td><xsl:value-of select="@id"/></td>
              <td><xsl:value-of select="nome"/></td>
              <td><xsl:value-of select="sexo"/></td>
              <td><xsl:value-of select="datanacemento"/></td>
              <td><xsl:value-of select="url"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
