<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>sistemaEstelar.xsl</title>
            </head>
            <body>
                <h1>Naves</h1>
                <table>
                    <tr style="background-color:green">
                        <th>Sistema</th>
                        <th>Nom Nave</th>
                        <th>Apellidos Capitan</th>
                    </tr>
                    <xsl:for-each select="flota/sistema/nave">
                        <xsl:if test="tripulacion/capitan/apellidosCapitan='Smith'">
                            <tr>
                                <td>
                                    <xsl:value-of select="../@cod"/>
                                </td>
                                <td>
                                    <xsl:value-of select="nomNave"/>
                                </td>
                                <td>
                                    <xsl:value-of select="tripulacion/capitan/apellidosCapitan"/>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>

            </body>  
        </html>
    </xsl:template>

</xsl:stylesheet>
