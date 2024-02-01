﻿<!-- Created with Inkscape (http://www.inkscape.org/) -->
<xsl:stylesheet version="2.0" exclude-result-prefixes="xs" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" omit-xml-declaration="yes" indent="yes" />
  <xsl:template name="cargo-feeder-dc-board">
    <xsl:param name="ship-report" />
    <svg width="87.843399mm" height="45.658253mm" viewBox="0 0 87.843399 45.658253" version="1.1" id="svg8533" xml:space="preserve" class="cargo-feeder-dc-board" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
      <defs id="defs8530" />
      <g id="layer1" transform="translate(-23.043704,-15.374003)" />
      <g id="frame" style="stroke:#8c8c8c;stroke-opacity:1" transform="translate(-23.043704,-15.374003)">
        <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.264583px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" d="m 32.304516,35.378149 v 19.006346 l 12.419989,4.139996 h 58.900855 l 6.58636,-4.014541 V 35.064512 l -6.52363,-3.889087 H 44.724505 Z" id="path12852" />
        <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.264583px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" d="m 67.745392,58.524491 v 1.442725 h 24.902702 v -1.442725" id="path12854" />
        <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.264583px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" d="m 67.714028,31.043133 v -1.373161 h 24.996794 v 1.505453" id="path12856" />
        <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.264583px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" d="m 110.21172,41.399962 -6.08455,-1.066363 H 43.752232 l -2.195454,0.815454 V 48.5195 l 3.010908,0.846818 h 59.841764 l 5.80227,-0.878182" id="path12858" />
        <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.264583px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" d="M 43.752232,40.333599 32.304516,37.416782" id="path12860" />
        <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.264583px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" d="m 44.567686,49.366318 -12.24022,2.715643" id="path12862" />
        <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.264583px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" d="m 58.932217,31.175425 v -4.767268 l 2.571816,-4.014542 -0.721363,-1.034999 h -9.095446 v 4.673178 h -4.924086 l -1.458407,1.458409 v 3.685222" id="path12864" />
        <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.264583px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" d="m 46.763138,26.031794 -1.003636,-0.846818 v -6.805902 c 0,-3.384334 6.053177,-4.251892 6.053177,0 v 2.979542" id="path12866" />
        <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.264583px;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1" d="m 32.268144,37.169354 h -1.330645 l -0.443548,0.443548 -5.305726,-1.421665 h -1.391854 l -0.620376,0.358175 v 16.587684 l 0.828821,0.47852 h 0.966958 l 5.380604,-1.441728 0.452593,0.452594 h 1.507527" id="path12868" />
      </g>
      <g id="sockets" transform="translate(-23.043704,-15.374003)">
        <xsl:apply-templates select="$ship-report/PartStatus/PartDamage" mode="cargo-feeder-dc-board" />
      </g>
    </svg>
  </xsl:template>
  <xsl:template match="PartDamage" mode="cargo-feeder-dc-board">
    <xsl:variable name="percent" select="HealthPercent" />
    <xsl:choose>
      <xsl:when test="Key = 'M9r1GWtIuk-Kge3e1Jv3NQ'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.239504;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-M9r1GWtIuk-Kge3e1Jv3NQ" width="5.3225803" height="6.6999998" x="24.217743" y="37.879032" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.239504;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.239504;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'u4Jziw5oHkSanBKZFdf6-A'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.239504;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-u4Jziw5oHkSanBKZFdf6-A" width="5.3225803" height="6.6999998" x="24.217743" y="45.04113" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.239504;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.239504;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'MTqEfSX6rE-CQf9yVTGZqw'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.125253;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-MTqEfSX6rE-CQf9yVTGZqw" width="1" height="1" x="34.704029" y="35.034138" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.125253;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.125253;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'p9lDLMa6RESbXX-ViNuXjQ'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.125253;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-p9lDLMa6RESbXX-ViNuXjQ" width="1" height="1" x="35.889515" y="35.034138" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.125253;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.125253;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'PEaP-6luhUaG763R-QNSOg'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.113295;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-PEaP-6luhUaG763R-QNSOg" width="1" height="1" x="34.704029" y="53.539379" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.113295;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.113295;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'OlXyeNgM7kSunjYupXxxDQ'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.113295;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-OlXyeNgM7kSunjYupXxxDQ" width="1" height="1" x="35.889515" y="53.539379" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.113295;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.113295;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'HNv6B-78FEuhV8YT9A6uZw'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-HNv6B-78FEuhV8YT9A6uZw" width="12.508064" height="7.983871" x="33.354839" y="41.161293" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'ZnlEZGIIoESopQfU1jGKdA'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.10628;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-ZnlEZGIIoESopQfU1jGKdA" width="1" height="1" x="46.883068" y="44.653229" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.10628;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.10628;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'YPTEN8By9kSUuNknb5YxvA'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.10628;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-YPTEN8By9kSUuNknb5YxvA" width="1" height="1" x="48.02729" y="44.653229" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.10628;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.10628;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = '9K_1ZNCgFESrvaoQMOH3yw'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-9K_1ZNCgFESrvaoQMOH3yw" width="10.112903" height="10.379031" x="51.274193" y="39.830643" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'gDQghm5iik2syYcoJqUPFg'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-gDQghm5iik2syYcoJqUPFg" width="14.814516" height="2.6612904" x="45.862904" y="32.822578" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'zj9tWS4kP0qww93h23r_mQ'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-zj9tWS4kP0qww93h23r_mQ" width="4.1693549" height="4.0806451" x="47.016129" y="26.524193" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = '4dpVMvs8nUmd-5az35rT2Q'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-4dpVMvs8nUmd-5az35rT2Q" width="6.1209679" height="2.0403225" x="53.225803" y="21.645163" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'wgLiLSBRVUS0KoWi83D4gA'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-wgLiLSBRVUS0KoWi83D4gA" width="6.1209679" height="2.0403225" x="46.525135" y="56.064526" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'gb6_3kWBY0KlEWeex3ruDg'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.192268;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-gb6_3kWBY0KlEWeex3ruDg" width="3" height="3" x="62.362904" y="43.032257" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.192268;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.192268;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = '_y-Bd-EWjUeMIrmzG3UxvQ'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.192268;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-_y-Bd-EWjUeMIrmzG3UxvQ" width="3" height="3" x="65.653229" y="43.032257" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.192268;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.192268;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'rGVFgJ8GyUePoRkz33c1sw'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-rGVFgJ8GyUePoRkz33c1sw" width="8.6048384" height="3.1048386" x="70.16935" y="42.979839" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'TTM8O-MUDky06__LwvSo8w'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-TTM8O-MUDky06__LwvSo8w" width="8.6048384" height="3.1048386" x="79.616936" y="42.979839" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'vtme83CXg0qDA4_YK6NqwA'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-vtme83CXg0qDA4_YK6NqwA" width="15.701612" height="4.5241933" x="71.677414" y="34.862904" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = '_hUvj899GkWP0bnjDN1ODw'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-_hUvj899GkWP0bnjDN1ODw" width="15.701612" height="4.5241933" x="71.677414" y="49.721775" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'N4KIOsNqeUGVAUrx5OW3DQ'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-N4KIOsNqeUGVAUrx5OW3DQ" width="15.701612" height="4.5241933" x="46.883064" y="51.052418" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'Z2uDs34J-ESu64-i9YGnxQ'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-Z2uDs34J-ESu64-i9YGnxQ" width="8.5161285" height="5.3225808" x="81.879028" y="55.709675" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'yN7f-9tEXEKlBNskqP6EbA'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-yN7f-9tEXEKlBNskqP6EbA" width="8.5161285" height="5.3225808" x="82.05645" y="28.830645" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'DaqWEX-8gEeIzYrhp8NIMw'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.217;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-DaqWEX-8gEeIzYrhp8NIMw" width="3" height="3" x="91.68145" y="36.016129" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.217;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.217;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'HvdEBsnpUUypPN4uW67paQ'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.217;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-HvdEBsnpUUypPN4uW67paQ" width="3" height="3" x="89.862907" y="50.875" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.217;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.217;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'iDdlfFwKkUO9HbumzymceA'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.217;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-iDdlfFwKkUO9HbumzymceA" width="3" height="3" x="93.375" y="50.875" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.217;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.217;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'zV-txxoSg0uR3v1OYh_Uxg'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.099059;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-zV-txxoSg0uR3v1OYh_Uxg" width="1" height="1" x="96.275978" y="44.697582" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.099059;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.099059;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'GBNEW4tPxUC8Eiu5Y06WEg'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.099059;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-GBNEW4tPxUC8Eiu5Y06WEg" width="1" height="1" x="97.516655" y="44.697582" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.099059;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.099059;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'Wipl66tXuEqAQAy9UIrRgw'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.13285;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-Wipl66tXuEqAQAy9UIrRgw" width="1" height="1" x="101.08598" y="31.918417" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.13285;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.13285;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'pFeOcPp8PkGfF4MMOmFT1g'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.13285;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-pFeOcPp8PkGfF4MMOmFT1g" width="1" height="1" x="102.30988" y="31.918417" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.13285;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.13285;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'zWbULDs0LUqBm3mVZdbZnw'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.112727;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-zWbULDs0LUqBm3mVZdbZnw" width="1" height="1" x="101.08598" y="56.73457" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.112727;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.112727;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'rn_jKvYfRkivJ_61v-tLbg'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.112727;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-rn_jKvYfRkivJ_61v-tLbg" width="1" height="1" x="102.30988" y="56.73457" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.112727;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.112727;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = '4V6twrIUcEKE11tom-tDXQ'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-4V6twrIUcEKE11tom-tDXQ" width="10.556452" height="6.6532254" x="100.33065" y="41.870968" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = '5TT_tAxSpUympM9ij-ppLg'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-5TT_tAxSpUympM9ij-ppLg" width="4.7903223" height="3.016129" x="104.76613" y="38.411289" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'WOlESfy8k0udY2yyOwph2g'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-WOlESfy8k0udY2yyOwph2g" width="4.7903223" height="3.016129" x="104.85484" y="48.967743" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>