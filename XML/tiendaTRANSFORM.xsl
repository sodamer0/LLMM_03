<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
  
  <xsl:template match="/">
    <catalogo>
      <xsl:apply-templates select="tienda/producto"/>
    </catalogo>
  </xsl:template>

  <xsl:template match="producto">
    <item>
      <id><xsl:value-of select="@referencia"/></id>
      <articulo>
        <xsl:apply-templates select="consola"/>
      </articulo>
      <coste>
        <xsl:apply-templates select="precio"/>
      </coste>    
    </item>
  </xsl:template>
  
  <xsl:template match="consola">
    <xsl:attribute name="fabricante">
      <xsl:value-of select="@marca"/>
    </xsl:attribute>
    <xsl:value-of select="."/>
  </xsl:template>

  <xsl:template match="precio">
    <xsl:attribute name="unidad">EUR</xsl:attribute>
    <xsl:value-of select="."/>
  </xsl:template>
  
</xsl:stylesheet>

