<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>A blog exercise</title>
            </head>
            <body bgcolor="#9acd32">
                <h1>My first XML Blog</h1>
                <xsl:for-each select="blog/post">
                    <div style="background-color: lightgreen; padding: 0.5em; margin-bottom: 1em;">
                        <h3 bgcolor="blue"><xsl:value-of select="title"/></h3>
                        <p>Author: <xsl:value-of select="author"/></p>
                        <p>Date: <xsl:value-of select="date"/></p>
                        <p><xsl:value-of select="content"/></p>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>