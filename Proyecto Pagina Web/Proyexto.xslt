<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

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
        <nav>
          <img src="img/LOGO.png" class="logo"/>
          <ul class="contenidonav">
            <li>
              <a>Casas</a>
              <ul class="centrarMenu">
                <xsl:for-each select="//contenido">
                  <li>
                    <a href="#{atributos/atributo[@nombre='ID-ENTIDAD']}">
                      <xsl:value-of select="atributos/atributo[@nombre='NOMBRE']"/>
                    </a>
                  </li>
                </xsl:for-each>
              </ul>
            </li>
            <li>
              <a class="volver-arriba" href="#">Volver Arriba</a>
            </li>
          </ul>
        </nav>

        <br/><br/><br/><br/><br/><br/>
        <section class="tituloMain">
        
          <h3><xsl:value-of select="nombre"/></h3>
          <p>El Ayuntamiento de Madrid ofrece varios recursos para ayudar a menores y familias en situaciones difíciles, incluyendo Centros de Apoyo a las Familias, Centros de Atención a la Infancia, Puntos de Encuentro Familiar, Centros de Día Infantiles y Centros de Apoyo para Adolescentes. Puedes acceder a más información a través del Portal de Datos Abiertos del Ayuntamiento.
          </p>
        </section>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="contenido">
    <br/>
    <section class="seccion">
    <div class="horizontal">
        <h1 class="tamaño"> <xsl:value-of select="atributos/atributo[@nombre='NOMBRE']"/> </h1>               
        <a>
          <xsl:attribute name="href">
            <xsl:text>https://www.google.com/maps?q=</xsl:text> 
            <xsl:value-of select="atributos/atributo/atributo[@nombre='LATITUD']"/>
            <xsl:text>,</xsl:text> 
            <xsl:value-of select="atributos/atributo/atributo[@nombre='LONGITUD']"/>
          </xsl:attribute>

          <img src="img/u.png" class="imagen" alt="Enlace a Google Maps"/>
        </a>
        <a>
          <xsl:attribute name="href">
          <xsl:text>tel:</xsl:text> 
            <xsl:value-of select="atributos/atributo/atributo[@nombre='TELEFONO']"/>
          </xsl:attribute>
          <img src="img/c.png" class="imagen" alt="Imagen4" />
        </a>

    </div>
    <p><xsl:value-of select="atributos/atributo[@nombre='DESCRIPCION-ENTIDAD']"/></p>
    <h4>HORARIO</h4>
        <p><xsl:value-of select="atributos/atributo[@nombre='HORARIO']"/></p>

        <h4>EQUIPAMIENTO</h4>
        <p><xsl:value-of select="atributos/atributo[@nombre='EQUIPAMIENTO']"/></p>
    </section>
  </xsl:template>
</xsl:stylesheet>
