<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    version="2.0"
    exclude-result-prefixes="xs">
    <xsl:output method="xml" omit-xml-declaration="yes" indent="yes"/>
    <xsl:include href="./resources/ships/sprinter-dc-board.xsl" />
    <xsl:include href="./resources/ships/raines-dc-board.xsl" />
    <xsl:include href="./resources/ships/keystone-dc-board.xsl" />
    <xsl:include href="./resources/ships/vauxhall-dc-board.xsl" />
    <xsl:include href="./resources/ships/axford-dc-board.xsl" />
    <xsl:include href="./resources/ships/solomon-dc-board.xsl" />
    <xsl:include href="./resources/ships/shuttle-dc-board.xsl" />
    <xsl:include href="./resources/ships/ocello-dc-board.xsl" />
    <xsl:include href="./resources/ships/tug-dc-board.xsl" />
    <xsl:include href="./resources/ships/cargo-feeder-dc-board.xsl" />
    <xsl:include href="./resources/ships/container-freighter-dc-board.xsl" />
    <xsl:include href="./resources/ships/bulk-freighter-dc-board.xsl" />
    <xsl:include href="./resources/ships/levy-dc-board.xsl" />
    <xsl:include href="./resources/ships/ore-carrier-dc-board.xsl" />

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
                    <xsl:apply-templates select="//Craft/CraftBattleReport" mode="details"></xsl:apply-templates>
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
                <xsl:call-template name="timestamp-from-seconds">
                    <xsl:with-param name="seconds" select="//GameDuration" />
                </xsl:call-template>
            </span>
        </h1>
    </xsl:template>

    <xsl:template match="Teams">
        <div id="teams">
            <xsl:apply-templates select="TeamReportOfShipBattleReportCraftBattleReport"></xsl:apply-templates>
        </div>
    </xsl:template>

    <xsl:template match="TeamReportOfShipBattleReportCraftBattleReport">
        <div class="team">
            <h2>
                <xsl:choose>
                    <xsl:when test="//LocalPlayerTeam = ./TeamID">Friendly Forces</xsl:when>
                    <xsl:otherwise>Enemy Forces</xsl:otherwise>
                </xsl:choose>
            </h2>
            <div class="players">
                <xsl:apply-templates select=".//AARPlayerReportOfShipBattleReportCraftBattleReport"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="AARPlayerReportOfShipBattleReportCraftBattleReport">
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
            <div class="craft">
                <xsl:apply-templates select="Craft/CraftBattleReport"></xsl:apply-templates>
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
                <xsl:value-of select="../../PlayerID"></xsl:value-of>-<xsl:value-of select="position()"></xsl:value-of>
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
                                <xsl:with-param name="ship-report" select="." />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Raines Frigate'">
                            <xsl:call-template name="raines-dc-board">
                                <xsl:with-param name="ship-report" select="." />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Keystone Destroyer'">
                            <xsl:call-template name="keystone-dc-board">
                                <xsl:with-param name="ship-report" select="." />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Vauxhall Light Cruiser'">
                            <xsl:call-template name="vauxhall-dc-board">
                                <xsl:with-param name="ship-report" select="." />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Axford Heavy Cruiser'">
                            <xsl:call-template name="axford-dc-board">
                                <xsl:with-param name="ship-report" select="." />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Solomon Battleship'">
                            <xsl:call-template name="solomon-dc-board">
                                <xsl:with-param name="ship-report" select="." />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Shuttle'">
                            <xsl:call-template name="shuttle-dc-board">
                                <xsl:with-param name="ship-report" select="." />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Ocello Cruiser'">
                            <xsl:call-template name="ocello-dc-board">
                                <xsl:with-param name="ship-report" select="." />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Tugboat'">
                            <xsl:call-template name="tug-dc-board">
                                <xsl:with-param name="ship-report" select="." />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Bulk Feeder'">
                            <xsl:call-template name="cargo-feeder-dc-board">
                                <xsl:with-param name="ship-report" select="." />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Container Hauler Refit'">
                            <xsl:call-template name="container-freighter-dc-board">
                                <xsl:with-param name="ship-report" select="." />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Bulk Hauler'">
                            <xsl:call-template name="bulk-freighter-dc-board">
                                <xsl:with-param name="ship-report" select="." />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Levy Escort Carrier'">
                            <xsl:call-template name="levy-dc-board">
                                <xsl:with-param name="ship-report" select="." />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Ore Carrier'">
                            <xsl:call-template name="ore-carrier-dc-board">
                                <xsl:with-param name="ship-report" select="." />
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
        <div>
            <xsl:attribute name="data-ship-id">
                <xsl:value-of select="../../PlayerID"></xsl:value-of>-<xsl:value-of select="count(../ShipBattleReport[. = current()]/preceding-sibling::*)+1"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="class">
                ship details hidden <xsl:if test="./HullKey = 'Stock/Container Hauler Refit'">lineship</xsl:if>
            </xsl:attribute>
            <div class="summary">
                <div class="dc-board">
                    <xsl:choose>
                        <xsl:when test="./HullKey = 'Stock/Sprinter Corvette'">
                            <xsl:call-template name="sprinter-dc-board">
                                <xsl:with-param name="ship-report" select="." />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Raines Frigate'">
                            <xsl:call-template name="raines-dc-board">
                                <xsl:with-param name="ship-report" select="." />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Keystone Destroyer'">
                            <xsl:call-template name="keystone-dc-board">
                                <xsl:with-param name="ship-report" select="." />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Vauxhall Light Cruiser'">
                            <xsl:call-template name="vauxhall-dc-board">
                                <xsl:with-param name="ship-report" select="." />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Axford Heavy Cruiser'">
                            <xsl:call-template name="axford-dc-board">
                                <xsl:with-param name="ship-report" select="." />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Solomon Battleship'">
                            <xsl:call-template name="solomon-dc-board">
                                <xsl:with-param name="ship-report" select="." />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Shuttle'">
                            <xsl:call-template name="shuttle-dc-board">
                                <xsl:with-param name="ship-report" select="." />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Ocello Cruiser'">
                            <xsl:call-template name="ocello-dc-board">
                                <xsl:with-param name="ship-report" select="." />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Tugboat'">
                            <xsl:call-template name="tug-dc-board">
                                <xsl:with-param name="ship-report" select="." />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Bulk Feeder'">
                            <xsl:call-template name="cargo-feeder-dc-board">
                                <xsl:with-param name="ship-report" select="." />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Container Hauler Refit'">
                            <xsl:call-template name="container-freighter-dc-board">
                                <xsl:with-param name="ship-report" select="." />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Bulk Hauler'">
                            <xsl:call-template name="bulk-freighter-dc-board">
                                <xsl:with-param name="ship-report" select="." />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Levy Escort Carrier'">
                            <xsl:call-template name="levy-dc-board">
                                <xsl:with-param name="ship-report" select="." />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="./HullKey = 'Stock/Ore Carrier'">
                            <xsl:call-template name="ore-carrier-dc-board">
                                <xsl:with-param name="ship-report" select="." />
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
                <div class="stats">
                    <xsl:apply-templates select="." mode="efficiency-ratings" />
                </div>
            </div>
            <xsl:apply-templates select="EngagementHistory" />
            <xsl:apply-templates select="AntiShip" />
            <xsl:apply-templates select="Strike" />
            <xsl:apply-templates select="Sensors" />
            <xsl:apply-templates select="Defenses" />
            <xsl:apply-templates select="Engineering" />
        </div>
    </xsl:template>

    <xsl:template match="ShipBattleReport" mode="elimination-status">
        <xsl:choose>
            <xsl:when test="Eliminated = 'Destroyed'">
                <h5 class="elimination destroyed">
                    Eliminated&#x00A0;at
                    <span class="timestamp">
                        <xsl:call-template name="timestamp-from-seconds">
                            <xsl:with-param name="seconds" select="EliminatedTimestamp" />
                        </xsl:call-template>
                    </span>
                </h5>
            </xsl:when>
            <xsl:when test="Eliminated = 'Evacuated'">
                <h5 class="elimination evacuated">
                    Evacuated&#x00A0;at
                    <span class="timestamp">
                        <xsl:call-template name="timestamp-from-seconds">
                            <xsl:with-param name="seconds" select="EliminatedTimestamp" />
                        </xsl:call-template>
                    </span>
                </h5>
            </xsl:when>
            <xsl:when test="Eliminated = 'Retired'">
                <h5 class="elimination retired">
                    Surrendered&#x00A0;at
                    <span class="timestamp">
                        <xsl:call-template name="timestamp-from-seconds">
                            <xsl:with-param name="seconds" select="EliminatedTimestamp" />
                        </xsl:call-template>
                    </span>
                </h5>
            </xsl:when>
            <xsl:when test="Eliminated = 'Withdrew'">
                <h5 class="elimination withdrew">
                    Withdrawn&#x00A0;at
                    <span class="timestamp">
                        <xsl:call-template name="timestamp-from-seconds">
                            <xsl:with-param name="seconds" select="EliminatedTimestamp" />
                        </xsl:call-template>
                    </span>
                </h5>
            </xsl:when>
            <xsl:when test="WasDefanged = 'true'">
                <h5 class="elimination defanged">
                    No&#x00A0;Offensive&#x00A0;Ability&#x00A0;at
                    <span class="timestamp">
                        <xsl:call-template name="timestamp-from-seconds">
                            <xsl:with-param name="seconds" select="DefangedTimestamp" />
                        </xsl:call-template>
                    </span>
                </h5>
            </xsl:when>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="ShipBattleReport" mode="basic-stats">
        <dl class="basic-stats">
            <div class="stat crew-status">
                <dt>Crew&#x00A0;Status</dt>
                <dd>
                    <xsl:value-of select="FinalCrew"></xsl:value-of>&#x00A0;/&#x00A0;<xsl:value-of
                        select="OriginalCrew"></xsl:value-of>
                </dd>
            </div>
            <div class="stat damage-received">
                <dt>Damage&#x00A0;Received</dt>
                <dd>
                    <xsl:value-of select="format-number(TotalDamageReceived, '###,###')"></xsl:value-of>
                </dd>
            </div>
            <div class="stat damage-repaired">
                <dt>Damage&#x00A0;Repaired</dt>
                <dd>
                    <xsl:value-of select="format-number(TotalDamageRepaired, '###,###')"></xsl:value-of>
                </dd>
            </div>
            <div class="stat damage-dealt">
                <dt>Damage&#x00A0;Dealt</dt>
                <dd>
                    <xsl:value-of select="format-number(TotalDamageDealt, '###,###')"></xsl:value-of>
                </dd>
            </div>
            <div class="stat combat-power">
                <dt>Combat&#x00A0;Power</dt>
                <dd>
                    <xsl:value-of select="format-number(OriginalPointCost, '###,###')"></xsl:value-of>
                </dd>
            </div>
            <div class="stat distance-travelled">
                <dt>Distance&#x00A0;Travelled</dt>
                <dd>
                    <xsl:value-of
                        select="format-number(TotalDistanceTravelled div 100, '###,###.##')"></xsl:value-of>
                    <xsl:text>&#x00A0;km</xsl:text>
                </dd>
            </div>
            <xsl:choose>
                <xsl:when test="AmmoPercentageExpended[@xsi:nil='true']">
                </xsl:when>
                <xsl:otherwise>
                    <div class="stat ammo-spent">
                        <dt>Combat&#x00A0;Load&#x00A0;Expended</dt>
                        <dd>
                            <xsl:value-of select="format-number(AmmoPercentageExpended, '###%')"></xsl:value-of>
                        </dd>
                    </div>
                </xsl:otherwise>
            </xsl:choose>
            <div class="stat time-in-contact">
                <dt>Time&#x00A0;In&#x00A0;Contact</dt>
                <dd>
                    <xsl:call-template name="timestamp-from-seconds">
                        <xsl:with-param name="seconds" select="TotalTimeInContact" />
                    </xsl:call-template>
                </dd>
            </div>
        </dl>
    </xsl:template>

    <xsl:template match="ShipBattleReport" mode="efficiency-ratings">
        <h4>Overall Efficiency Ratings</h4>
        <dl class="efficiency-ratings">
            <div class="stat anti-ship">
                <dt>
                    Anti-Ship Warfare
                </dt>
                <xsl:call-template name="efficiency-rating-gauge">
                    <xsl:with-param name="section" select="AntiShip" />
                </xsl:call-template>
            </div>
            <div class="stat missile">
                <dt>
                    Missile Warfare
                </dt>
                <xsl:call-template name="efficiency-rating-gauge">
                    <xsl:with-param name="section" select="Strike" />
                </xsl:call-template>
            </div>
            <div class="stat sensors">
                <dt>
                    Sensor Warfare
                </dt>
                <xsl:call-template name="efficiency-rating-gauge">
                    <xsl:with-param name="section" select="Sensors" />
                </xsl:call-template>
            </div>
            <div class="stat missile-defense">
                <dt>
                    Missile Defense
                </dt>
                <xsl:call-template name="efficiency-rating-gauge">
                    <xsl:with-param name="section" select="Defenses" />
                </xsl:call-template>
            </div>
            <div class="stat engineering">
                <dt>
                    Engineering
                </dt>
                <xsl:call-template name="efficiency-rating-gauge">
                    <xsl:with-param name="section" select="Engineering" />
                </xsl:call-template>
            </div>
        </dl>
    </xsl:template>

    <xsl:template name="efficiency-rating-gauge">
        <xsl:param name="section" />
        <xsl:choose>
            <xsl:when test="$section">
                <dd class="rating">
                    <xsl:attribute name="style">
                        background: radial-gradient( circle at center, black 39px, gray 39px 40px,
                        transparent 40px ), conic-gradient( from 180deg, <xsl:call-template name='efficiency-color'><xsl:with-param name="efficiency" select="$section/Rating" />
                        </xsl:call-template>
                            <xsl:text> </xsl:text><xsl:value-of select="$section/Efficiency * 360" />deg,
                        transparent <xsl:value-of select="$section/Efficiency * 360" />deg 360deg ); color: <xsl:call-template name='efficiency-color'><xsl:with-param name="efficiency" select="$section/Rating" />
                        </xsl:call-template>; </xsl:attribute>
                    <xsl:call-template name="efficiency-label"><xsl:with-param name='efficiency' select='$section/Rating' /></xsl:call-template>
                </dd>
            </xsl:when>
            <xsl:otherwise>
                <dd class="rating">
                    <xsl:attribute name="style">
                        background: radial-gradient( circle at center, black 39px, gray 39px 40px,
                        transparent 40px ), conic-gradient( from 180deg, gray 0deg,
                        transparent 0deg 360deg ); color: gray;
                    </xsl:attribute>
                    N/A
                </dd>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name='efficiency-color'>
        <xsl:param name='efficiency' />
        <xsl:choose>
            <xsl:when test="$efficiency = 'Excellent'">cyan</xsl:when>
            <xsl:when test="$efficiency = 'Good'">hsl(120, 100%, 50%)</xsl:when>
            <xsl:when test="$efficiency = 'Fair'">yellow</xsl:when>
            <xsl:when test="$efficiency = 'Poor'">orangered</xsl:when>
            <xsl:when test="$efficiency = 'Terrible'">red</xsl:when>
            <xsl:when test="$efficiency = 'NotApplicable'">gray</xsl:when>
        </xsl:choose>
    </xsl:template>
    <xsl:template name='efficiency-label'>
        <xsl:param name='efficiency' />
        <span>
            <xsl:attribute name="style">
                color: <xsl:call-template name="efficiency-color"><xsl:with-param name="efficiency" select="$efficiency"/></xsl:call-template>
            </xsl:attribute>
            <xsl:choose>
                <xsl:when test="$efficiency = 'Excellent'">EX</xsl:when>
                <xsl:when test="$efficiency = 'Good'">GD</xsl:when>
                <xsl:when test="$efficiency = 'Fair'">FR</xsl:when>
                <xsl:when test="$efficiency = 'Poor'">PO</xsl:when>
                <xsl:when test="$efficiency = 'Terrible'">TR</xsl:when>
                <xsl:when test="$efficiency = 'NotApplicable'">N/A</xsl:when>
            </xsl:choose>
        </span>
    </xsl:template>

    <xsl:template name='efficiency-label-long'>
        <xsl:param name='efficiency' />
        <span>
            <xsl:attribute name="style">
                color: <xsl:call-template name="efficiency-color"><xsl:with-param name="efficiency" select="$efficiency"/></xsl:call-template>
            </xsl:attribute>
            <xsl:choose>
                <xsl:when test="$efficiency = 'Excellent'">EXCELLENT</xsl:when>
                <xsl:when test="$efficiency = 'Good'">GOOD</xsl:when>
                <xsl:when test="$efficiency = 'Fair'">FAIR</xsl:when>
                <xsl:when test="$efficiency = 'Poor'">POOR</xsl:when>
                <xsl:when test="$efficiency = 'Terrible'">TERRIBLE</xsl:when>
                <xsl:when test="$efficiency = 'NotApplicable'">N/A</xsl:when>
            </xsl:choose>
        </span>
    </xsl:template>

    <xsl:template match="EngagementHistory[EnemyEngagement]">
        <div class="engagement-history">
            <h2>Enemy Ships Engaged</h2>
            <xsl:apply-templates select="EnemyEngagement" />
        </div>
    </xsl:template>

    <xsl:template match="EnemyEngagement">
        <p class="engagement">
            <xsl:value-of select="substring-before(substring-after(normalize-space(Name),'&lt;noparse&gt;'),'&lt;/noparse&gt;')"/> - Last TN <xsl:value-of select="TN/@ID"/>
            <xsl:choose>
                <xsl:when test="EndingStatus = 'NotEliminated'"></xsl:when>
                <xsl:when test="EndingStatus = 'Destroyed'"> - DESTROYED</xsl:when>
                <xsl:when test="EndingStatus = 'Withdrew'"> - WITHDREW</xsl:when>
                <xsl:when test="EndingStatus = 'Retired'"> - RETIRED</xsl:when>
                <xsl:when test="EndingStatus = 'Evacuated'"> - EVACUATED</xsl:when>
            </xsl:choose>
        </p>
    </xsl:template>

    <xsl:template match="AntiShip">
        <div class="anti-ship breakdown">
            <h2>
                Area Breakdown: Anti-Ship Warfare -<xsl:text> </xsl:text>
                <span>
                    <xsl:attribute name="style">
                        color: <xsl:call-template name="efficiency-color"><xsl:with-param name="efficiency" select="Rating"/></xsl:call-template>
                    </xsl:attribute>
                    <xsl:call-template name="efficiency-label-long"><xsl:with-param name='efficiency' select='Rating' /></xsl:call-template>
                </span>
            </h2>
            <div class="anti-ship weapons">
                <xsl:apply-templates select="Weapons/WeaponReport" />
            </div>
        </div>
    </xsl:template>

    <xsl:template match="Strike">
        <div class="missile-warfare breakdown">
            <h2>
                Area Breakdown: Missile Warfare -<xsl:text> </xsl:text>
                <span>
                    <xsl:attribute name="style">
                        color: <xsl:call-template name="efficiency-color"><xsl:with-param name="efficiency" select="Rating"/></xsl:call-template>
                    </xsl:attribute>
                    <xsl:call-template name="efficiency-label-long"><xsl:with-param name='efficiency' select='Rating' /></xsl:call-template>
                </span>
            </h2>
            <div class="missile-warfare weapons">
                <xsl:apply-templates select="Missiles/OffensiveMissileReport" />
            </div>
        </div>
    </xsl:template>

    <xsl:template match="Sensors">
        <div class="sensor-warfare breakdown">
            <h2>
                Area Breakdown: Sensor Warfare -<xsl:text> </xsl:text>
                <span>
                    <xsl:attribute name="style">
                        color: <xsl:call-template name="efficiency-color"><xsl:with-param name="efficiency" select="Rating"/></xsl:call-template>
                    </xsl:attribute>
                    <xsl:call-template name="efficiency-label-long"><xsl:with-param name='efficiency' select='Rating' /></xsl:call-template>
                </span>
            </h2>
            <div class="sensor stats">
                <dl>
                    <div class="own-line">
                        <dt>Time To First Track</dt>
                        <xsl:choose>
                            <xsl:when test="TimeOfFirstTrack[@xsi:nil='true']"><dd>Never</dd></xsl:when>
                            <xsl:otherwise>
                                <dd>
                                    <xsl:call-template name="timestamp-from-seconds">
                                        <xsl:with-param name="seconds" select="TimeOfFirstTrack - GameStartTime" />
                                    </xsl:call-template>
                                </dd>
                            </xsl:otherwise>
                        </xsl:choose>
                    </div>
                    <div class="own-line">
                        <dt>Peak Enemy Tracks Held</dt>
                        <dd><xsl:value-of select="PeakTracksHeld" /></dd>
                    </div>
                    <div class="own-line">
                        <dt>Jammed Duration</dt>
                        <dd>
                            <xsl:call-template name="timestamp-from-seconds">
                                <xsl:with-param name="seconds" select="TotalTimeJammed" />
                            </xsl:call-template>
                        </dd>
                    </div>
                    <div class="own-line">
                        <dt>Time Tracking Enemy</dt>
                        <dd>
                            <xsl:call-template name="timestamp-from-seconds">
                                <xsl:with-param name="seconds" select="TotalTimeTrackingEnemy" />
                            </xsl:call-template>
                        </dd>
                    </div>
                    <div class="own-line">
                        <dt>Time Tracked By Enemy</dt>
                        <dd>
                            <xsl:call-template name="timestamp-from-seconds">
                                <xsl:with-param name="seconds" select="TotalTimeTrackedByEnemy" />
                            </xsl:call-template>
                        </dd>
                    </div>
                    <div class="own-line">
                        <dt>Stealth Efficiency</dt>
                        <dd><xsl:value-of select="format-number(StealthEfficiency, '###%')" /></dd>
                    </div>
                    <div class="own-line">
                        <dt>Time at Sensor EMCON</dt>
                        <dd>
                            <xsl:call-template name="timestamp-from-seconds">
                                <xsl:with-param name="seconds" select="TimeAtSensorEMCON" />
                            </xsl:call-template>
                        </dd>
                    </div>
                    <div class="own-line">
                        <dt>Time at Total EMCON</dt>
                        <dd>
                            <xsl:call-template name="timestamp-from-seconds">
                                <xsl:with-param name="seconds" select="TimeAtTotalEMCON" />
                            </xsl:call-template>
                        </dd>
                    </div>
                </dl>
            </div>
            <div class="sensor weapons">
                <xsl:apply-templates select="EWWeapons/WeaponReport" mode="ewar" />
            </div>
        </div>
    </xsl:template>

    <xsl:template match="Defenses">
        <div class="missile-defense breakdown">
            <h2>
                Area Breakdown: Missile Defense -<xsl:text> </xsl:text>
                <span>
                    <xsl:attribute name="style">
                        color: <xsl:call-template name="efficiency-color"><xsl:with-param name="efficiency" select="Rating"/></xsl:call-template>
                    </xsl:attribute>
                    <xsl:call-template name="efficiency-label-long"><xsl:with-param name='efficiency' select='Rating' /></xsl:call-template>
                </span>
            </h2>
            <div class="point-defense weapons">
                <xsl:apply-templates select="MissileReports/DefensiveMissileReport" />
                <xsl:apply-templates select="WeaponReports/DefensiveWeaponReport" />
                <xsl:apply-templates select="DecoyReports/DecoyReport" />
            </div>
        </div>
    </xsl:template>

    <xsl:template match="Engineering">
        <div class="engineering breakdown">
            <h2>Area Breakdown: Engineering -<xsl:text> </xsl:text>
                <span>
                    <xsl:attribute name="style"> color: <xsl:call-template name="efficiency-color">
                            <xsl:with-param name="efficiency" select="Rating" />
                        </xsl:call-template>
                    </xsl:attribute>
                    <xsl:call-template name="efficiency-label-long">
                        <xsl:with-param name='efficiency' select='Rating' />
                    </xsl:call-template>
                </span>
            </h2>
            <div class="power stats">
                <dl>
                    <div class="own-line">
                        <dt>Rated Power Output</dt>
                        <dd><xsl:value-of select="format-number(OptimumPower, '###,###')" /> kW</dd>
                    </div>
                    <div class="own-line">
                        <dt>Average Power Output</dt>
                        <dd><xsl:value-of select="format-number(AveragePower, '###,###')" /> kW (<xsl:value-of
                                select="format-number(AveragePower div OptimumPower, '###%')" />)</dd>
                    </div>
                    <div class="own-line">
                        <dt>Peak Power Demand</dt>
                        <dd><xsl:value-of select="format-number(PeakPowerDemand, '###,###')" /> kW (<xsl:value-of
                                select="format-number(PeakPowerDemand div OptimumPower, '###%')" />)</dd>
                    </div>
                </dl>
            </div>
            <div class="movement stats">
                <dl>
                    <div class="own-line">
                        <dt>Time Spent Immobilized</dt>
                        <dd>
                            <xsl:call-template name="timestamp-from-seconds">
                                <xsl:with-param name="seconds" select="ImmobilizedDuration" />
                            </xsl:call-template>
                        </dd>
                    </div>
                    <div class="own-line">
                        <dt>Average Thruster Condition</dt>
                        <dd>
                            <xsl:value-of select="format-number(AverageThrusterCond, '###%')" />
                        </dd>
                    </div>
                </dl>
            </div>
            <div class="restores stats">
                <h5>Component Restores</h5>
                <dl>
                    <dt>Carried</dt>
                    <dd>
                        <xsl:value-of select="RestoresTotal" />
                    </dd>
                    <dt>Consumed</dt>
                    <dd>
                        <xsl:value-of select="RestoresConsumed" />
                    </dd>
                    <dt>Destroyed</dt>
                    <dd>
                        <xsl:value-of select="RestoresDestroyed" />
                    </dd>
                    <dt>Remaining</dt>
                    <dd>
                        <xsl:value-of select="RestoresRemaining" />
                    </dd>
                    <div class="own-line">
                        <dt>Critical Components Left Destroyed</dt>
                        <dd>
                            <xsl:value-of select="CriticalComponentsLeftDestroyed" />
                        </dd>
                    </div>
                </dl>
            </div>
            <div class="damage-control stats">
                <h5>Damage Control Teams</h5>
                <dl>
                    <dt>Carried</dt>
                    <dd>
                        <xsl:value-of select="DCTeamsCarried" />
                    </dd>
                    <dt>Survived</dt>
                    <dd>
                        <xsl:value-of select="DCTeamsSurvived" />
                        <xsl:if test="DCTeamsCarried > 0">&#x00A0;(<xsl:value-of
                                select="format-number(DCTeamsSurvived div DCTeamsCarried, '###%')" />
                            )
                        </xsl:if>
                    </dd>
                    <dt>>50% Member Casualties</dt>
                    <dd>
                        <xsl:value-of select="DCTeamsHeavyCasualties" />
                    </dd>
                    <div class="own-line">
                        <dt>Total Damage Taken</dt>
                        <dd>
                            <xsl:value-of select="format-number(DamageReceived, '###,###')" />
                        </dd>
                    </div>
                    <div class="own-line">
                        <dt>Total Damage Repaired</dt>
                        <dd>
                            <xsl:value-of select="format-number(DamageRepaired, '###,###')" />
                        </dd>
                    </div>
                </dl>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="DefensiveWeaponReport">
        <xsl:variable name="aurora">Stock/Mk90 'Aurora' PDT</xsl:variable>
        <xsl:variable name="defender">Stock/Mk20 'Defender' PDT</xsl:variable>
        <xsl:variable name="stonewall">Stock/Mk29 'Stonewall' PDT</xsl:variable>
        <xsl:variable name="rebound">Stock/Mk25 'Rebound' PDT</xsl:variable>
        <xsl:variable name="sarissa">Stock/Mk95 'Sarissa' PDT</xsl:variable>
        <xsl:variable name="mk61">Stock/Mk61 Cannon</xsl:variable>
        <div class="weapon-report">
            <xsl:call-template name="weapon-image">
                <xsl:with-param name="name" select="Weapon/WeaponKey" />
            </xsl:call-template>
            <h3>
                <xsl:if test="WeaponCount > 1">
                    <xsl:value-of select="WeaponCount" />
                    <xsl:text>x </xsl:text>
                </xsl:if>
                <xsl:value-of select="Weapon/Name" />
            </h3>
            <div class="stats">
                <dl>
                    <div class="half-line">
                        <dt>Tgts Assigned</dt>
                        <dd><xsl:value-of select="Weapon/TargetsAssigned" /></dd>
                    </div>
                    <div class="half-line">
                        <dt>Destroyed</dt>
                        <dd>
                            <xsl:value-of select="Weapon/TargetsDestroyed" />
                            <xsl:choose>
                                <xsl:when test="Weapon/TargetsDestroyed > 0">
                                    <xsl:text> (</xsl:text>
                                    <xsl:value-of select="format-number(Weapon/TargetsDestroyed div Weapon/TargetsAssigned, '###%')" />)
                                </xsl:when>
                            </xsl:choose>
                        </dd>
                    </div>
                    <xsl:choose>
                        <xsl:when test="Weapon/WeaponKey = $aurora">
                            <xsl:call-template name="pd-stats-energy">
                                <xsl:with-param name="pd" select="Weapon" />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="Weapon/WeaponKey = $defender">
                            <xsl:call-template name="pd-stats-bullets">
                                <xsl:with-param name="pd" select="Weapon" />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="Weapon/WeaponKey = $stonewall">
                            <xsl:call-template name="pd-stats-bullets">
                                <xsl:with-param name="pd" select="Weapon" />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="Weapon/WeaponKey = $rebound">
                            <xsl:call-template name="pd-stats-bullets">
                                <xsl:with-param name="pd" select="Weapon" />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="Weapon/WeaponKey = $sarissa">
                            <xsl:call-template name="pd-stats-bullets">
                                <xsl:with-param name="pd" select="Weapon" />
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="Weapon/WeaponKey = $mk61">
                            <xsl:call-template name="pd-stats-bullets">
                                <xsl:with-param name="pd" select="Weapon" />
                            </xsl:call-template>
                        </xsl:when>
                    </xsl:choose>
                </dl>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="DefensiveMissileReport">
        <div class="weapon-report">
            <xsl:call-template name="weapon-image">
                <xsl:with-param name="name" select="MissileKey" />
            </xsl:call-template>
            <h3>
                <xsl:value-of select="MissileName" />
            </h3>
            <div class="stats">
                <dl>
                    <div class="half-line">
                        <dt>Tgts Assigned</dt>
                        <dd><xsl:value-of select="TotalTargets" /></dd>
                    </div>
                    <div class="half-line">
                        <dt>Expended</dt>
                        <dd>
                            <xsl:value-of select="TotalExpended" />/<xsl:value-of select="TotalCarried" />
                            (<xsl:value-of select="format-number(TotalExpended div TotalCarried, '###%')" />)
                        </dd>
                    </div>
                    <xsl:if test="TotalExpended > 0">
                        <div class="own-line">
                            <dt>Interceptions</dt>
                            <dd>
                                <xsl:value-of select="TotalInterceptions" />
                                <xsl:if test="TotalTargets > 0">
                                    (<xsl:value-of select="format-number(TotalInterceptions div TotalTargets, '###%')" />)
                                </xsl:if>
                            </dd>
                        </div>
                        <div class="own-line">
                            <dt>Successes</dt>
                            <dd>
                                <xsl:value-of select="TotalSuccesses" />
                                <xsl:if test="TotalTargets > 0">
                                    (<xsl:value-of select="format-number(TotalSuccesses div TotalTargets, '###%')" />)
                                </xsl:if>
                            </dd>
                        </div>
                    </xsl:if>
                    <xsl:if test="TotalExpended = 0">
                        <p class="unused">&#x2013; UNUSED &#x2013;</p>
                    </xsl:if>
                </dl>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="DecoyReport">
        <div class="weapon-report">
            <xsl:call-template name="weapon-image">
                <xsl:with-param name="name" select="MissileKey" />
            </xsl:call-template>
            <h3>
                <xsl:value-of select="MissileName" />
            </h3>
            <div class="stats">
                <dl>
                    <div class="own-line">
                        <dt>Carried</dt>
                        <dd><xsl:value-of select="TotalCarried" /></dd>
                    </div>
                    <div class="own-line">
                        <dt>Expended</dt>
                        <dd>
                            <xsl:value-of select="TotalExpended" />
                            (<xsl:value-of select="format-number(TotalExpended div TotalCarried, '###%')" />)
                        </dd>
                    </div>
                    <div class="own-line">
                        <dt>Threats Seduced</dt>
                        <dd>
                            <xsl:value-of select="TotalSeductions" />
                        </dd>
                    </div>
                </dl>
            </div>
        </div>
    </xsl:template>

    <xsl:template name="pd-stats-energy">
        <xsl:param name="pd" />
        <div class="own-line">
            <dt>Total Firing Time</dt>
            <dd>
                <xsl:call-template name="timestamp-from-seconds">
                    <xsl:with-param name="seconds" select="$pd/ShotsFired * $pd/ShotDuration" />
                </xsl:call-template>
            </dd>
        </div>
        <div class="own-line">
            <dt>BSHRT Time</dt>
            <dd>
                <xsl:call-template name="timestamp-from-seconds">
                    <xsl:with-param name="seconds" select="$pd/ShotsFiredOverTimeLimit * $pd/ShotDuration" />
                </xsl:call-template>
                <xsl:if test="$pd/ShotsFired > 0">
                    (<xsl:value-of select="format-number($pd/ShotsFiredOverTimeLimit div $pd/ShotsFired, '###%')" />)
                </xsl:if>
            </dd>
        </div>
    </xsl:template>

    <xsl:template name="pd-stats-bullets">
        <xsl:param name="pd" />
        <div class="own-line">
            <dt>Rnds Carried</dt>
            <dd><xsl:value-of select="$pd/RoundsCarried" /></dd>
        </div>
        <div class="own-line">
            <dt>Expended</dt>
            <dd>
                <xsl:value-of select="$pd/ShotsFired" />
                <xsl:text>&#x00A0;(</xsl:text>
                <xsl:value-of select="format-number($pd/ShotsFired div $pd/RoundsCarried, '###%')" />
                <xsl:choose>
                    <xsl:when test="$pd/TargetsDestroyed > 0">
                        <xsl:text>) (avg.&#x00A0;</xsl:text>
                        <xsl:value-of select="ceiling($pd/ShotsFired div $pd/TargetsDestroyed)" />
                        <xsl:text>&#x00A0;rnds/kill)</xsl:text>
                    </xsl:when>
                    <xsl:otherwise>)</xsl:otherwise>
                </xsl:choose>
            </dd>
        </div>
    </xsl:template>

    <xsl:template match="WeaponReport[@xsi:type='ContinuousWeaponReport']" mode="ewar">
        <div class="weapon-report continuous">
            <xsl:call-template name="weapon-image">
                <xsl:with-param name="name" select="WeaponKey" />
            </xsl:call-template>
            <h3><xsl:value-of select="Name" /></h3>
            <div class='stats'>
                <dl>
                    <dt>Firing Time</dt>
                    <dd>
                        <xsl:call-template name="timestamp-from-seconds">
                            <xsl:with-param name="seconds" select="ShotsFired * ShotDuration" />
                        </xsl:call-template>
                    </dd>
                    <xsl:if test="ShotsFired > 0">
                        <dt>BSHRT Time</dt>
                        <dd>
                            <xsl:call-template name="timestamp-from-seconds">
                                <xsl:with-param name="seconds" select="ShotsFiredOverTimeLimit * ShotDuration" />
                            </xsl:call-template>
                            <xsl:text> (</xsl:text>
                            <xsl:value-of select="format-number(ShotsFiredOverTimeLimit div ShotsFired, '###%')" />
                            <xsl:text>)</xsl:text>
                        </dd>
                    </xsl:if>
                </dl>
                <xsl:if test="ShotsFired = 0">
                    <p class="unused">&#x2013; UNUSED &#x2013;</p>
                </xsl:if>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="WeaponReport[@xsi:type='DiscreteWeaponReport']">
        <div class="weapon-report discrete">
            <xsl:call-template name="weapon-image">
                <xsl:with-param name="name" select="WeaponKey" />
            </xsl:call-template>
            <h3><xsl:value-of select="Name" /></h3>
            <div class='stats'>
                <dl>
                    <div class="half-line">
                        <dt>Carried</dt>
                        <dd><xsl:value-of select="format-number(RoundsCarried, '###,###')" /></dd>
                    </div>
                    <div class="half-line">
                        <dt>Expended</dt>
                        <dd>
                            <xsl:value-of select="format-number(ShotsFired, '###,###')"/>
                            <xsl:choose>
                                <xsl:when test="RoundsCarried > 0">
                                    (<xsl:value-of select="format-number(ShotsFired div RoundsCarried, '###%')" />)
                                </xsl:when>
                                <xsl:otherwise></xsl:otherwise>
                            </xsl:choose>
                        </dd>
                    </div>
                    <xsl:choose>
                        <xsl:when test="ShotsFired > 0">
                            <div class="half-line">
                                <dt>Hits</dt>
                                <dd><xsl:value-of select="format-number(HitCount, '###,###')" /></dd>
                            </div>
                            <div class="half-line">
                                <dt>Accuracy</dt>
                                <dd><xsl:value-of select="format-number(HitCount div ShotsFired, '###%')" /></dd>
                            </div>
                            <div class="half-line">
                                <dt>Dmg Potential</dt>
                                <dd><xsl:value-of select="format-number(RoundsCarried * MaxDamagePerShot, '###,###,###')" /></dd>
                            </div>
                            <div class="half-line">
                                <dt>Actual Dmg</dt>
                                <dd>
                                    <xsl:value-of select="format-number(TotalDamageDone, '###,###,###')" />
                                    (<xsl:value-of select="format-number(TotalDamageDone div (ShotsFired * MaxDamagePerShot), '###%')" />)
                                </dd>
                            </div>
                        </xsl:when>
                    </xsl:choose>
                </dl>
                <xsl:if test="ShotsFired = 0">
                    <p class="unused">&#x2013; UNUSED &#x2013;</p>
                </xsl:if>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="WeaponReport[@xsi:type='ContinuousWeaponReport']">
        <div class="weapon-report continuous">
            <xsl:call-template name="weapon-image">
                <xsl:with-param name="name" select="WeaponKey" />
            </xsl:call-template>
            <h3><xsl:value-of select="Name" /></h3>
            <div class='stats'>
                <dl>
                    <div class="half-line">
                        <dt>Firing Time</dt>
                        <dd>
                            <xsl:call-template name="timestamp-from-seconds">
                                <xsl:with-param name="seconds" select="ShotsFired * ShotDuration" />
                            </xsl:call-template>
                        </dd>
                    </div>
                    <xsl:if test="ShotsFired > 0">
                        <div class="half-line">
                            <dt>BSHRT Time</dt>
                            <dd>
                                <xsl:call-template name="timestamp-from-seconds">
                                    <xsl:with-param name="seconds" select="ShotsFiredOverTimeLimit * ShotDuration" />
                                </xsl:call-template>
                                <xsl:text> (</xsl:text>
                                <xsl:value-of select="format-number(ShotsFiredOverTimeLimit div ShotsFired, '###%')" />
                                <xsl:text>)</xsl:text>
                            </dd>
                        </div>
                        <div class="own-line">
                            <dt>Time on Tgt</dt>
                            <dd>
                                <xsl:call-template name="timestamp-from-seconds">
                                    <xsl:with-param name="seconds" select="HitCount * ShotDuration" />
                                </xsl:call-template>
                                (<xsl:value-of select="format-number(HitCount div ShotsFired, '###%')" />)
                            </dd>
                        </div>
                        <div class="half-line">
                            <dt>Dmg Potential</dt>
                            <dd><xsl:value-of select="format-number(ShotsFired * MaxDamagePerShot, '###,###,###')" /></dd>
                        </div>
                        <div class="half-line">
                            <dt>Actual Dmg</dt>
                            <dd><xsl:value-of select="format-number(TotalDamageDone, '###,###,###')" /></dd>
                        </div>
                    </xsl:if>
                </dl>
                <xsl:if test="ShotsFired = 0">
                    <p class="unused">&#x2013; UNUSED &#x2013;</p>
                </xsl:if>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="OffensiveMissileReport">
        <xsl:variable name="desc">
            <p>
            <xsl:value-of select="MissileDesc" disable-output-escaping="yes" />
            </p>
        </xsl:variable>
        <div class="weapon-report missile">
            <xsl:call-template name="weapon-image">
                <xsl:with-param name="name" select="MissileKey" />
            </xsl:call-template>
            <h3><xsl:value-of select="MissileName" /></h3>
            <p class="configuration">
                <xsl:call-template name="missile-desc">
                    <xsl:with-param name="desc" select="$desc" />
                </xsl:call-template>
            </p>
            <div class="stats">
                <dl>
                    <div class='half-line'>
                        <dt>Carried</dt>
                        <dd><xsl:value-of select="TotalCarried" /></dd>
                    </div>
                    <div class='half-line'>
                        <dt>Expended</dt>
                        <dd>
                            <xsl:value-of select="TotalExpended" />
                            (<xsl:value-of select="format-number(TotalExpended div TotalCarried, '###%')" />)
                        </dd>
                    </div>
                    <xsl:if test="TotalExpended > 0">
                        <div class='half-line'>
                            <dt>Dmg Potential</dt>
                            <dd><xsl:value-of select="format-number(IndividualDamagePotential * TotalCarried, '###,###,###')" /></dd>
                        </div>
                        <div class='half-line'>
                            <dt>Actual Dmg</dt>
                            <dd>
                                <xsl:value-of select="format-number(TotalDamageDone, '###,###,###')" />
                         r       (<xsl:value-of select="format-number(TotalDamageDone div (IndividualDamagePotential * TotalCarried), '###%')" />)
                            </dd>
                        </div>
                    </xsl:if>
                    <xsl:if test="TotalExpended = 0">
                        <p class="unused">&#x2013; UNUSED &#x2013;</p>
                    </xsl:if>
                </dl>
            </div>
            <div class="missile-hits">
                <dl>
                    <dt class="hits">Hits</dt>
                    <dd><xsl:value-of select="Hits" /></dd>
                    <dt class="misses">Misses</dt>
                    <dd><xsl:value-of select="Misses" /></dd>
                    <dt class="softkill">Soft-kills</dt>
                    <dd><xsl:value-of select="Softkills" /></dd>
                    <dt class="hardkill">Hard-kills</dt>
                    <dd><xsl:value-of select="Hardkills" /></dd>
                </dl>
            </div>
        </div>
    </xsl:template>

    
    <xsl:template match="CraftBattleReport">
        <div class="ship">
            <xsl:attribute name="data-ship-id">
                <xsl:value-of select="../../PlayerID"></xsl:value-of>-<xsl:value-of select="position()+count(../../Ships/ShipBattleReport)"></xsl:value-of>
            </xsl:attribute>
            <h4>
                <xsl:value-of select="DesignName"></xsl:value-of>
            </h4>
            <div class="summary">
                <div class="dc-board craft">
                    <xsl:choose>
                        <xsl:when test="./FrameKey = 'Stock/OSP Interceptor'">
                            <img><xsl:attribute name="src">resources/craft/cuda.svg</xsl:attribute></img>
                        </xsl:when>
                        <xsl:when test="./FrameKey = 'Stock/OSP Bomber'">
                            <img><xsl:attribute name="src">resources/craft/sturgeon.svg</xsl:attribute></img>
                        </xsl:when>
                        <xsl:when test="./FrameKey = 'Stock/OSP Scout'">
                            <img><xsl:attribute name="src">resources/craft/pike.svg</xsl:attribute></img>
                        </xsl:when>
                        <xsl:when test="./FrameKey = 'Stock/OSP Skiff'">
                            <img><xsl:attribute name="src">resources/craft/halberd.svg</xsl:attribute></img>
                        </xsl:when>
                        <xsl:when test="./FrameKey = 'Stock/AN Interceptor'">
                            <img><xsl:attribute name="src">resources/craft/tanto.svg</xsl:attribute></img>
                        </xsl:when>
                        <xsl:when test="./FrameKey = 'Stock/AN Bomber'">
                            <img><xsl:attribute name="src">resources/craft/claymore.svg</xsl:attribute></img>
                        </xsl:when>
                        <xsl:when test="./FrameKey = 'Stock/AN SEWAC'">
                            <img><xsl:attribute name="src">resources/craft/sewac.svg</xsl:attribute></img>
                        </xsl:when>
                        <xsl:when test="./FrameKey = 'Stock/AN Skiff'">
                            <img><xsl:attribute name="src">resources/craft/halberd.svg</xsl:attribute></img>
                        </xsl:when>
                        <xsl:otherwise></xsl:otherwise>
                    </xsl:choose>
                </div>
                <div class="stats">
                    <xsl:apply-templates select="." mode="basic-stats"></xsl:apply-templates>
                </div>
            </div>
        </div>
    </xsl:template>
    
    <xsl:template match="CraftBattleReport" mode="details">
        <div>
            <xsl:attribute name="data-ship-id">
                <xsl:value-of select="../../PlayerID"></xsl:value-of>-<xsl:value-of select="count(../../Ships/ShipBattleReport) + count(../CraftBattleReport[. = current()]/preceding-sibling::*)+1"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="class">
                ship details hidden
            </xsl:attribute>
            <div class="summary">
                <div class="dc-board craft">
                    <xsl:choose>
                        <xsl:when test="./FrameKey = 'Stock/OSP Interceptor'">
                            <img><xsl:attribute name="src">resources/craft/cuda.svg</xsl:attribute></img>
                        </xsl:when>
                        <xsl:when test="./FrameKey = 'Stock/OSP Bomber'">
                            <img><xsl:attribute name="src">resources/craft/sturgeon.svg</xsl:attribute></img>
                        </xsl:when>
                        <xsl:when test="./FrameKey = 'Stock/OSP Scout'">
                            <img><xsl:attribute name="src">resources/craft/pike.svg</xsl:attribute></img>
                        </xsl:when>
                        <xsl:when test="./FrameKey = 'Stock/OSP Skiff'">
                            <img><xsl:attribute name="src">resources/craft/halberd.svg</xsl:attribute></img>
                        </xsl:when>
                        <xsl:when test="./FrameKey = 'Stock/AN Interceptor'">
                            <img><xsl:attribute name="src">resources/craft/tanto.svg</xsl:attribute></img>
                        </xsl:when>
                        <xsl:when test="./FrameKey = 'Stock/AN Bomber'">
                            <img><xsl:attribute name="src">resources/craft/claymore.svg</xsl:attribute></img>
                        </xsl:when>
                        <xsl:when test="./FrameKey = 'Stock/AN SEWAC'">
                            <img><xsl:attribute name="src">resources/craft/sewac.svg</xsl:attribute></img>
                        </xsl:when>
                        <xsl:when test="./FrameKey = 'Stock/AN Skiff'">
                            <img><xsl:attribute name="src">resources/craft/halberd.svg</xsl:attribute></img>
                        </xsl:when>
                        <xsl:otherwise></xsl:otherwise>
                    </xsl:choose>
                </div>
                <div class="stats">
                    <h2>
                        <xsl:value-of select="DesignName"></xsl:value-of>
                    </h2>
                    <xsl:apply-templates select="." mode="basic-stats"></xsl:apply-templates>
                </div>
                <div class="stats">
                    <xsl:apply-templates select="." mode="efficiency-ratings" />
                </div>
            </div>
            <xsl:apply-templates select="StrikeReport" />
            <xsl:apply-templates select="SpaceSuperiorityReport" />
        </div>
    </xsl:template>
    
    <xsl:template match="CraftBattleReport" mode="basic-stats">
        <dl class="basic-stats">
            <div class="stat carried">
                <dt>Carried</dt>
                <dd>
                    <xsl:value-of select="Carried"></xsl:value-of>
                </dd>
            </div>
            <div class="stat lost">
                <dt>Lost</dt>
                <dd>
                    <xsl:value-of select="Lost"></xsl:value-of>
                </dd>
            </div>
            <div class="stat survival-rate">
                <dt>Survival&#x00A0;Rate</dt>
                <dd>
                    <xsl:value-of select="format-number((Carried - Lost) div Carried, '###%')"></xsl:value-of>
                </dd>
            </div>
            <div class="stat sorties-flown">
                <dt>Sorties&#x00A0;Flown</dt>
                <dd>
                    <xsl:value-of select="SortiesFlown"></xsl:value-of>
                </dd>
            </div>
            <div class="stat distance-travelled">
                <dt>Distance&#x00A0;Travelled</dt>
                <dd>
                    <xsl:value-of
                        select="format-number(TotalDistanceTravelled div 100, '###,###.##')"></xsl:value-of>
                    <xsl:text>&#x00A0;km</xsl:text>
                </dd>
            </div>
            <div class="stat damage-dealt">
                <dt>Damage&#x00A0;Dealt</dt>
                <dd>
                    <xsl:value-of select="format-number(TotalDamageDealt, '###,###')"></xsl:value-of>
                </dd>
            </div>
        </dl>
    </xsl:template>

    <xsl:template match="CraftBattleReport" mode="efficiency-ratings">
        <h4>Overall Efficiency Ratings</h4>
        <dl class="efficiency-ratings">
            <div class="stat strike-warfare">
                <dt>
                    Strike Warfare
                </dt>
                <xsl:call-template name="efficiency-rating-gauge">
                    <xsl:with-param name="section" select="StrikeReport" />
                </xsl:call-template>
            </div>
            <div class="stat void-superiority">
                <dt>
                    Void Superiority
                </dt>
                <xsl:call-template name="efficiency-rating-gauge">
                    <xsl:with-param name="section" select="SpaceSuperiorityReport" />
                </xsl:call-template>
            </div>
        </dl>
    </xsl:template>

    <xsl:template match="StrikeReport">
        <div class="strike-warfare breakdown">
            <h2>
                Area Breakdown: Strike Warfare -<xsl:text> </xsl:text>
                <span>
                    <xsl:attribute name="style">
                        color: <xsl:call-template name="efficiency-color"><xsl:with-param name="efficiency" select="Rating"/></xsl:call-template>
                    </xsl:attribute>
                    <xsl:call-template name="efficiency-label-long"><xsl:with-param name='efficiency' select='Rating' /></xsl:call-template>
                </span>
            </h2>
            <div class="strike-warfare weapons">
                <xsl:apply-templates select="GeneralWeapons/WeaponReport"/>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="SpaceSuperiorityReport">
        <div class="void-superiority breakdown">
            <h2>
                Area Breakdown: Void Superiority -<xsl:text> </xsl:text>
                <span>
                    <xsl:attribute name="style">
                        color: <xsl:call-template name="efficiency-color"><xsl:with-param name="efficiency" select="Rating"/></xsl:call-template>
                    </xsl:attribute>
                    <xsl:call-template name="efficiency-label-long"><xsl:with-param name='efficiency' select='Rating' /></xsl:call-template>
                </span>
            </h2>
            <div class="void-superiority weapons">
                <xsl:apply-templates select="GeneralWeapons/WeaponReport"/>
            </div>
            <div class="engagement-log">
                <xsl:apply-templates select="EngagementLog/CraftEngagementReport"/>
            </div>
        </div>
    </xsl:template>
    
    <xsl:template match="WeaponReport">
        <xsl:choose>
            <xsl:when test="@xsi:type='CraftMissileReport'">
                <xsl:call-template name="missile-report">
                    <xsl:with-param name="section" select="."/>
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="@xsi:type='ContinuousWeaponReport'">
                <xsl:apply-templates select="."/>
            </xsl:when>
            <xsl:when test="@xsi:type='DiscreteWeaponReport'">
                <xsl:apply-templates select="."/>
            </xsl:when>
            <xsl:otherwise></xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="CraftMissileReport" name="missile-report">
        <xsl:variable name="desc">
            <p>
            <xsl:value-of select="MissileDesc" disable-output-escaping="yes" />
            </p>
        </xsl:variable>
        <div class="weapon-report missile">
            <xsl:call-template name="weapon-image">
                <xsl:with-param name="name" select="MissileBodyKey" />
            </xsl:call-template>
            <h3><xsl:value-of select="MissileName" /></h3>
            <p class="configuration">
                <xsl:call-template name="missile-desc">
                    <xsl:with-param name="desc" select="$desc" />
                </xsl:call-template>
            </p>
            <div class="stats">
                <dl>
                    <div class='half-line'>
                        <dt>Sortied</dt>
                        <dd><xsl:value-of select="TotalSortied" /></dd>
                    </div>
                    <div class='half-line'>
                        <dt>Fired/Lost</dt>
                        <dd>
                            <xsl:value-of select="TotalExpended" />
                            <xsl:text>/</xsl:text>
                            <xsl:value-of select="TotalLost" />
                        </dd>
                    </div>
                    <div class='half-line'>
                        <dt>Dmg Potential</dt>
                        <dd><xsl:value-of select="format-number(IndividualDamagePotential * TotalSortied, '###,###,###')" /></dd>
                    </div>
                    <div class='half-line'>
                        <dt>Actual Dmg</dt>
                        <dd>
                            <xsl:value-of select="format-number(TotalDamageDone, '###,###,###')" />
                            (<xsl:value-of select="format-number(TotalDamageDone div (IndividualDamagePotential * TotalExpended), '###%')" />)
                        </dd>
                    </div>
                </dl>
            </div>
            <div class="missile-hits">
                <dl>
                    <dt class="hits">Hits</dt>
                    <dd><xsl:value-of select="Hits" /></dd>
                    <dt class="misses">Misses</dt>
                    <dd><xsl:value-of select="Misses" /></dd>
                    <dt class="softkill">Soft-kills</dt>
                    <dd><xsl:value-of select="Softkills" /></dd>
                    <dt class="hardkill">Hard-kills</dt>
                    <dd><xsl:value-of select="Hardkills" /></dd>
                </dl>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="CraftEngagementReport">
        <xsl:variable name="allied_team" select="ancestor::TeamReportOfShipBattleReportCraftBattleReport/TeamID"/>
        <xsl:variable name="owner_id" select="ancestor::AARPlayerReportOfShipBattleReportCraftBattleReport/PlayerID"/>
        <div class = "engagement-header">
        <xsl:attribute name="style">width: 50%;</xsl:attribute>
            <h4>
                Engagement <xsl:value-of select="EngagementID"/>
                <xsl:text> - </xsl:text>
                <xsl:choose>
                    <xsl:when test="$allied_team = Victor">
                        <span style="color: hsl(120, 100%, 50%);">Victory</span>
                    </xsl:when>
                    <xsl:otherwise>
                        <span style="color: red;">Defeat</span>
                    </xsl:otherwise>
                </xsl:choose>
            </h4>
        </div>
        <div class="craft-engagement">
            <div class="participants">

                <xsl:choose>
                    <xsl:when test="$allied_team = 'TeamA'">
                        <div class="craft-group">
                            <xsl:attribute name="style">transform: scaleX(-1);</xsl:attribute>
                            <xsl:apply-templates select="TeamAParticipants/Participant">
                                <xsl:with-param name="color" select="'rgb(55, 180, 230)'"/>
                                <xsl:with-param name="design" select="ancestor::CraftBattleReport/DesignKey"/>
                            </xsl:apply-templates>
                        </div>
                        <div class='divider-craft'></div>
                        <div class="craft-group">
                            <xsl:apply-templates select="TeamBParticipants/Participant">
                                <xsl:with-param name="color" select="'red'"/>
                                <xsl:with-param name="design" select="ancestor::CraftBattleReport/DesignKey"/>
                            </xsl:apply-templates>
                            <xsl:call-template name="draw-circle"></xsl:call-template>
                            <xsl:call-template name="draw-circle"></xsl:call-template>
                            <xsl:call-template name="draw-circle"></xsl:call-template>
                            <xsl:call-template name="draw-circle"></xsl:call-template>
                            <xsl:call-template name="draw-circle"></xsl:call-template>
                            <xsl:call-template name="draw-circle"></xsl:call-template>
                            <xsl:call-template name="draw-circle"></xsl:call-template>
                            <xsl:call-template name="draw-circle"></xsl:call-template>
                            <xsl:call-template name="draw-circle"></xsl:call-template>
                            <xsl:call-template name="draw-circle"></xsl:call-template>
                            <xsl:call-template name="draw-circle"></xsl:call-template>
                        </div>
                    </xsl:when>
                    <xsl:otherwise>
                        <div class="craft-group">
                            <xsl:attribute name="style">transform: scaleX(-1);</xsl:attribute>
                            <xsl:apply-templates select="TeamBParticipants/Participant">
                                <xsl:with-param name="color" select="'rgb(55, 180, 230)'"/>
                                <xsl:with-param name="design" select="ancestor::CraftBattleReport/DesignKey"/>
                            </xsl:apply-templates>
                        </div>
                        <div class='divider-craft'></div>

                        <div class="craft-group">
                            <xsl:apply-templates select="TeamAParticipants/Participant">
                                <xsl:with-param name="color" select="'red'"/>
                                <xsl:with-param name="design" select="ancestor::CraftBattleReport/DesignKey"/>
                            </xsl:apply-templates>
                            <xsl:call-template name="draw-circle"></xsl:call-template>
                            <xsl:call-template name="draw-circle"></xsl:call-template>
                            <xsl:call-template name="draw-circle"></xsl:call-template>
                            <xsl:call-template name="draw-circle"></xsl:call-template>
                            <xsl:call-template name="draw-circle"></xsl:call-template>
                            <xsl:call-template name="draw-circle"></xsl:call-template>
                            <xsl:call-template name="draw-circle"></xsl:call-template>
                            <xsl:call-template name="draw-circle"></xsl:call-template>
                            <xsl:call-template name="draw-circle"></xsl:call-template>
                            <xsl:call-template name="draw-circle"></xsl:call-template>
                        </div>
                    </xsl:otherwise>
                </xsl:choose>
                
            </div>
            <div class="stats craft-stats">
                <div>
                    <xsl:text>Start Time: </xsl:text>
                    <xsl:call-template name="timestamp-from-seconds">
                        <xsl:with-param name="seconds" select="StartTime" />
                    </xsl:call-template>
                </div>
                <div>
                    <xsl:text>Duration: </xsl:text>
                    <xsl:call-template name="timestamp-from-seconds">
                        <xsl:with-param name="seconds" select="EndTime - StartTime" />
                    </xsl:call-template>
                </div>
                <div>
                    <xsl:text>Friendly Craft: </xsl:text>
                    <xsl:choose>
                        <xsl:when test="$allied_team = 'TeamA'">
                            <xsl:value-of select="count(TeamAParticipants/Participant[./OwnerId= $owner_id and ./SaveKey = ancestor::CraftBattleReport/DesignKey])" />
                            <xsl:if test="count(TeamAParticipants/Participant[./SaveKey != ancestor::CraftBattleReport/DesignKey]) > 0">
                                (+<xsl:value-of select="count(TeamAParticipants/Participant[./SaveKey != ancestor::CraftBattleReport/DesignKey])" />)
                            </xsl:if>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="count(TeamBParticipants/Participant[./OwnerId= $owner_id and ./SaveKey = ancestor::CraftBattleReport/DesignKey])" />
                            <xsl:if test="count(TeamBParticipants/Participant[./SaveKey != ancestor::CraftBattleReport/DesignKey]) > 0">
                                (+<xsl:value-of select="count(TeamBParticipants/Participant[./SaveKey != ancestor::CraftBattleReport/DesignKey])" />)
                            </xsl:if>
                        </xsl:otherwise>
                    </xsl:choose>
                </div>
                <div>
                    <xsl:text>Enemy Craft: </xsl:text>
                    <xsl:choose>
                        <xsl:when test="$allied_team = 'TeamA'">
                            <xsl:value-of select="count(TeamBParticipants/Participant)" />
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="count(TeamAParticipants/Participant)" />
                        </xsl:otherwise>
                    </xsl:choose>
                </div>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="Participant" name="draw-circle">
        <xsl:param name="color" select="'black'"/>
        <xsl:param name="design" select="true()"/>
            <svg width="40" height="40" xmlns="http://www.w3.org/2000/svg">
                <circle cx="20" cy="20" r="20" fill="{$color}" stroke="black" stroke-width="2"/>

                <xsl:if test="not($design = SaveKey)">
                    <circle cx="20" cy="20" r="8" fill="black"/>
                </xsl:if>

                <xsl:if test="Destroyed = 'true'">
                    <line x1="0" y1="0" x2="40" y2="40" stroke="black" stroke-width="5"/>
                    <line x1="0" y1="40" x2="40" y2="0" stroke="black" stroke-width="5"/>
                </xsl:if>
            </svg>
    </xsl:template>
    



    <xsl:template name="weapon-image">
        <xsl:param name="name"/>
        <xsl:variable name="e90">Stock/E90 'Blanket' Jammer</xsl:variable>
        <xsl:variable name="e70">Stock/E70 'Interruption' Jammer</xsl:variable>
        <xsl:variable name="e71">Stock/E71 'Hangup' Jammer</xsl:variable>
        <xsl:variable name="e55">Stock/E55 'Spotlight' Illuminator</xsl:variable>
        <xsl:variable name="e57">Stock/E57 'Floodlight' Illuminator</xsl:variable>
        <xsl:variable name="mk90">Stock/Mk90 'Aurora' PDT</xsl:variable>
        <xsl:variable name="mk20">Stock/Mk20 'Defender' PDT</xsl:variable>
        <xsl:variable name="mk29">Stock/Mk29 'Stonewall' PDT</xsl:variable>
        <xsl:variable name="mk25">Stock/Mk25 'Rebound' PDT</xsl:variable>
        <xsl:variable name="mk95">Stock/Mk95 'Sarissa' PDT</xsl:variable>
        <xsl:variable name="mk61">Stock/Mk61 Cannon</xsl:variable>
        <xsl:variable name="mk62">Stock/Mk62 Cannon</xsl:variable>
        <xsl:variable name="mk64">Stock/Mk64 Cannon</xsl:variable>
        <xsl:variable name="mk66">Stock/Mk66 Cannon</xsl:variable>
        <xsl:variable name="mk81">Stock/Mk81 Railgun</xsl:variable>
        <xsl:variable name="mk82">Stock/Mk82 Railgun</xsl:variable>
        <xsl:variable name="sgm1">Stock/SGM-1 Body</xsl:variable>
        <xsl:variable name="ea12">Stock/EA12 Chaff Decoy</xsl:variable>
        <xsl:variable name="ea14">Stock/EA14 Chaff Decoy</xsl:variable>
        <xsl:variable name="ea20">Stock/EA20 Flare Decoy</xsl:variable>
        <xsl:variable name="ea99">Stock/EA99 Active Decoy</xsl:variable>
        <xsl:variable name="sgmh3">Stock/SGM-H-3 Body</xsl:variable>
        <xsl:variable name="sgm3">Stock/SGT-3 Body</xsl:variable>
        <xsl:variable name="sgm2">Stock/SGM-2 Body</xsl:variable>
        <xsl:variable name="sgmh2">Stock/SGM-H-2 Body</xsl:variable>
        <xsl:variable name="sdm1">Stock/SDM-1 Body</xsl:variable>
        <xsl:variable name="sdm2">Stock/SDM-2 Body</xsl:variable>
        <xsl:variable name="mk68">Stock/Mk68 Cannon</xsl:variable>
        <xsl:variable name="mk610">Stock/Mk610 Beam Turret</xsl:variable>
        <xsl:variable name="mk600">Stock/Mk600 Beam Cannon</xsl:variable>
        <xsl:variable name="mk550">Stock/Mk550 Mass Driver</xsl:variable>
        <xsl:variable name="e20">Stock/E20 'Lighthouse' Illuminator</xsl:variable>
        <xsl:variable name="j360">Stock/J360 Jammer</xsl:variable>
        <xsl:variable name="j75">Stock/J75 Jammer</xsl:variable>
        <xsl:variable name="l50">Stock/L50 Laser Dazzler</xsl:variable>
        <xsl:variable name="t81">Stock/T81 Plasma Cannon</xsl:variable>
        <xsl:variable name="c53">Stock/C53 Cannon</xsl:variable>
        <xsl:variable name="t20">Stock/T20 Cannon</xsl:variable>
        <xsl:variable name="p60">Stock/P60 Laser PDT</xsl:variable>
        <xsl:variable name="p11">Stock/P11 PDT</xsl:variable>
        <xsl:variable name="c81">Stock/C81 Plasma Cannon</xsl:variable>
        <xsl:variable name="cm4d1">Stock/Decoy Container (Clipper)</xsl:variable>
        <xsl:variable name="cm4d2">Stock/Decoy Container (Line Ship)</xsl:variable>
        <xsl:variable name="cm4r">Stock/Rocket Container</xsl:variable>
        <xsl:variable name="cm4m">Stock/Mine Container</xsl:variable>
        <xsl:variable name="cm4">Stock/CM-4 Body</xsl:variable>
        <xsl:variable name="cm4sub">$MODMIS$/CM-400 Container</xsl:variable>
        <xsl:variable name="cms4">Stock/CM-S-4 Body</xsl:variable>
        <xsl:variable name="m30">Stock/S3 Mine</xsl:variable>
        <xsl:variable name="m30net">Stock/S3 Net Mine</xsl:variable>
        <xsl:variable name="m30sprint">Stock/S3 Sprint Mine</xsl:variable>
        <xsl:variable name="r1">Stock/S0 Rocket</xsl:variable>
        <xsl:variable name="r2">Stock/S1 Rocket</xsl:variable>
        <xsl:variable name="r3">Stock/S3 Rocket</xsl:variable>
        <xsl:variable name="kbu15">Stock/S1 Glide Bomb</xsl:variable>
        <xsl:variable name="kbu22">Stock/S2 Glide Bomb</xsl:variable>
        <xsl:variable name="fbu15">Stock/S1 Prox Bomb</xsl:variable>
        <xsl:variable name="cbu40">Stock/S3 Cluster Bomb</xsl:variable>
        <xsl:variable name="p20">Stock/P20 Flak PDT</xsl:variable>
        <xsl:variable name="t30">Stock/T30 Cannon</xsl:variable>
        <xsl:variable name="te45">Stock/TE45 Mass Driver</xsl:variable>
        <xsl:variable name="c90">Stock/C90 Cannon</xsl:variable>
        <xsl:variable name="c65">Stock/C65 Cannon</xsl:variable>
        <xsl:variable name="j15">Stock/J15 Jammer</xsl:variable>
        <xsl:variable name="mk65">Stock/Mk65 Cannon</xsl:variable>
        <xsl:variable name="c54">Stock/C54 Cannon</xsl:variable>
        <xsl:variable name="c30">Stock/C30 Cannon</xsl:variable>
        <img class="weapon-image">
            <xsl:attribute name="src">
                <xsl:choose>
                    <xsl:when test="$name = $e90">resources/modules/e90.svg</xsl:when>
                    <xsl:when test="$name = $e70">resources/modules/e70.svg</xsl:when>
                    <xsl:when test="$name = $e71">resources/modules/e71.svg</xsl:when>
                    <xsl:when test="$name = $e55">resources/modules/e55.svg</xsl:when>
                    <xsl:when test="$name = $e57">resources/modules/e57.svg</xsl:when>
                    <xsl:when test="$name = $mk61">resources/modules/mk61.svg</xsl:when>
                    <xsl:when test="$name = $mk62">resources/modules/mk62.svg</xsl:when>
                    <xsl:when test="$name = $mk90">resources/modules/mk90.svg</xsl:when>
                    <xsl:when test="$name = $mk20">resources/modules/mk20.svg</xsl:when>
                    <xsl:when test="$name = $mk29">resources/modules/mk29.svg</xsl:when>
                    <xsl:when test="$name = $mk25">resources/modules/mk25.svg</xsl:when>
                    <xsl:when test="$name = $mk95">resources/modules/mk95.svg</xsl:when>
                    <xsl:when test="$name = $mk64">resources/modules/mk64.svg</xsl:when>
                    <xsl:when test="$name = $mk66">resources/modules/mk66.svg</xsl:when>
                    <xsl:when test="$name = $mk81">resources/modules/mk81.svg</xsl:when>
                    <xsl:when test="$name = $mk82">resources/modules/mk82.svg</xsl:when>
                    <xsl:when test="$name = $sgm1">resources/modules/sgm1.svg</xsl:when>
                    <xsl:when test="$name = $ea12">resources/modules/ea12.svg</xsl:when>
                    <xsl:when test="$name = $ea14">resources/modules/ea12.svg</xsl:when>
                    <xsl:when test="$name = $ea20">resources/modules/ea20.svg</xsl:when>
                    <xsl:when test="$name = $ea99">resources/modules/ea99.svg</xsl:when>
                    <xsl:when test="$name = $sgmh3">resources/modules/sgm-h-3.svg</xsl:when>
                    <xsl:when test="$name = $sgm3">resources/modules/sgm3.svg</xsl:when>
                    <xsl:when test="$name = $sgm2">resources/modules/sgm2.svg</xsl:when>
                    <xsl:when test="$name = $sgmh2">resources/modules/sgm-h-2.svg</xsl:when>
                    <xsl:when test="$name = $sdm1">resources/modules/sdm1.svg</xsl:when>
                    <xsl:when test="$name = $sdm2">resources/modules/sdm2.svg</xsl:when>
                    <xsl:when test="$name = $mk68">resources/modules/mk68.svg</xsl:when>
                    <xsl:when test="$name = $mk610">resources/modules/mk610.svg</xsl:when>
                    <xsl:when test="$name = $mk600">resources/modules/mk600.svg</xsl:when>
                    <xsl:when test="$name = $mk550">resources/modules/mk550.svg</xsl:when>
                    <xsl:when test="$name = $e20">resources/modules/e20.svg</xsl:when>
                    <xsl:when test="$name = $j360">resources/modules/j360.svg</xsl:when>
                    <xsl:when test="$name = $j75">resources/modules/j360.svg</xsl:when>
                    <xsl:when test="$name = $l50">resources/modules/l50.svg</xsl:when>
                    <xsl:when test="$name = $t81">resources/modules/t81.svg</xsl:when>
                    <xsl:when test="$name = $c53">resources/modules/c53.svg</xsl:when>
                    <xsl:when test="$name = $t20">resources/modules/t20.svg</xsl:when>
                    <xsl:when test="$name = $p60">resources/modules/p60.svg</xsl:when>
                    <xsl:when test="$name = $p11">resources/modules/p11.svg</xsl:when>
                    <xsl:when test="$name = $c81">resources/modules/c81.svg</xsl:when>
                    <xsl:when test="$name = $cm4d1">resources/modules/cm4d1.svg</xsl:when>
                    <xsl:when test="$name = $cm4d2">resources/modules/cm4d2.svg</xsl:when>
                    <xsl:when test="$name = $cm4r">resources/modules/cm4r.svg</xsl:when>
                    <xsl:when test="$name = $cm4m">resources/modules/cm4m.svg</xsl:when>
                    <xsl:when test="$name = $cm4">resources/modules/cm4.svg</xsl:when>
                    <xsl:when test="$name = $cm4sub">resources/modules/cm4r.svg</xsl:when>
                    <xsl:when test="$name = $cms4">resources/modules/cm4.svg</xsl:when>
                    <xsl:when test="$name = $m30">resources/modules/m30.svg</xsl:when>
                    <xsl:when test="$name = $m30net">resources/modules/m30.svg</xsl:when>
                    <xsl:when test="$name = $m30sprint">resources/modules/m30.svg</xsl:when>
                    <xsl:when test="$name = $r2">resources/modules/r2.svg</xsl:when>
                    <xsl:when test="$name = $r1">resources/modules/r1.svg</xsl:when>
                    <xsl:when test="$name = $r3">resources/modules/r3.svg</xsl:when>
                    <xsl:when test="$name = $kbu15">resources/modules/kbu15.svg</xsl:when>
                    <xsl:when test="$name = $kbu22">resources/modules/kbu22.svg</xsl:when>
                    <xsl:when test="$name = $fbu15">resources/modules/fbu.svg</xsl:when>
                    <xsl:when test="$name = $cbu40">resources/modules/cbu.svg</xsl:when>
                    <xsl:when test="$name = $p20">resources/modules/p20.svg</xsl:when>
                    <xsl:when test="$name = $t30">resources/modules/t30.svg</xsl:when>
                    <xsl:when test="$name = $te45">resources/modules/te45.svg</xsl:when>
                    <xsl:when test="$name = $c90">resources/modules/c90.svg</xsl:when>
                    <xsl:when test="$name = $c65">resources/modules/c65.svg</xsl:when>
                    <xsl:when test="$name = $j15">resources/modules/j15.svg</xsl:when>
                    <xsl:when test="$name = $mk65">resources/modules/mk65.svg</xsl:when>
                    <xsl:when test="$name = $c54">resources/modules/c53.svg</xsl:when>
                    <xsl:when test="$name = $c30">resources/modules/c30.svg</xsl:when>
                    <xsl:otherwise>resources/modules/blank.svg</xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>
            <xsl:attribute name="class">
                <xsl:choose>
                    <xsl:when test="$name=$mk600">weapon-image straight</xsl:when>
                    <xsl:when test="$name=$mk550">weapon-image straight</xsl:when>
                    <xsl:when test="$name=$l50">weapon-image straight</xsl:when>
                    <xsl:when test="$name=$c53">weapon-image straight</xsl:when>
                    <xsl:when test="$name=$c81">weapon-image straight</xsl:when>
                    <xsl:when test="$name=$cm4d1">weapon-image straight</xsl:when>
                    <xsl:when test="$name=$cm4d2">weapon-image straight</xsl:when>
                    <xsl:when test="$name=$cm4r">weapon-image straight</xsl:when>
                    <xsl:when test="$name=$cm4m">weapon-image straight</xsl:when>
                    <xsl:when test="$name=$cm4">weapon-image straight</xsl:when>
                    <xsl:when test="$name=$cm4sub">weapon-image straight</xsl:when>
                    <xsl:when test="$name=$cms4">weapon-image straight</xsl:when>
                    <xsl:when test="$name=$c90">weapon-image straight</xsl:when>
                    <xsl:when test="$name=$c65">weapon-image straight</xsl:when>
                    <xsl:when test="$name=$te45">weapon-image straight</xsl:when>
                    <xsl:when test="$name=$c54">weapon-image straight</xsl:when>
                    <xsl:when test="$name=$sdm1">weapon-image straight</xsl:when>
                    <xsl:when test="$name=$sdm2">weapon-image straight</xsl:when>
                    <xsl:when test="$name=$c30">weapon-image straight</xsl:when>
                    <xsl:when test="$name=$r1">weapon-image straight</xsl:when>
                    <xsl:when test="$name=$r3">weapon-image straight</xsl:when>
                    <xsl:when test="$name=$kbu15">weapon-image straight</xsl:when>
                    <xsl:when test="$name=$kbu22">weapon-image straight</xsl:when>
                    <xsl:when test="$name=$fbu15">weapon-image straight</xsl:when>
                    <xsl:when test="$name=$cbu40">weapon-image straight</xsl:when>
                    <xsl:otherwise>weapon-image</xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>
        </img>
    </xsl:template>

    <xsl:template name="timestamp-from-seconds">
        <xsl:param name="seconds" />
        <xsl:if test="$seconds &lt; 0">-</xsl:if>
        <xsl:variable name="abs-seconds" select="$seconds * (1 - 2*($seconds &lt; 0))" />
        <xsl:variable name="hours" select="floor($abs-seconds div 3600)" />
        <xsl:variable name="seconds-for-minutes" select="$abs-seconds - ($hours * 3600)" />
        <xsl:variable name="minutes" select="floor($seconds-for-minutes div 60)" />
        <xsl:variable name="seconds-left" select="$seconds-for-minutes - ($minutes * 60)" />
        <xsl:choose>
            <xsl:when test="$hours != 0"><xsl:value-of select="$hours" />:<xsl:value-of select="format-number($minutes, '00')" /></xsl:when>
            <xsl:otherwise><xsl:value-of select="$minutes" /></xsl:otherwise>
        </xsl:choose>:<xsl:value-of select="format-number($seconds-left, '00')" />
    </xsl:template>

    <xsl:template name="missile-desc">
        <xsl:param name="desc" />
        <xsl:variable name="cleaned-desc">
            <xsl:call-template name="replace-missile-sockets">
                <xsl:with-param name="text" select="$desc" />
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="before-color">
            <xsl:call-template name="missile-desc-before-color">
                <xsl:with-param name="desc" select='$cleaned-desc' />
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="rest-with-color">
            <xsl:value-of select="substring($cleaned-desc, string-length($before-color))" />
        </xsl:variable>
        <xsl:variable name="rest">
            <xsl:call-template name="missile-desc-after-color">
                <xsl:with-param name="desc" select="$cleaned-desc" />
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="color">
            <xsl:call-template name="color">
                <xsl:with-param name="color" select="$rest-with-color" />
            </xsl:call-template>
        </xsl:variable>
        <xsl:value-of select="translate($before-color, '-', '&#x2013;')" />
        <span>
            <xsl:attribute name="style">
                color: <xsl:value-of select='$color' />;
            </xsl:attribute>
            <xsl:call-template name="in-color">
                <xsl:with-param name="desc" select="$rest-with-color" />
            </xsl:call-template>
        </span>
        <xsl:choose>
            <xsl:when test="string-length($desc) > string-length($rest)">
                <xsl:choose>
                    <xsl:when test="string-length($rest) > 0">
                        <xsl:call-template name="missile-desc">
                            <xsl:with-param name="desc" select="$rest" />
                        </xsl:call-template>
                    </xsl:when>
                    <xsl:otherwise><xsl:value-of select="translate($cleaned-desc, '-', '&#x2013;')" /></xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise><xsl:value-of select="translate($rest, '-', '&#x2013;')" /></xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="missile-desc-before-color">
        <xsl:param name="desc" />
        <xsl:value-of select="substring-before($desc, '&lt;color')" />
    </xsl:template>
    <xsl:template name="missile-desc-after-color">
        <xsl:param name="desc" />
        <xsl:value-of select="substring-after($desc, '&lt;/color&gt;')" />
    </xsl:template>
    <xsl:template name="color">
        <xsl:param name="color"/>
        <xsl:value-of select="substring-before(substring-after($color, '='), '&gt;')" />
    </xsl:template>
    <xsl:template name="in-color">
        <xsl:param name="desc" />
        <xsl:value-of select="substring-before(substring-after($desc, '&gt;'), '&lt;')" />
    </xsl:template>

    <xsl:template name="replace">
        <xsl:param name="text"/>
        <xsl:param name="find"/>
        <xsl:param name="replace"/>
        <xsl:choose>
            <xsl:when test="contains($text, $find)">
                <xsl:value-of select="substring-before($text, $find)" />
                <xsl:value-of select="$replace" />
                <xsl:call-template name="replace">
                    <xsl:with-param name="text" select="substring-after($text, $find)" />
                    <xsl:with-param name="find" select="$find" />
                    <xsl:with-param name="replace" select="$replace" />
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$text" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="replace-missile-sockets">
        <xsl:param name="text"/>
        <xsl:variable name="hei_rep">
            <xsl:call-template name="replace">
                <xsl:with-param name="text" select="$text" />
                <xsl:with-param name="find" select="'$MISSILEWARHEAD_SHORT_HEIMPACT'" />
                <xsl:with-param name="replace" select="'HE SHAPED'" />
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="hekp_rep">
            <xsl:call-template name="replace">
                <xsl:with-param name="text" select="$hei_rep" />
                <xsl:with-param name="find" select="'$MISSILEWARHEAD_SHORT_HEKP'" />
                <xsl:with-param name="replace" select="'HEKP'" />
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="he_frag_rep">
            <xsl:call-template name="replace">
                <xsl:with-param name="text" select="$hekp_rep" />
                <xsl:with-param name="find" select="'$MISSILEWARHEAD_SHORT_BLASTFRAG'" />
                <xsl:with-param name="replace" select="'HE FRAG'" />
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="direct_rep">
            <xsl:call-template name="replace">
                <xsl:with-param name="text" select="$he_frag_rep" />
                <xsl:with-param name="find" select="'$MISSILEGUIDANCE_MODE_DIRECT'" />
                <xsl:with-param name="replace" select="'DIRECT'" />
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="cruise_rep">
            <xsl:call-template name="replace">
                <xsl:with-param name="text" select="$direct_rep" />
                <xsl:with-param name="find" select="'$MISSILEGUIDANCE_MODE_CRUISE'" />
                <xsl:with-param name="replace" select="'CRUISE'" />
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="command_rep">
            <xsl:call-template name="replace">
                <xsl:with-param name="text" select="$cruise_rep" />
                <xsl:with-param name="find" select="'$MISSILESEEKER_MODE_COMMAND_ABBREV'" />
                <xsl:with-param name="replace" select="'CMD'" />
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="active_rep">
            <xsl:call-template name="replace">
                <xsl:with-param name="text" select="$command_rep" />
                <xsl:with-param name="find" select="'$MISSILESEEKER_MODE_ACTIVE_ABBREV'" />
                <xsl:with-param name="replace" select="'ACT'" />
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="passive_rep">
            <xsl:call-template name="replace">
                <xsl:with-param name="text" select="$active_rep" />
                <xsl:with-param name="find" select="'$MISSILESEEKER_MODE_PASSIVE_ABBREV'" />
                <xsl:with-param name="replace" select="'PSV'" />
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="semiactive_rep">
            <xsl:call-template name="replace">
                <xsl:with-param name="text" select="$passive_rep" />
                <xsl:with-param name="find" select="'$MISSILESEEKER_MODE_SEMIACTIVE_ABBREV'" />
                <xsl:with-param name="replace" select="'SAH'" />
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="hoj_rep">
            <xsl:call-template name="replace">
                <xsl:with-param name="text" select="$semiactive_rep" />
                <xsl:with-param name="find" select="'$MISSILESEEKER_MODE_ARAD_HOJ_ABBREV'" />
                <xsl:with-param name="replace" select="'HOJ'" />
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="arad_rep">
            <xsl:call-template name="replace">
                <xsl:with-param name="text" select="$hoj_rep" />
                <xsl:with-param name="find" select="'$MISSILESEEKER_MODE_ARAD_PULSED_ABBREV'" />
                <xsl:with-param name="replace" select="'ARAD'" />
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="none_rep">
            <xsl:call-template name="replace">
                <xsl:with-param name="text" select="$arad_rep" />
                <xsl:with-param name="find" select="'$MISSILESTAT_NONE'" />
                <xsl:with-param name="replace" select="'NONE'" />
            </xsl:call-template>
        </xsl:variable>
        <xsl:value-of select="$none_rep" />
    </xsl:template>

</xsl:stylesheet>
