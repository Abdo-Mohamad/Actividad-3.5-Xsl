<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>sistemaEstelar.xsl</title>
            </head>
            <body>
                <h1>Sistemas</h1>
                <table>
                    <tr style="background-color:red">
                        <th>Codigo Sistema</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                    </tr>
                    <xsl:for-each select="flota/sistema">
                        <xsl:if test="nave/tripulacion/capitan/nomCapitan='John' and 
                        nave/tripulacion/capitan/apellidosCapitan='Smith'">
                            <tr>
                                <td>
                                    <xsl:value-of select="@cod"/>
                                </td>
                                <xsl:for-each select="nave/tripulacion/capitan">
                                    <xsl:if test=
                                    "nomCapitan='John' and apellidosCapitan='Smith'">
                                        <td>
                                            <xsl:value-of select="nomCapitan"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="apellidosCapitan"/>
                                        </td>
                                    </xsl:if>
                                </xsl:for-each>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
