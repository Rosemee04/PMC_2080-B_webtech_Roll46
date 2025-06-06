﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <body>
        <h2>Employee</h2>
        <table border="1">
          <tr bgcolor="purple">
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Nick Name</th>
            <th>Age</th>
            <th>Salary</th>
          </tr>
          <xsl:for-each select="class/employee[age&lt;'30']">
            <tr>
              <td><xsl:value-of select="@id"/></td>
              <td><xsl:value-of select="firstname"/></td>
              <td><xsl:value-of select="lastname"/></td>
              <td><xsl:value-of select="nickname"/></td>
              <td><xsl:value-of select="age"/></td>
              <td><xsl:value-of select="salary"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
