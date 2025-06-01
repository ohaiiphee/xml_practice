<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
<xsl:template match="/coffee_types">
<html>
    <head>
        <title>Coffee Types</title>
    </head>
    <body style="background-color:#F4CA9C;">
    <h1 style="text-align:center;">Coffee Types</h1>
    <div style="text-align:center;">
    <img src="coffees.jpg" style="height: 500px; width: 500px;"/>
    </div>
    <xsl:for-each select="/coffee_types/coffee">
        <div style=" background-color:#D19557; border: 2px #83613E dotted; margin: 15px; padding-left: 15px;">
            <h3><xsl:value-of select="name"/></h3>
            <p><xsl:value-of select="./@rating"/> | Type: <xsl:value-of select="./@type"/></p>
            <p><strong>Description: </strong><xsl:value-of select="description"/></p>
            <p><strong>Includes milk? </strong><xsl:value-of select="has_milk"/></p>
            <p><strong>How to prepare?</strong> Add ingredients in the following order:</p>
            <ul style="list-style-type: square;"><xsl:for-each select="how_to/ingredient">
                <li><xsl:value-of select="."/>
                    <xsl:if test="./@temperature">
                        (<xsl:value-of select="./@temperature"/>)
                    </xsl:if>
                </li>
            </xsl:for-each>
            </ul>
        </div>
    </xsl:for-each>
    <div>
        <h3>Total Types of Coffee: <xsl:value-of select="count(coffee)"/></h3>      
    </div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>