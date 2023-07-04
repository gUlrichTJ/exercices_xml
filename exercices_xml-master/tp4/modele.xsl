<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

    <!-- Nous mettrons nos templates ici -->
    <!-- xsl:template match="/" mode="#default">
        <collection><xsl:copy-of select="//titre"/></collection>        
    </xsl:template -->
    
    <!-- xsl:template match="//album">
        <BD>
            <xsl:attribute name="nom"><xsl:value-of select="titre"/></xsl:attribute>
            <xsl:value-of select="date/annee"/>
        </BD>
    </xsl:template -->

    <xsl:template match="/">
        <liste>
            <xsl:attribute name="nombre">
                <xsl:value-of select="count(albums/album)"/>
            </xsl:attribute>
            <xsl:for-each select="albums/album">
                <xsl:sort select="date/annee" order="descending" />
                <xsl:variable name="album" as="" select="current()"/>
                <nom><xsl:value-of select="$album/titre"/></nom>
            </xsl:for-each>
        </liste>
    </xsl:template>
</xsl:stylesheet>