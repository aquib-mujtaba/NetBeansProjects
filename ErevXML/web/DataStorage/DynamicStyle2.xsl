<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>First Dynamic Style Sheet</title>
            </head>
            <body>
                <h2>
                    Trainees Section
                </h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>ENAME</th>
                        <th>GENDER</th>
                    </tr>
                    <tr>
                        <td><xsl:value-of select="ErevMax/Trainee/ENAME"/></td>
                        <td><xsl:value-of select="ErevMax/Trainee/GENDER"/></td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
