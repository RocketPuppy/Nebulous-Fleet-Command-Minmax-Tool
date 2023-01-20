<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    version="2.0"
    exclude-result-prefixes="xs">
    <xsl:output method="xml" omit-xml-declaration="yes" indent="yes"/>
    <xsl:include href="./sprinter-dc-board.xsl" />
    <xsl:include href="./raines-dc-board.xsl" />
    <xsl:include href="./keystone-dc-board.xsl" />
    <xsl:include href="./vauxhall-dc-board.xsl" />
    <xsl:include href="./axford-dc-board.xsl" />
    <xsl:include href="./solomon-dc-board.xsl" />
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
                    <xsl:apply-templates select="//Ships/ShipBattleReport" mode="details"></xsl:apply-templates>
                    <div class='divider-large'></div>
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
        <div class="ship">
            <xsl:attribute name="data-ship-id">
                <xsl:value-of select="../../AccountId"></xsl:value-of>-<xsl:value-of select="position()"></xsl:value-of>
            </xsl:attribute>
            <h4>
                <xsl:value-of select="HullString"></xsl:value-of>
                <xsl:text> &#x2010; </xsl:text>
                <xsl:value-of select="ShipName"></xsl:value-of>
            </h4>
            <div class="summary">
                <div class="dc-board">
                    <xsl:choose>
                        <xsl:when test="./HullKey = 'Stock/Sprinter Corvette'">
                            <xsl:call-template name="sprinter-dc-board">
                                <xsl:with-param name="parts" select="PartStatus/PartDamage" />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Raines Frigate'">
                            <xsl:call-template name="raines-dc-board">
                                <xsl:with-param name="parts" select="PartStatus/PartDamage" />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Keystone Destroyer'">
                            <xsl:call-template name="keystone-dc-board">
                                <xsl:with-param name="parts" select="PartStatus/PartDamage" />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Vauxhall Light Cruiser'">
                            <xsl:call-template name="vauxhall-dc-board">
                                <xsl:with-param name="parts" select="PartStatus/PartDamage" />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Axford Heavy Cruiser'">
                            <xsl:call-template name="axford-dc-board">
                                <xsl:with-param name="parts" select="PartStatus/PartDamage" />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Solomon Battleship'">
                            <xsl:call-template name="solomon-dc-board">
                                <xsl:with-param name="parts" select="PartStatus/PartDamage" />
                            </xsl:call-template>
                        </xsl:when>
                    </xsl:choose>
                </div>
                <div class="stats">
                    <xsl:apply-templates select="." mode="elimination-status"></xsl:apply-templates>
                    <xsl:apply-templates select="." mode="basic-stats"></xsl:apply-templates>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="ShipBattleReport" mode="details">
        <div class="ship details hidden">
            <xsl:attribute name="data-ship-id">
                <xsl:value-of select="../../AccountId"></xsl:value-of>-<xsl:value-of select="count(../ShipBattleReport[. = current()]/preceding-sibling::*)+1"></xsl:value-of>
            </xsl:attribute>
            <div class="summary">
                <div class="dc-board">
                    <xsl:choose>
                        <xsl:when test="./HullKey = 'Stock/Sprinter Corvette'">
                            <xsl:call-template name="sprinter-dc-board">
                                <xsl:with-param name="parts" select="PartStatus/PartDamage" />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Raines Frigate'">
                            <xsl:call-template name="raines-dc-board">
                                <xsl:with-param name="parts" select="PartStatus/PartDamage" />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Keystone Destroyer'">
                            <xsl:call-template name="keystone-dc-board">
                                <xsl:with-param name="parts" select="PartStatus/PartDamage" />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Vauxhall Light Cruiser'">
                            <xsl:call-template name="vauxhall-dc-board">
                                <xsl:with-param name="parts" select="PartStatus/PartDamage" />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Axford Heavy Cruiser'">
                            <xsl:call-template name="axford-dc-board">
                                <xsl:with-param name="parts" select="PartStatus/PartDamage" />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Solomon Battleship'">
                            <xsl:call-template name="solomon-dc-board">
                                <xsl:with-param name="parts" select="PartStatus/PartDamage" />
                            </xsl:call-template>
                        </xsl:when>
                    </xsl:choose>
                </div>
                <div class="stats">
                    <h2>
                        [<xsl:value-of select="HullString"></xsl:value-of>]
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="ShipName"></xsl:value-of>
                    </h2>
                    <xsl:apply-templates select="." mode="elimination-status"></xsl:apply-templates>
                    <xsl:apply-templates select="." mode="basic-stats"></xsl:apply-templates>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="ShipBattleReport" mode="elimination-status">
        <xsl:choose>
            <xsl:when test="Eliminated = 'Destroyed'">
                <h5 class="elimination destroyed">
                    Destroyed&#x00A0;at
                    <span class="timestamp"><xsl:value-of select="EliminatedTimestamp"></xsl:value-of></span>
                </h5>
            </xsl:when>
            <xsl:when test="Eliminated = 'Evacuated'">
                <h5 class="elimination evacuated">
                    Evacuated&#x00A0;at
                    <span class="timestamp"><xsl:value-of select="EliminatedTimestamp"></xsl:value-of></span>
                </h5>
            </xsl:when>
            <xsl:when test="Eliminated = 'Retired'">
                <h5 class="elimination retired">
                    Withdrawn&#x00A0;at
                    <span class="timestamp"><xsl:value-of select="EliminatedTimestamp"></xsl:value-of></span>
                </h5>
            </xsl:when>
            <xsl:when test="WasDefanged = 'true'">
                <h5 class="elimination defanged">
                    No&#x00A0;Offensive&#x00A0;Ability&#x00A0;at
                    <span class="timestamp"><xsl:value-of select="DefangedTimestamp"></xsl:value-of></span>
                </h5>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="ShipBattleReport" mode="basic-stats">
        <dl>
            <dt class="stat crew-status">Crew&#x00A0;Status</dt>
            <dd>
                <xsl:value-of select="FinalCrew"></xsl:value-of>&#x00A0;/&#x00A0;<xsl:value-of select="OriginalCrew"></xsl:value-of>
            </dd>
            <dt class="stat damage-received">Damage&#x00A0;Received</dt>
            <dd>
                <xsl:value-of select="format-number(TotalDamageReceived, '###,###')"></xsl:value-of>
            </dd>
            <dt class="stat damage-repaired">Damage&#x00A0;Repaired</dt>
            <dd>
                <xsl:value-of select="format-number(TotalDamageRepaired, '###,###')"></xsl:value-of>
            </dd>
            <dt class="stat damage-dealt">Damage&#x00A0;Dealt</dt>
            <dd>
                <xsl:value-of select="format-number(TotalDamageDealt, '###,###')"></xsl:value-of>
            </dd>
            <dt class="stat combat-power">Combat&#x00A0;Power</dt>
            <dd>
                <xsl:value-of select="format-number(OriginalPointCost, '###,###')"></xsl:value-of>
            </dd>
            <dt class="stat distance-travelled">Distance&#x00A0;Travelled</dt>
            <dd>
                <xsl:value-of select="format-number(TotalDistanceTravelled div 100, '###,###.##')"></xsl:value-of>
                <xsl:text>&#x00A0;km</xsl:text>
            </dd>
            <xsl:choose>
                <xsl:when test="AmmoPercentageExpended[@xsi:nil='true']">
                </xsl:when>
                <xsl:otherwise>
                    <dt class="stat ammo-spent">Combat&#x00A0;Load&#x00A0;Expended</dt>
                    <dd>
                        <xsl:value-of select="format-number(AmmoPercentageExpended, '###%')"></xsl:value-of>
                    </dd>
                </xsl:otherwise>
            </xsl:choose>
            <dt class="stat time-in-contact">Time&#x00A0;In&#x00A0;Contact</dt>
            <dd>
                <xsl:value-of select="TotalTimeInContact"></xsl:value-of>
            </dd>
        </dl>
    </xsl:template>
</xsl:stylesheet>