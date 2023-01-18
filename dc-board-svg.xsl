<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:svg="http://www.w3.org/2000/svg"
    xmlns="http://www.w3.org/1999/xhtml"
    version="2.0"
    exclude-result-prefixes="xs">
    <xsl:output method="xml" omit-xml-declaration="yes" indent="yes"/>
    <xsl:template match="/svg:svg">
        <xsl:element name="xsl:stylesheet">
            <xsl:attribute name="version"><xsl:text>2.0</xsl:text></xsl:attribute>
            <xsl:attribute name="exclude-result-prefixes"><xsl:text>xs</xsl:text></xsl:attribute>
            <xsl:element name="xsl:output">
                <xsl:attribute name="method"><xsl:text>xml</xsl:text></xsl:attribute>
                <xsl:attribute name="omit-xml-declaration"><xsl:text>yes</xsl:text></xsl:attribute>
                <xsl:attribute name="indent"><xsl:text>yes</xsl:text></xsl:attribute>
            </xsl:element>
            <xsl:element name="xsl:template">
                <xsl:attribute name="name"><xsl:value-of select="@class" /></xsl:attribute>
                <xsl:element name="xsl:param">
                    <xsl:attribute name="name"><xsl:text>parts</xsl:text></xsl:attribute>
                </xsl:element>
                <xsl:copy>
                    <xsl:apply-templates select="@* | node()" />
                </xsl:copy>
            </xsl:element>

            <xsl:apply-templates select="//svg:g[@id='sockets']" mode="template"/>
        </xsl:element>
    </xsl:template>

    <!-- IdentityTransform -->
    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()" />
        </xsl:copy>
    </xsl:template>

    <xsl:template match="svg:g[@id='sockets']">
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:element name="xsl:apply-templates">
                <xsl:attribute name="select"><xsl:text>$parts</xsl:text></xsl:attribute>
                <xsl:attribute name="mode"><xsl:value-of select="//svg:svg/@class" /></xsl:attribute>
            </xsl:element>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="svg:g[@id='sockets']" mode="template">
        <xsl:element name="xsl:template">
            <xsl:attribute name="match">PartDamage</xsl:attribute>
            <xsl:attribute name="mode"><xsl:value-of select="//svg:svg/@class" /></xsl:attribute>
            <xsl:element name="xsl:variable">
                <xsl:attribute name="name">percent</xsl:attribute>
                <xsl:attribute name="select">HealthPercent</xsl:attribute>
            </xsl:element>
            <xsl:element name="xsl:choose">
                <xsl:apply-templates select="svg:rect" mode="template"></xsl:apply-templates>
            </xsl:element>
        </xsl:element>
    </xsl:template>

    <xsl:template match="svg:rect[parent::node()[@id='sockets']]" />
    <xsl:template match="svg:rect[parent::node()[@id='sockets']]" mode="template">
        <xsl:element name="xsl:when">
            <xsl:attribute name="test">Key = '<xsl:value-of select="substring(./@id, 8)"></xsl:value-of>'</xsl:attribute>
            <xsl:copy>
                <xsl:apply-templates select="@*" />
                <xsl:element name="xsl:attribute">
                    <xsl:attribute name="name">style</xsl:attribute>
                    <xsl:element name="xsl:choose">
                        <xsl:element name="xsl:when">
                            <xsl:attribute name="test">IsDestroyed = 'false'</xsl:attribute>
                            <xsl:element name="xsl:value-of">
                                <xsl:attribute name="select">concat('<xsl:value-of select="@style" />', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')</xsl:attribute>
                            </xsl:element>
                        </xsl:element>
                    </xsl:element>
                </xsl:element>
            </xsl:copy>
        </xsl:element>
    </xsl:template>

</xsl:stylesheet>