<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>sistemaEstelar.xsl</title>
            </head>
            <body>
                <h1>Planetas y Lunas</h1>
                <ul>
                    <xsl:for-each select="flota/sistema/planeta">
                        <li>
                            <xsl:value-of select="nomPlaneta"/>
                        
                            <ol>
                                <xsl:for-each select="luna">
                                    <li>
                                        <xsl:value-of select="."/>
                                    </li>
                                </xsl:for-each>
                            </ol>
                        </li>
                    </xsl:for-each>
                </ul>

            </body>
            
        </html>
    </xsl:template>

</xsl:stylesheet>
