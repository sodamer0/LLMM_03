<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  
  <xsl:template match="/">
    <html>
      <body>
        <h1>Videoteca</h1>
        <p><strong>Fecha de creación:</strong> <xsl:value-of select="videoteca/@data_creación"/></p>

        <!-- BUCLE 1: Para cada película -->
        <xsl:for-each select="videoteca/película">
          <h2>Película: <xsl:value-of select="título"/></h2>
          <ul>
            <li><strong>Título Original:</strong> <xsl:value-of select="títuloorixinal"/></li>
            <li><strong>Año:</strong> <xsl:value-of select="ano"/></li>
            <li><strong>Director:</strong> <xsl:value-of select="director"/></li>
            <li><strong>Género:</strong> <xsl:value-of select="xénero"/></li>
            <li><strong>Duración:</strong> <xsl:value-of select="duración"/> min</li>
            <li><strong>Importe:</strong> <xsl:value-of select="importe"/> (<xsl:value-of select="importe/@moneda"/>)</li>
          </ul>
          <hr/>
        </xsl:for-each>

        <!-- BUCLE 2: Para cada actor -->
        <xsl:for-each select="videoteca/actor">
          <h2>Actor: <xsl:value-of select="nome"/></h2>
          <ul>
            <li><strong>ID:</strong> <xsl:value-of select="@id"/></li>
            <li><strong>Sexo:</strong> <xsl:value-of select="sexo"/></li>
            <li><strong>Fecha Nacimiento:</strong> <xsl:value-of select="datanacemento"/></li>
            <li><strong>URL:</strong> <xsl:value-of select="url"/></li>
          </ul>
          <hr/>
        </xsl:for-each>

      </body>
    </html>
  </xsl:template>
  
</xsl:stylesheet>
