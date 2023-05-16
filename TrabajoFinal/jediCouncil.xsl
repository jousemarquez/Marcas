<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes" />

  <xsl:template match="/">
    <html>
      <head>
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link href="media/favicon.ico" rel="icon" type="image/x-icon" />
      </head>
      <body>
        <main id="container">
          <h1>Jedi Council</h1>
          <div id="cardContainer">
            <xsl:apply-templates />
          </div>
        </main>
        <script type="text/javascript" src="js/app.js"></script>
      </body>
    </html>
  </xsl:template>

    <xsl:template match="consejoJedi">
            <xsl:for-each select="jedi">
                <div class="card {rango}" id="{nombre/@apellido}">
                    <img src="{img/@src}" alt="{nombre/@apellido}" />
                    <h2><xsl:value-of select="nombre" /> (<xsl:value-of select="nombre/@apellido" />)</h2>
                    <h3><xsl:value-of select="rango" /> Jedi</h3>
                    <ul>
                        <li>Color de sable: <xsl:value-of select="sableLaser/@color" /></li>                        
                        <li><xsl:value-of select="especie" />: <xsl:value-of select="especie/@genero" /></li>
                        <li>Fallecimiento en: <xsl:value-of select="fallecimiento/@lugar" /> (<xsl:value-of select="fallecimiento" />)</li>
                    </ul>
                </div>
            </xsl:for-each>
  </xsl:template>

</xsl:stylesheet>