<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>sistemaEstelar.xsl</title>
            </head>
            <body>
                 <h1>Habitantes</h1>
                <ol>
                    <xsl:for-each select="flota/sistema/planeta">
                        <xsl:if test ="habitantes&gt;50000">
                            <li>
                                <xsl:value-of select="nomPlaneta"/>:
                                <xsl:value-of select="habitantes"/>
                                habitantes
                            </li>
                        </xsl:if>
                    </xsl:for-each>
                </ol>

            </body>
            
        </html>
    </xsl:template>

</xsl:stylesheet>
