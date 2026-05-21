<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  
  <xsl:template match="/">
    <html>
          <body>
            <h1>Inventario de Equipos</h1>

            <!-- Bucle principal para recorrer cada máquina -->
            <xsl:for-each select="equipos/máquina">
              
              <!-- Mostramos el nombre de la máquina (atributo) -->
              <h2>Máquina: <xsl:value-of select="@nome"/></h2>
              
              <!-- Lista con los datos básicos de la máquina -->
              <ul>
                <li><strong>Tipo:</strong> <xsl:value-of select="hardware/tipo"/></li>
                <li><strong>Fabricante:</strong> <xsl:value-of select="hardware/fabricante"/></li>
                <li><strong>Procesador:</strong> <xsl:value-of select="hardware/procesador"/> (<xsl:value-of select="hardware/procesador/@marca"/>)</li>
                <li><strong>Memoria:</strong> <xsl:value-of select="hardware/memoria"/> GB</li>
                <li><strong>Sistema Operativo:</strong> <xsl:value-of select="config/OS"/></li>
                <li><strong>IP:</strong> <xsl:value-of select="config/IP"/></li>
              </ul>
              
              <hr/> <!-- Línea divisoria entre máquinas -->
              
            </xsl:for-each>

          </body>
        </html>
    
    
  </xsl:template>
  
</xsl:stylesheet>
