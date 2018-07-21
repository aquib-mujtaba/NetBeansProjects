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
                        <th>EMPNO</th>
                        <th>AGE</th>
                        <th>DEPTNO</th>
                        
                    </tr>
                    <xsl:for-each select="ErevMax/Trainee">
                    <xsl:if test="AGE &gt;'13'"> 
                    <!--<xsl:if test="AGE ='15'">-->
                    <!--<xsl:if test="AGE &gt;='13'">-->
                    <tr>
                        <td><xsl:value-of select="ENAME"/></td>
                        <td><xsl:value-of select="GENDER"/></td>
                        <td><xsl:value-of select="@EMPNO"/></td>
                        <td><xsl:value-of select="AGE"/></td>
                        <td><xsl:value-of select="DEPNO"/></td>
                    </tr>      
                    </xsl:if>              
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
