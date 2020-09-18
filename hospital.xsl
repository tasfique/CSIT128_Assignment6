<?xml version="1.0" encoding="UTF-8"?>
 <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
 <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
 <xsl:template match="/hospitalList">
 <html>
 <head>
 <title>INTI Hospital</title>
 </head>
 <body>
 <h1>INTI Hospital</h1>
 <h2>Patient</h2>
 <ul>
 	
 <table border="1">
      <tr bgcolor="#9acd32">
        <th>Gender</th>
        <th>Medical Number</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Medications</th>
        <th>Doctors</th>
      </tr>

	<xsl:for-each select="patient">
		<xsl:sort select="lastName"/>
		<tr>
			<td>
				<xsl:value-of select="@gender"/>
			</td>
			<td>
				<xsl:value-of select="medicalNumber"/>
			</td>
			<td>
				<xsl:value-of select="firstName"/>
			</td>
			<td>
				<xsl:value-of select="lastName"/>
			</td>
			
			
			<td>
				<xsl:for-each select="medication_list/medicines">
					<xsl:value-of select="@IDREF"/>
					<xsl:if test="position()!=last()">
					<xsl:text>, </xsl:text>	
					</xsl:if>
				</xsl:for-each>
			</td>
			
			
			<td>
				<xsl:for-each select="doctor_list/doctors">

					<xsl:value-of select="@IDREF"/>
					<xsl:if test="position()!=last()">
					<xsl:text>, </xsl:text>	
					</xsl:if>	
					
				</xsl:for-each>
			</td>

		</tr>

	</xsl:for-each>
 </table>
 
 
 
 </ul>
 
 <h2>Doctors</h2>
 <ul>
 	
 <table border="1">
      <tr bgcolor="#9932CC">
      	<th>ID</th>
        	<th>Registration Number</th>
        	<th>Full Name</th>
        	<th>Specialisation</th>
      </tr>

	<xsl:for-each select="doctor">
		<xsl:sort select="doctorRegisterNumber"/>
		<tr>
			<td>
				<xsl:value-of select="@ID"/>
			</td>
			<td>
				<xsl:value-of select="doctorRegisterNumber"/>
			</td>
			<td>
				<xsl:value-of select="DfirstName"/>
				<xsl:text> </xsl:text>
				<xsl:value-of select="DlastName"/>
			</td>
			<td>
				<xsl:value-of select="specialisation"/>
			</td>
		</tr>

	</xsl:for-each>
 </table>

 </ul>
 
  <h2>Medicines</h2>
 <ul>
 	
 <table border="1">
      <tr bgcolor="#BDB76B">
        	<th>ID</th>
        	<th>Medicine's Name</th>
        	<th>Company</th>
       	<th>Registration Number</th>
      </tr>

	<xsl:for-each select="medicine">
		<xsl:sort select="registrationNumber" order="descending"/>
		<tr>
			<td>
				<xsl:value-of select="@ID"/>
			</td>
			<td>
				<xsl:value-of select="medicineName"/>
			</td>
			<td>
				<xsl:value-of select="company"/>
			</td>
			<td>
				<xsl:value-of select="registrationNumber"/>098 .
				  
			</td>
		</tr>

	</xsl:for-each>
 </table>
 

 </ul>
 
 </body>
 </html>
 </xsl:template>
</xsl:stylesheet>