<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml"/>
<xsl:template match = "/icestats" >
<ICECASTSERVER><CURRENTLISTENERS>NA</CURRENTLISTENERS>
<WEBDATA>
<INVALID>NA</INVALID>
</WEBDATA>
<LISTENERS>
<xsl:for-each select="source">
<xsl:variable name = "themount" ><xsl:value-of select="@mount" /></xsl:variable>
<xsl:for-each select="listener">
<LISTENER>
<HOSTNAME><xsl:value-of select="IP" /><xsl:if test="username"> (<xsl:value-of select="username" />)</xsl:if></HOSTNAME>
<USERAGENT><xsl:value-of select="UserAgent" /></USERAGENT>
<UNDERRUNS>0</UNDERRUNS>
<CONNECTTIME><xsl:value-of select="Connected" /></CONNECTTIME>
<POINTER>NA</POINTER>
<UID>ICE CAST</UID>
</LISTENER>
</xsl:for-each>
</xsl:for-each>
</LISTENERS>
</ICECASTSERVER>
</xsl:template>
</xsl:stylesheet>