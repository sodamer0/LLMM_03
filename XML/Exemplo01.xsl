<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Ciclo</title>
      </head>
      <body>
        <h1><xsl:value-of select="//módulo"/></h1>
        <h2>- <xsl:value-of select="//profesor"/> -</h2>
        <p>
          <xsl:value-of select="//módulo/@horas"/> horas
          (<xsl:value-of select="//módulo/@sesións"/> sesións semanais.)
        </p>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
