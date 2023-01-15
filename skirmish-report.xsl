<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns="http://www.w3.org/1999/xhtml"
    version="2.0"
    exclude-result-prefixes="xs">
    <xsl:output method="xml" omit-xml-declaration="yes" indent="yes"/>
    <xsl:template match="/">
        <xsl:apply-templates select="FullAfterActionReport"/>
    </xsl:template>
    <xsl:template match="FullAfterActionReport">
        <html lang="en">
            <head>
            </head>
            <body>
                <xsl:apply-templates select="LocalPlayerWon"></xsl:apply-templates>
                <div id="report">
                    <xsl:apply-templates select="Teams"></xsl:apply-templates>
                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="LocalPlayerWon">
        <h1>
            <span class="battle-result">
              Battle Report: 
                <xsl:choose>
                    <xsl:when test="./text() = 'true'">Victory</xsl:when>
                    <xsl:otherwise>Defeat</xsl:otherwise>
                </xsl:choose>
            </span>
            <span class="divider" />
            <span class="battle-time">
                <xsl:value-of select="//GameDuration"/>
            </span>
        </h1>
    </xsl:template>
    <xsl:template match="Teams">
        <div id="teams">
            <xsl:apply-templates select="TeamReportOfShipBattleReport"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="TeamReportOfShipBattleReport">
        <div class="team">
            <h2>
                <xsl:choose>
                    <xsl:when test="//LocalPlayerTeam = ./TeamID">Friendly Forces</xsl:when>
                    <xsl:otherwise>Enemy Forces</xsl:otherwise>
                </xsl:choose>
            </h2>
            <div class="players">
                <xsl:apply-templates select=".//AARPlayerReportOfShipBattleReport"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="AARPlayerReportOfShipBattleReport">
        <div class="player">
            <h3>
                <span class="name">
                    <xsl:value-of select="PlayerName"></xsl:value-of>
                </span>
                <div class="colors">
                    <xsl:attribute name="style">
                            background:
                        <xsl:apply-templates select="Colors/BaseColor"></xsl:apply-templates>
                    </xsl:attribute>
                    <span class="fleet-prefix">
                        <xsl:attribute name="style">
                                color:
                            <xsl:apply-templates select="Colors/StripeColor"></xsl:apply-templates>
                        </xsl:attribute>
                        <xsl:value-of select="Colors/FleetPrefix"></xsl:value-of>
                    </span>
                    <div class="stripe1">
                        <xsl:attribute name="style">
                            background:
                            <xsl:apply-templates select="Colors/StripeColor"></xsl:apply-templates>
                        </xsl:attribute>
                        &#x00A0;
                    </div>
                    <div class="stripe2">
                        <xsl:attribute name="style">
                            background:
                            <xsl:apply-templates select="Colors/StripeColor"></xsl:apply-templates>
                        </xsl:attribute>
                        &#x00A0;
                    </div>
                </div>
            </h3>
            <div class="ships">
                <xsl:apply-templates select="Ships/ShipBattleReport"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="BaseColor|StripeColor">
        rgba(
         <xsl:value-of select="format-number(r, '0.000%')"></xsl:value-of>,
         <xsl:value-of select="format-number(g, '0.000%')"></xsl:value-of>,
         <xsl:value-of select="format-number(b, '0.000%')"></xsl:value-of>
        )
    </xsl:template>
    <xsl:template match="ShipBattleReport">
        <h4>
            <xsl:value-of select="HullString"></xsl:value-of>
            <xsl:text> &#x2010; </xsl:text>
            <xsl:value-of select="ShipName"></xsl:value-of>
        </h4>
        <xsl:choose>
            <xsl:when test="Eliminated = 'Destroyed'">
                <h5 class="elimination destroyed">
                    Destroyed at
                    <span class="timestamp"><xsl:value-of select="EliminatedTimestamp"></xsl:value-of></span>
                </h5>
            </xsl:when>
            <xsl:when test="Eliminated = 'Evacuated'">
                <h5 class="elimination evacuated">
                    Evacuated
                    <span class="timestamp"><xsl:value-of select="EliminatedTimestamp"></xsl:value-of></span>
                </h5>
            </xsl:when>
            <xsl:when test="Eliminated = 'Retired'">
                <h5 class="elimination retired">
                    Withdrawn
                    <span class="timestamp"><xsl:value-of select="EliminatedTimestamp"></xsl:value-of></span>
                </h5>
            </xsl:when>
            <xsl:when test="WasDefanged = 'true'">
                <h5 class="elimination defanged">
                    No Offensive Ability
                    <span class="timestamp"><xsl:value-of select="WasDefangedTimestamp"></xsl:value-of></span>
                </h5>
            </xsl:when>
        </xsl:choose>
        <dl>
            <dt>Crew Status</dt>
            <dd>
                <xsl:value-of select="FinalCrew"></xsl:value-of>
                /
                <xsl:value-of select="OriginalCrew"></xsl:value-of>
            </dd>
            <dt>Damage Received</dt>
            <dd>
                <xsl:value-of select="format-number(TotalDamageReceived, '###,###')"></xsl:value-of>
            </dd>
            <dt>Damage Repaired</dt>
            <dd>
                <xsl:value-of select="format-number(TotalDamageRepaired, '###,###')"></xsl:value-of>
            </dd>
            <dt>Damage Dealt</dt>
            <dd>
                <xsl:value-of select="format-number(TotalDamageDealt, '###,###')"></xsl:value-of>
            </dd>
        </dl>
    </xsl:template>
    <!--
    <xsl:template name="millis">
        <xsl:param name="millis" as="xs:integer"/>
        <xsl:choose>
            <xsl:when test="$millis &gt; 1000">
                <xsl:value-of select="format-number($millis div 1000, '0.0')"/>
                <xsl:text>s</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="format-number($millis, '#')"/>
                <xsl:text>ms</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="version">
        <span>
            <xsl:value-of select="name"/>
        </span>
        <span>
            <xsl:call-template name="millis">
                <xsl:with-param name="millis" select="/page/millis"/>
            </xsl:call-template>
        </span>
    </xsl:template>
    <xsl:template match="identity">
        <span>
            <img class="photo" src="{photo}" alt="{name}"/>
        </span>
        <span class="name">
            <xsl:value-of select="name"/>
        </span>
        <span>
            <i>
                <xsl:attribute name="class">
                    <xsl:text>auth fa </xsl:text>
                    <xsl:choose>
                        <xsl:when test="starts-with(urn, 'urn:facebook:')">
                            <xsl:text>fa-facebook-square</xsl:text>
                        </xsl:when>
                        <xsl:when test="starts-with(urn, 'urn:google:')">
                            <xsl:text>fa-google-plus-square</xsl:text>
                        </xsl:when>
                        <xsl:when test="starts-with(urn, 'urn:github:')">
                            <xsl:text>fa-github-square</xsl:text>
                        </xsl:when>
                    </xsl:choose>
                </xsl:attribute>
                <xsl:comment>icon</xsl:comment>
            </i>
        </span>
        <span>
            <a href="{/page/links/link[@rel='rexsl:logout']/@href}">
                <i class="fa fa-sign-out"><xsl:comment>logout</xsl:comment></i>
            </a>
        </span>
    </xsl:template>
    <xsl:template match="flash">
        <div>
            <xsl:attribute name="class">
                <xsl:text>alert </xsl:text>
                <xsl:choose>
                    <xsl:when test="level = 'INFO'">
                        <xsl:text>alert-success</xsl:text>
                    </xsl:when>
                    <xsl:when test="level = 'WARNING'">
                        <xsl:text>alert-warning</xsl:text>
                    </xsl:when>
                    <xsl:when test="level = 'SEVERE'">
                        <xsl:text>alert-danger</xsl:text>
                    </xsl:when>
                </xsl:choose>
            </xsl:attribute>
            <xsl:value-of select="message"/>
        </div>
    </xsl:template>
    <xsl:template name="buttons">
        <a href="{/page/links/link[@rel='rexsl:facebook']/@href}">
            <i class="fa fa-facebook-square"><xsl:comment>facebook</xsl:comment></i>
        </a>
        <xsl:text> </xsl:text>
        <a href="{/page/links/link[@rel='rexsl:google']/@href}">
            <i class="fa fa-google-plus-square"><xsl:comment>google-plus</xsl:comment></i>
        </a>
        <xsl:text> </xsl:text>
        <a href="{/page/links/link[@rel='rexsl:github']/@href}">
            <i class="fa fa-github-square"><xsl:comment>github</xsl:comment></i>
        </a>
    </xsl:template>
    -->
</xsl:stylesheet>