<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" version="1.0"
    xmlns:ns2="http://www.w3.org/1999/xlink"
    xmlns:ead="urn:isbn:1-931666-22-9">
    <xsl:output method="text" encoding="UTF-8" media-type="text/plain"/>
    <xsl:template match="/">
    {
        "@context": "http://iiif.io/api/presentation/2/context.json",
        "description":"TBD1",
        "label":"TBD2",
        "logo": "https://repository.library.georgetown.edu/themes/Mirage2/images/digitalgeorgetown-logo-small-inverted.png",
        "license": "TBD3",
        "attribution": "TBD4",
        "@id":"https://repository-dev.library.georgetown.edu/ead1",
        "@type":"sc:Manifest",
        "metadata": [],
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
    
    <xsl:template match="ead:dao">
    {
        "@id": "https://repository-dev.library.georgetown.edu/loris/<xsl:number value="position()" format="1" />", 
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
            }
        }
        ]
    }
    <xsl:if test="position()!=last()">,</xsl:if>
    </xsl:template>
</xsl:stylesheet>
