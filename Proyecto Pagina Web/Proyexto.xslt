<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <!-- Plantilla para el elemento infoDataset -->
  <xsl:template match="infoDataset">
    <html lang="es">
      <head>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
        <title><xsl:value-of select="nombre"/></title>
        <link rel="stylesheet" href="proyecto.css"/>
        <script src="proyecto.js" defer="defer"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com"/>
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="crossorigin"/>
        <link href="https://fonts.googleapis.com/css2?family=Righteous&amp;display=swap" rel="stylesheet"/>
      </head>
      <body>
        <!-- Navegación -->
        <nav>
          <img src="img/LOGO.png" class="logo"/>
          <ul class="contenidonav">
            <li>
              <a href="">Casas</a>
              <ul class="centrarMenu">
                <xsl:apply-templates select="//contenido//[@nombre='NOMBRE']"/>
              </ul>
            </li>
            <li>
              <a class="volver-arriba" href="#">Volver Arriba</a>
            </li>
          </ul>
        </nav>

        <!-- Contenido principal -->
        <section class="tituloMain">
          <h3><xsl:value-of select="nombre"/></h3>
          <p><xsl:value-of select="descripcion"/></p>
        </section>
      </body>
    </html>
  </xsl:template>

  <!-- Plantilla para el elemento contenido -->
  <xsl:template match="contenido">
    <section class="seccion">
      <!-- Mostrar atributos como texto separado por saltos de línea -->
      <xsl:for-each select="atributos/atributo">
        <p><xsl:value-of select="concat(@nombre, ': ', .)"/></p>
      </xsl:for-each>
    </section>
  </xsl:template>
</xsl:stylesheet>
