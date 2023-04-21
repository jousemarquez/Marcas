<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
        <h2>Ejercicio 7:</h2>
        <h3>My CD Collection</h3>
        <xsl:template match="cd">
          <p>
            <xsl:apply-templates select="title" />
            <xsl:apply-templates select="artist" />
          </p>
        </xsl:template>
        <xsl:template match="title"> Title: <span style="color:red">
            <xsl:value-of select="." />
          </span>
  <br />
        </xsl:template>
        <xsl:template match="artist"> Artist: <span style="color: greenyellow">
            <xsl:value-of select="." />
          </span>
  <br />
        </xsl:template>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>