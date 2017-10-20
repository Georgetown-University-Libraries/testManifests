<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" version="1.0"
    xmlns:ns2="http://www.w3.org/1999/xlink"
    xmlns:ead="urn:isbn:1-931666-22-9">
    <xsl:output method="text" encoding="UTF-8" media-type="text/plain"/>
    <xsl:template match="/ead:ead">
    {
        "@context": "http://iiif.io/api/presentation/2/context.json",
        "@type":"sc:Manifest",
        "logo": "https://repository.library.georgetown.edu/themes/Mirage2/images/digitalgeorgetown-logo-small-inverted.png",
        <xsl:apply-templates select="ead:archdesc"/>
        "structures": [
        <xsl:apply-templates select="//ead:archdesc" mode="range"/>
        <xsl:apply-templates select="//ead:archdesc/ead:dsc/ead:c01" mode="range"/>
        <xsl:apply-templates select="//ead:archdesc/ead:dsc//ead:c02" mode="range"/>
        <xsl:apply-templates select="//ead:archdesc/ead:dsc//ead:c03" mode="range"/>
        ],
        "sequences": [
        {
            "@id": "https://repository-dev.library.georgetown.edu/ead", 
            "@type": "sc:Sequence", 
            "canvases": [
                <xsl:apply-templates select="//ead:dao"/>
            ]
        }
        ]
    }
    </xsl:template>
    
    <xsl:template match="ead:archdesc" mode="range">
    {
        "label":"Range Top",
        "@id":"https://repository-dev.library.georgetown.edu/loris/#rangeTop",
        "viewingHint":"top",
        "@type":"sc:Range",
        "ranges": [
            <xsl:apply-templates select="ead:dsc/ead:c01" mode="rangeref"/>
        ]
    }       
    </xsl:template>

    <xsl:template match="ead:c01|ead:c02|ead:c03" mode="rangeref">
        <xsl:if test="position()>1">,</xsl:if>
        <xsl:text>"https://repository-dev.library.georgetown.edu/loris/#</xsl:text>
        <xsl:value-of select="@id"/>
        <xsl:text>"</xsl:text>
    </xsl:template>
    
    <xsl:template match="*|@*|text()" mode="cleantext">
        <xsl:variable name="cur" select="."/>
        <xsl:variable name="quote">"</xsl:variable>
        <xsl:variable name="val" select="translate(normalize-space($cur),$quote,'')"/>
        <xsl:value-of select="$val"/>
    </xsl:template>

    <xsl:template match="ead:c01|ead:c02|ead:c03" mode="label">
        <xsl:variable name="val">
            <xsl:apply-templates select="ead:did/ead:unittitle" mode="cleantext"/>            
        </xsl:variable>
        <xsl:choose>
            <xsl:when test="$val!=''">
                <xsl:value-of select="$val"/>
            </xsl:when>
            <xsl:when test="@level">
                <xsl:value-of select="@level"/>
                <xsl:if test="ead:did/ead:physdesc/ead:extent">
                    <xsl:text>, </xsl:text>
                    <xsl:apply-templates select="ead:did/ead:physdesc/ead:extent" mode="cleantext"/> 
                </xsl:if>
                <xsl:if test="ead:did/ead:unitdate">
                    <xsl:text>, </xsl:text>
                    <xsl:apply-templates select="ead:did/ead:unitdate" mode="cleantext"/> 
                </xsl:if>
            </xsl:when>
            <xsl:otherwise>Label</xsl:otherwise>
        </xsl:choose>       
    </xsl:template>
    
    <xsl:template match="ead:c01|ead:c02|ead:c03" mode="range">
    ,{
        "label":"<xsl:apply-templates select="." mode="label"/>",
        "@id":"https://repository-dev.library.georgetown.edu/loris/#<xsl:value-of select="@id"/>",
        "@type":"sc:Range",
        <xsl:choose>
            <xsl:when test="ead:c02|ead:c03">
                "ranges": [
                <xsl:apply-templates select="ead:c02|ead:c03" mode="rangeref"/>
                ]                
            </xsl:when>
            <xsl:otherwise>
                "canvases": [
                <xsl:for-each select="ead:dao">
                    <xsl:if test="position()>1">,</xsl:if>
                    <xsl:text>"https://repository-dev.library.georgetown.edu/loris/#C</xsl:text>
                    <xsl:value-of select="generate-id(.)"/>
                    <xsl:text>"</xsl:text>
                </xsl:for-each>
                ]                
            </xsl:otherwise>
        </xsl:choose>
    }       
    </xsl:template>
    
    <xsl:template match="ead:archdesc">
        "label":"<xsl:apply-templates select="ead:did/ead:unittitle/text()" mode="cleantext"/>",
        "description":"<xsl:apply-templates select="ead:scopecontent" mode="cleantext"/>",
        "metadata": [
            <xsl:apply-templates select="ead:did/ead:unitid" mode="metadata">
                <xsl:with-param name="label">Identifier</xsl:with-param>
            </xsl:apply-templates>
        ],
        <!-- License must contain a URL
            "license": "...",
        -->
        "attribution": "<xsl:apply-templates select="ead:userestrict" mode="cleantext"/>",
        "@id":"https://repository-dev.library.georgetown.edu/<xsl:value-of select="ead:did/ead:unitid/text()"/>>",
    </xsl:template>
     
    <xsl:template match="text()|@*|*" mode="metadata">
        <xsl:param name="label"/>
        <xsl:variable name="val" select="."/>
        {
            "label": "<xsl:value-of select="$label"/>",
            "value": "<xsl:apply-templates select="$val" mode="cleantext"/>"
        }
    </xsl:template> 
     
    <xsl:template match="ead:dao">
    {
        "@id": "https://repository-dev.library.georgetown.edu/loris/#C<xsl:value-of select="generate-id(.)"/>", 
        "@type": "sc:Canvas", 
        "height": 1536,
        "width": 2048, 
        "label": "<xsl:value-of select="substring-after(@ns2:href,'handle/')"/>", 
        "images": [
        {
            "@context": "http://iiif.io/api/presentation/2/context.json", 
            "@id": "https://repository-dev.library.georgetown.edu/loris", 
            "@type": "oa:Annotation", 
            "motivation": "sc:painting", 
            "on": "https://repository-dev.library.georgetown.edu/ead", 
            "resource": {
            <xsl:choose>
                <xsl:when test="starts-with(@ns2:href,'https://repository.library.georgetown.edu/bitstream')">
                    "@id": "https://repository-dev.library.georgetown.edu/loris/ead/lily1.jpg/full/full/0/default.jpg", 
                    "@type": "dctypes:Image", 
                    "format": "image/jpeg", 
                    "height": 1536,
                    "width": 2048,                        
                    "service": {
                        "@context": "http://iiif.io/api/image/2/context.json", 
                        "@id": "https://repository-dev.library.georgetown.edu/loris/ead/lily1.jpg", 
                        "profile": "http://iiif.io/api/image/2/level2.json"
                    }                   
                </xsl:when>
                <xsl:otherwise>
                    "@id": "https://<xsl:value-of select="@ns2:href"/>/full/full/0/default.jpg", 
                    "@type": "dctypes:Image", 
                    "format": "image/jpeg", 
                    "height": 1536,
                    "width": 2048,                        
                    "service": {
                        "@context": "http://iiif.io/api/image/2/context.json", 
                        "@id": "<xsl:value-of select="@ns2:href"/>", 
                        "profile": "http://iiif.io/api/image/2/level2.json"
                    }                   
                </xsl:otherwise>
            </xsl:choose>   
            }
        }
        ]
    }
    <xsl:if test="position()!=last()">,</xsl:if>
    </xsl:template>
</xsl:stylesheet>
