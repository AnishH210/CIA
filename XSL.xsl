<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">		

	<html>
	<head>
	<style>

	body {
	background: #16a085;
	color: #fffcf2;
	font-size: 40px;
	margin-top: 50px;
	}

	table, th, td {
	width: 100%
	margin: auto;
	border: 1px solid blue;
	border-collapse: collapse;
	text-align: center;
	font-size: 25px;
	table-layout: fixed;
	background: black;
	color: white;
	margin-top: 50px;
	}

	th{
	color: #ff00ff
	}

	table.center {
	margin-left: auto;
	margin-right: auto;
	}

	</style>
	</head>	
		  <body>
		  <h2 align="center">Employee Management System</h2>
		  <table class="center" border="1" align="center">
		  <tr bgcolor="black">
		  <th>ID</th>
		  <th>Name</th>
		  <th>Age</th>
		  <th>Salary</th>
		  <th>Email</th>
		  <th>Mobnum</th>
		  <th>Designation</th>
		  <th>Promotio</th>
		 </tr>
		 
		 <xsl:for-each select="Company/Employee">
		 
		 <tr>
		 <td><xsl:value-of select ="ID"/></td>
		 <td><xsl:value-of select ="Emp-name"/></td>
		 <td><xsl:value-of select ="Emp-age"/></td>
		 <td><xsl:value-of select ="Emp-salary"/></td>
		 <td><xsl:value-of select ="Emp-emailid"/></td>
		 <td><xsl:value-of select ="Emp-phonenum"/></td>
		 <td><xsl:value-of select ="Emp-designation"/></td>
		 <xsl:choose>
		 <xsl:when test="Emp-age>=50">
		 <td>Associate Project Manager</td>
		  </xsl:when>
		  <xsl:when test="Emp-age>=40">
		 <td>Project Manager</td>
		  </xsl:when>
		  <xsl:when test="49>=Emp-age">
		 <td>Team Leader</td>
		  </xsl:when>
		  <xsl:otherwise>
		 <td>Developer</td>
		  </xsl:otherwise>
		  </xsl:choose>
		 </tr>
		 </xsl:for-each>
		 </table>
		 </body>
		 </html>
	</xsl:template>
</xsl:stylesheet>