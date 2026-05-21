<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <maquinas>
      <xsl:for-each select="equipos/máquina/hardware">
        <maquina>      
          <nombre>
            <xsl:value-of select="../@nome"/>
          </nombre>
          <procesador>       
            <xsl:attribute name="marca">
              <xsl:value-of select="procesador/@marca"/>
            </xsl:attribute>
            <xsl:attribute name="modelo">
              <xsl:value-of select="procesador"/>
            </xsl:attribute>              
          </procesador>       
          <memoria>    
            <xsl:attribute name="medida">GB</xsl:attribute>
            <xsl:attribute name="tecnologia">
              <xsl:value-of select="memoria/@*"/>
            </xsl:attribute>
            <xsl:value-of select="memoria"/>  
          </memoria>
          <discos>
            <xsl:attribute name="cantidad">
              <xsl:value-of select="count(disco)"/>
            </xsl:attribute>
            <xsl:attribute name="capacidad">
              <xsl:value-of select="sum(disco/@capacidade)"/>
            </xsl:attribute>
          </discos>
        </maquina>
      </xsl:for-each>
    </maquinas>
  </xsl:template>
</xsl:stylesheet>