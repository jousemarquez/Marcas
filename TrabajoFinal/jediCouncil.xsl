<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />

    <xsl:template match="/">
        <html>
            <head>
                <link href="css/style.css" rel="stylesheet" type="text/css" />
                <title>Jedi Council</title>
            </head>
            <body>
                <main id="container">
                    <h1>The Jedi Council</h1>
                    <xsl:apply-templates/>
                </main>
                <script type="text/javascript" src="js/app.js"></script>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="consejoJedi">
        <div id="cardContainer">
            <xsl:for-each select="jedi">
                <div class="card" year="{fallecimiento/@lugar}">
                    <img src="{img/@src}" alt="{nombre/@apellido}" />
                    <h2><xsl:value-of select="nombre" /> (<xsl:value-of select="nombre/@apellido" />)</h2>
                    <h3><xsl:value-of select="rango" /></h3>
                    <ul>                        
                        <li>Especie: <xsl:value-of select="especie" /></li>
                        <li>Género: <xsl:value-of select="especie/@genero" /></li>
                        <li>Sable láser: <xsl:value-of select="sableLaser/@color" /></li>
                        <li>Año de fallecimiento: <xsl:value-of select="fallecimiento" /></li>
                        <li>Lugar de fallecimiento: <xsl:value-of select="fallecimiento/@lugar" /></li>
                    </ul>
                </div>
            </xsl:for-each>
        </div>
    </xsl:template>

</xsl:transform>