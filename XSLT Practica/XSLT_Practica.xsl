<!-- Ejercicio 1 -->

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <xsl:apply-templates />
      </body>
    </html>
  </xsl:template>

  <xsl:template match="libro">
    <div>
      <p><blockquote> 
        <xsl:value-of select="titulo" />
        <br/>
        <xsl:value-of select="autor" /></blockquote>
      </p>
    </div>
  </xsl:template>

  <xsl:template match="revista">
    <div>
        <p><xsl:value-of select="titulo" />
        <br/>
        <xsl:value-of select="director" />
      </p>
    </div>
  </xsl:template>

</xsl:stylesheet>

<!-- Ejercicio 2 -->

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <xsl:apply-templates />
      </body>
    </html>
  </xsl:template>

  <xsl:template match="libro">

  </xsl:template>

  <xsl:template match="revista">

  </xsl:template>

</xsl:stylesheet>

<!-- Ejercicio 3 -->

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <xsl:apply-templates />
      </body>
    </html>
  </xsl:template>

  <xsl:template match="libro">
    <div>
      <p><blockquote> 
        <xsl:value-of select="autor" /></blockquote>
        <br/>
      </p>
    </div>
  </xsl:template>

  <xsl:template match="revista">
    <div>
        <p>
        <xsl:value-of select="director" />
        <br/>
        <br/>
      </p>
    </div>
  </xsl:template>

</xsl:stylesheet>

<!-- Ejercicio 4 -->

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <xsl:apply-templates />
      </body>
    </html>
  </xsl:template>

  <xsl:template match="libro">
    <div>
        <xsl:value-of select="autor" />
        <br/>
    </div>
  </xsl:template>

  <xsl:template match="revista">

  </xsl:template>

</xsl:stylesheet>

<!-- Ejercicio 5
Nota para el profesor: he modificado el atributo "fechapublicacion año" por "fechapublicacion/@anho"-->

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <xsl:apply-templates />
      </body>
    </html>
  </xsl:template>

  <xsl:template match="libro">
    <div>
      <p><blockquote> 
        <xsl:value-of select="titulo" />
        <br/>
        <xsl:value-of select="autor" />
        <br/>
        <xsl:value-of select="fechapublicacion/@anho"/>
      </blockquote>
      </p>
    </div>
  </xsl:template>

  <xsl:template match="revista">
    <div>
        <p><xsl:value-of select="titulo" />
        <br/>
        <xsl:value-of select="director" />
        <br/>
        <xsl:value-of select="fechapublicacion/@anho"/>
      </p>
    </div>
  </xsl:template>

</xsl:stylesheet>

<!-- Ejercicio 6 -->

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <xsl:apply-templates />
      </body>
    </html>
  </xsl:template>

  <xsl:template match="libro">
    <div>
      <p> 
        Libro.<br/>
        Autor: <xsl:value-of select="autor" />
        <br/>
        Título: <xsl:value-of select="titulo" />
      </p>
    </div>
  </xsl:template>

  <xsl:template match="revista">
    <div>
        <p>
        Revista.<br/>
        Director: <xsl:value-of select="director" />
        <br/>
        Título: <xsl:value-of select="titulo" />
      </p>
    </div>
  </xsl:template>

</xsl:stylesheet>

<!-- Ejercicio 7 -->

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <xsl:apply-templates />
      </body>
    </html>
  </xsl:template>

  <xsl:template match="libro">
  <xsl:if test= "fechapublicacion/@anho=1973">
      <xsl:value-of select="titulo" />
  <br/>
  </xsl:if>
  </xsl:template>

  <xsl:template match="revista">

  </xsl:template>

</xsl:stylesheet>