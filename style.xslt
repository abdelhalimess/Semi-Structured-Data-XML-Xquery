<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:html="http://www.w3.org/1999/xhtml" exclude-result-prefixes="html">
  <xsl:output method="html" media-type="text/html"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Trip to Hautes-Alpes</title>
        <link rel="stylesheet" type="text/css" href="style.css"/>
      </head>
      <body>
        <h1>Trip to Hautes-Alpes</h1>
        <h2><xsl:value-of select="TravelData/Guide"/></h2>
        <div class="location">
          <h3>Location</h3>
          <ul>
            <li><b>Vallee de la Claree: </b><xsl:value-of select="TravelData/Location/ValleeDeLaClaree/Description"/></li>
            <li><b>Vallon des Muandes: </b><xsl:value-of select="TravelData/Location/VallonDesMuandes/Description"/></li>
          </ul>
        </div>
        <div class="itinerary">
          <h3>Itinerary</h3>
          <table>
            <tr>
              <th>Route number</th>
              <th>Name</th>
              <th>Description</th>
              <th>Elevation</th>
            </tr>
            <xsl:for-each select="TravelData/Itinerary/Route">
              <tr>
                <td><xsl:value-of select="@number"/></td>
                <td><xsl:value-of select="Name"/></td>
                <td><xsl:value-of select="Description"/></td>
                <td><xsl:value-of select="Elevation"/></td>
              </tr>
            </xsl:for-each>
          </table>
        </div>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
