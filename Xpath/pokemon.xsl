<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />

    <xsl:template match="/">
        <head>
            <link href="css/style.css" rel="stylesheet" type="text/css" />

            <title>My Pokemon Team</title>
        </head>
        <body>
            <main id="container">
                <h1>My Pokemon Team</h1>
                <xsl:apply-templates/>
            </main>
            <script type="text/javascript" src="js/app.js"></script>
        </body>
    </xsl:template>
    
    <xsl:template match="equipoPokemon">
        <div id="cardContainer">
            <xsl:for-each select="pokemon">
                <div class="card" year="{fechaCaptura/@año}">
                    <img src="{img/@src}" alt="{mote/@nombre}" />
                    <h2><xsl:value-of select="mote" /> (<xsl:value-of select="mote/@nombre" />)</h2>
                    <ul>
                        <li><xsl:value-of select="capturadoPor" />: <xsl:value-of select="capturadoPor/@id" /></li>
                        <li>Capturado el año <xsl:value-of select="fechaCaptura/@año" /> </li>
                    </ul>
                </div>
            </xsl:for-each>
        </div>
    </xsl:template>

</xsl:transform>