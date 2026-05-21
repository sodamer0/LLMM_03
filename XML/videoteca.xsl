<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">


  <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <cine>
      <xsl:apply-templates select="videoteca/película"/>
    </cine>
  </xsl:template>
  
  <xsl:template match="película">
    <ficha>
      <codigo>
        <xsl:value-of select="@id"/>
      </codigo>
      
      <detalles>
        <xsl:apply-templates select="título"/>
      </detalles>
    
        <finanzas>
        <xsl:apply-templates select="importe"/>
      </finanzas>
      
    </ficha>
  </xsl:template>
  
  
  <xsl:template match="título">
    <xsl:attribute name="estreno">
      <xsl:value-of select="../ano"/>
    </xsl:attribute>
    <xsl:value-of select="."/>
  </xsl:template>
  
  
  <xsl:template match="importe">
    <xsl:attribute name="divisa">
      <xsl:value-of select="@moneda"/>
    </xsl:attribute>
    <xsl:value-of select="."/>
  </xsl:template>
  
  
  
  
  
  
</xsl:stylesheet>
