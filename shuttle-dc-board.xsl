<!-- Created with Inkscape (http://www.inkscape.org/) -->
<xsl:stylesheet version="2.0" exclude-result-prefixes="xs" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" omit-xml-declaration="yes" indent="yes" />
  <xsl:template name="shuttle-dc-board">
    <xsl:param name="parts" />
    <svg width="89.930244mm" height="36.9007mm" viewBox="0 0 89.930244 36.9007" version="1.1" id="svg5" xml:space="preserve" class="shuttle-dc-board" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
      <defs id="defs2" />
      <g id="layer2" transform="translate(13.018548,132.79879)">
        <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.4;stroke-linecap:butt;stroke-linejoin:bevel;stroke-dasharray:none;stroke-opacity:1" d="M 5.3669355,-122.90726 H -4.967742 v 20.00403 H 6.8749999" id="path5227" />
        <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.4;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1" d="m 5.3669355,-123.91761 v 18.52021 l 5.9239635,9.299308 h 3.089315 v -27.819518 z" id="path5229" />
        <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.4;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1" d="m -1.2419355,-122.90726 v -1.53024 h 0.35483874 l 0.17741934,-0.17742 v -5.94355 l 2.04032262,-2.04032 h 2.7721773 l 0.1663306,0.16633 v 7.81754 l 0.1457312,0.25242 h 0.264551 l 0.1177449,0.11774 v 1.3375" id="path5231" />
        <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.4;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1" d="m 14.380214,-103.21371 h 5.943403 L 49.078628,-104.5 h 5.389113 l 17.187501,-0.90927 5.056452,-3.21573 v -5.63306 l -5.366936,-2.90525 H 14.380214" id="path5233" />
        <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.4;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1" d="m 15.681803,-103.21371 3.55977,2.91289 H 44.709677 L 49.078628,-104.5" id="path5235" />
        <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.4;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1" d="m 55.325404,-117.16331 -4.516361,-4.32362 -35.942693,-0.28227 v -0.8625 l -0.486136,-0.48614" id="path5237" />
        <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.4;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1" d="m 24.196693,-121.69592 v -4.79351 l -1.560174,-1.56017 H 12.43567 l -3.0853123,3.08531 v 1.04668" id="path5239" />
        <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.4;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1" d="m -4.967742,-120.04637 h -1.0423385 l -0.4879033,0.4879 -4.4798382,-1.30846 h -1.530242 l -0.310484,0.31048 v 15.30242 l 0.299395,0.2994 h 1.253024 l 4.7459679,-1.36392 0.3991935,0.3992 h 1.1532256 z" id="path5241" />
      </g>
      <g id="sockets" transform="translate(13.018548,132.79879)">
        <xsl:apply-templates select="$parts" mode="shuttle-dc-board" />
      </g>
    </svg>
  </xsl:template>
  <xsl:template match="PartDamage" mode="shuttle-dc-board">
    <xsl:variable name="percent" select="HealthPercent" />
    <xsl:choose>
      <xsl:when test="Key = 'cfY5UWz73UmXy5ZP187tJg'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.276193;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-cfY5UWz73UmXy5ZP187tJg" width="5.6330647" height="5.9000001" x="-12.330645" y="-119.22581" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.276193;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.276193;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'LqtO6BjEd06LFWXbpga4Uw'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.276193;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-LqtO6BjEd06LFWXbpga4Uw" width="5.6330647" height="5.9000001" x="-12.331" y="-112.751" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.276193;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.276193;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = '-harMwD0o0OExuMqT63fTQ'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1" id="socket--harMwD0o0OExuMqT63fTQ" width="9.7580643" height="7.3629031" x="-0.6653226" y="-117.00806" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'zj9tWS4kP0qww93h23r_mQ'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-zj9tWS4kP0qww93h23r_mQ" width="4.3467741" height="2.8830645" x="-0.57661289" y="-122.59677" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'mrcJ9QEbz0y8t1k_T_1GmQ'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-mrcJ9QEbz0y8t1k_T_1GmQ" width="6.0766129" height="2.1733871" x="7.0080643" y="-123.39516" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'agXbqgcFek-WOrf9Tx8Vkg'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-agXbqgcFek-WOrf9Tx8Vkg" width="6.0766129" height="2.1733871" x="-1.6189516" y="-105.40927" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'bInyh5AAt0y_m-3UaI8Ysw'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-bInyh5AAt0y_m-3UaI8Ysw" width="9.5362902" height="9.4919348" x="9.935483" y="-115.72177" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'rbZhGCN7UUWcgLsNZkZXIA'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-rbZhGCN7UUWcgLsNZkZXIA" width="5.233871" height="4.2580643" x="14.991936" y="-128.54031" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = '3mlCA6C6m0GI3wONZK_aqg'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-3mlCA6C6m0GI3wONZK_aqg" width="10.161809" height="4.0145416" x="37.009056" y="-122.19261" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'fbAgHM9u302peFMSC0TidQ'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-fbAgHM9u302peFMSC0TidQ" width="10.161809" height="4.0145416" x="27.098156" y="-103.62536" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'zUeDN4FpYEyyWHIhTIgZFg'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.194539;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-zUeDN4FpYEyyWHIhTIgZFg" width="3.2337625" height="3.0812263" x="56.203583" y="-112.57604" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.194539;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.194539;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'uXJ_fvsZ3USAs1SpiTrZ1g'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.194539;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-uXJ_fvsZ3USAs1SpiTrZ1g" width="3.2337625" height="3.0812263" x="59.991989" y="-112.57604" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.194539;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.194539;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'CcSXjIupV0Kw-jxaV6HpEA'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-CcSXjIupV0Kw-jxaV6HpEA" width="12.043626" height="3.6381786" x="26.125887" y="-114.85353" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'wDWAeeoAK0mAx3hbF1tMlA'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-wDWAeeoAK0mAx3hbF1tMlA" width="12.043626" height="3.6381786" x="38.922237" y="-114.85353" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'hh8PA01jxEytn9KuihcJ3Q'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.401711;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-hh8PA01jxEytn9KuihcJ3Q" width="22.142706" height="3.2618151" x="27.474522" y="-109.70989" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.401711;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.401711;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'onr_EmZON0Sq6NV1EJaRXw'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-onr_EmZON0Sq6NV1EJaRXw" width="0.93145162" height="0.93145162" x="69.694672" y="-116.48031" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'Pwcqk1b2LECoPlxmYKxazA'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-Pwcqk1b2LECoPlxmYKxazA" width="0.93145162" height="0.93145162" x="70.823753" y="-116.48031" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'Kg9vOndMRkiPE9XidGQ-LQ'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-Kg9vOndMRkiPE9XidGQ-LQ" width="0.93145162" height="0.93145162" x="-4.2293544" y="-121.90562" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = '8haEpM_28EG4Gnfp0G60DA'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-8haEpM_28EG4Gnfp0G60DA" width="0.93145162" height="0.93145162" x="-3.1002727" y="-121.90562" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = '7NOc08Ilik6HGjWCA9sv0g'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-7NOc08Ilik6HGjWCA9sv0g" width="0.93145162" height="0.93145162" x="-4.2293544" y="-117.51471" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'NxSPS_-8NkCTL8KQt_J2xA'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-NxSPS_-8NkCTL8KQt_J2xA" width="0.93145162" height="0.93145162" x="-3.1002727" y="-117.51471" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'JQhnv17QyUeJptsFsSxHiA'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-JQhnv17QyUeJptsFsSxHiA" width="0.93145162" height="0.93145162" x="-4.2293544" y="-104.79714" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'eSXrirjhcEqpccn1v0d9tQ'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-eSXrirjhcEqpccn1v0d9tQ" width="0.93145162" height="0.93145162" x="-3.1002727" y="-104.79714" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'UeHjJDYsykGTdIBrwS3cBw'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-UeHjJDYsykGTdIBrwS3cBw" width="0.93145162" height="0.93145162" x="69.694672" y="-114.38239" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'di54W_f-uUWcL22pu14pOw'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-di54W_f-uUWcL22pu14pOw" width="0.93145162" height="0.93145162" x="70.823753" y="-114.38239" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = '8amT-zvdJkqBpA2CeNsu6A'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-8amT-zvdJkqBpA2CeNsu6A" width="0.93145162" height="0.93145162" x="69.694672" y="-107.32555" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'Tvz_xzSFckeow_fh5MF4Ug'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-Tvz_xzSFckeow_fh5MF4Ug" width="0.93145162" height="0.93145162" x="70.823753" y="-107.32555" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'vZIFJ4i4j02vBGdKpt9-pA'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-vZIFJ4i4j02vBGdKpt9-pA" width="2.069998" height="2.069998" x="73.422203" y="-113.69306" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
      <xsl:when test="Key = 'TJMG2wJ1AUGhRPZfhqITUw'">
        <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1" id="socket-TJMG2wJ1AUGhRPZfhqITUw" width="2.069998" height="2.069998" x="73.422203" y="-111.27808" xmlns="http://www.w3.org/2000/svg" xmlns:svg="http://www.w3.org/2000/svg">
          <xsl:attribute name="style">
            <xsl:choose>
              <xsl:when test="IsDestroyed = 'false'">
                <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-linecap:round;stroke-linejoin:bevel;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
        </rect>
      </xsl:when>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>