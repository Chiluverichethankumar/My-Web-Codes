<xsl:stylesheet version="1.0"
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/data">

    <html>
         <body> 
               <h1>Student data</h1>
                    <table border="1">
                            <tr bgcolor="lightblue">
                                  <th>firstname</th>
                                   <th>lastname</th>
                                   <th>age</th>
                             </tr>

                          <xsl:for-each select="student">
                             <tr>
                                <td><xsl:value-of select="firstname"/></td>
                                 <td><xsl:value-of select="lastname"/></td>
                                <td><xsl:value-of select="age"/></td>
                            </tr>
                         </xsl:for-each>


                    </table>
         </body>
    </html> 


</xsl:template>
</xsl:stylesheet>