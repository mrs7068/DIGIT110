<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns="http://www.w3.org/1999/xhtml">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    
    <xsl:template match="/">
        
        <html>
            <head>
                <title>Skyrim Legends - Oblivion Crisis</title>
                <link rel="stylesheet" type="text/css" href="style.css"/>
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
        
    </xsl:template>
    
    <xsl:template match="paragraph">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
  
    <xsl:template match="QuestEvent">
        <strong>
            <xsl:apply-templates/>
        </strong>
    </xsl:template>
    
    
    <xsl:template match="QuestItem">
        <span class="QuestItem">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    
    <xsl:template match="character">
        <span class="character">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    
    <xsl:template match="epithet">
        <em>
            <xsl:apply-templates/>
        </em>
    </xsl:template>
    
    
    <xsl:template match="faction">
        <span class="{preceding::cast/faction[@id=current()/@ref]/@alignment}">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    
    <xsl:template match="location">
        <span class="location">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    
    <xsl:template match="text()">
        <xsl:value-of select="."/>
    </xsl:template>
    
</xsl:stylesheet>