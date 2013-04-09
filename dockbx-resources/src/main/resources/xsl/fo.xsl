<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                version="1.0">
    <xsl:import href="urn:docbkx:stylesheet"/>
    <xsl:include href="common.xsl"/>
    
    <!-- FOP doesn't render the right arrow correctly; use a right angle instead -->
    <xsl:param name="menuchoice.menu.separator"> > </xsl:param>
    
    <!-- Allow changing the font size of programlisting, as described in http://www.sagehill.net/docbookxsl/FittingText.html#ReduceFontSize -->
    <xsl:attribute-set name="monospace.verbatim.properties">
        <xsl:attribute name="font-size">
            <xsl:choose>
                <xsl:when test="processing-instruction('db-font-size')"><xsl:value-of select="processing-instruction('db-font-size')"/></xsl:when>
                <xsl:otherwise>inherit</xsl:otherwise>
            </xsl:choose>
        </xsl:attribute>
    </xsl:attribute-set>
</xsl:stylesheet>