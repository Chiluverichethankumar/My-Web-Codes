<?xml version="1.0"?>
<xsl:stylesheet
	version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.w3.org/TR/REC-html40">
	<xsl:template match="/">
	<HTML>
	<BODY>
	<H1>Book Information</H1>
	<TABLE border="1">
	
<TR><TH style="color:gray">Title-of-the-book</TH><TH style="color:gray">Author-name</TH><TH style="color:gray">ISBN-number</TH><TH style="color:gray">Publications</TH><TH style="color:grey">Edition</TH><TH style="color:grey" >Price</TH></TR>
	<xsl:for-each select="book-info/books">
<TR ><TD bgcolor="cyan" style="color:red" ><xsl:value-of select="Title-of-the-book"/></TD><TD bgcolor="pink" style="color:green;text-transform:capitalize;font-styl2:bold"><xsl:value-of select="Author-name"/></TD>

<TD bgcolor="white" style="color:blue"><xsl:value-of select="ISBN-number" /></TD><TD bgcolor="purple" style="color:yellow"><xsl:value-of select="Publications" /></TD>
<TD bgcolor="black" style="color:white"><xsl:value-of select="Edition"/></TD><TD bgcolor="white" style="color:black"><xsl:value-of select="Price"/></TD></TR></xsl:for-each></TABLE></BODY></HTML></xsl:template>
</xsl:stylesheet>

