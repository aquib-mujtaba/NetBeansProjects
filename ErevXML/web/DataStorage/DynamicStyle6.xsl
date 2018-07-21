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
                        <xsl:choose>
                            <xsl:when test="AGE &lt;'14'"> 
                                <!--<xsl:if test="AGE ='15'">-->
                                <!--<xsl:if test="AGE &gt;='13'">-->
                                <tr>
                                    <td>
                                        <xsl:value-of select="ENAME"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="GENDER"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="@EMPNO"/>
                                    </td>
                                    <td style='background-color:yellow'>
                                        <xsl:value-of select="AGE"/>
                                    </td>
                                    <td style='background-color:green'>
                                        <xsl:value-of select="DEPNO"/>
                                    </td>
                                </tr>   
                            </xsl:when>
                                    <xsl:when test="AGE ='14'"> 
                                <!--<xsl:if test="AGE ='15'">-->
                                <!--<xsl:if test="AGE &gt;='13'">-->
                                <tr>
                                    <td>
                                        <xsl:value-of select="ENAME"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="GENDER"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="@EMPNO"/>
                                    </td>
                                    <td style='background-color:pink'>
                                        <xsl:value-of select="AGE"/>
                                    </td>
                                    <td style='background-color:cyan'>
                                        <xsl:value-of select="DEPNO"/>
                                    </td>
                                </tr>   
                            </xsl:when>
                            <xsl:otherwise>
                                <tr>
                                    <td>
                                        <xsl:value-of select="ENAME"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="GENDER"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="@EMPNO"/>
                                    </td>
                                    <td style='background-color:blue'>
                                        <xsl:value-of select="AGE"/>
                                    </td>
                                   <td style='background-color:red'>
                                        <xsl:value-of select="DEPNO"/>
                                    </td>
                                </tr>   
                            </xsl:otherwise>
                        </xsl:choose>         
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
