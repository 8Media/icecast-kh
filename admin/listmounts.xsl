<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml"/>
    <xsl:template match = "/icestats" >

        <LISTENERS>
            <xsl:for-each select="source">

                <POINTS> 
                    <xsl:value-of select="@mount" />
                </POINTS>   
            </xsl:for-each>
        </LISTENERS>
    </xsl:template>
</xsl:stylesheet>