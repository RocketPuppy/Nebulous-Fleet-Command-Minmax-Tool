<!-- Created with Inkscape (http://www.inkscape.org/) --><xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="2.0"
                exclude-result-prefixes="xs">
   <xsl:output method="xml" omit-xml-declaration="yes" indent="yes"/>
   <xsl:template name="bulk-freighter-dc-board">
      <xsl:param name="ship-report"/>
      <svg xmlns="http://www.w3.org/2000/svg" xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape" xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd" xmlns:svg="http://www.w3.org/2000/svg" width="139.683mm" height="42.130001mm" viewBox="0 0 139.683 42.130001" version="1.1" id="svg873" xml:space="preserve" class="bulk-freighter-dc-board" sodipodi:docname="bulk-freighter-dc-board.svg" inkscape:version="1.4.2 (ebf0e940d0, 2025-05-08)">
       <sodipodi:namedview id="namedview1" pagecolor="#ffffff" bordercolor="#000000" borderopacity="0.25" inkscape:showpageshadow="2" inkscape:pageopacity="0.0" inkscape:pagecheckerboard="0" inkscape:deskcolor="#d1d1d1" inkscape:document-units="mm" inkscape:zoom="1.424431" inkscape:cx="472.11834" inkscape:cy="-7.7223818" inkscape:window-width="2226" inkscape:window-height="1179" inkscape:window-x="0" inkscape:window-y="0" inkscape:window-maximized="1" inkscape:current-layer="svg873"/>
       <style id="style3940">
     #hull-d4c9a66d-81e6-49ee-9b33-82d7a1522bbf ~ #hull-2f2b451c-4776-405c-9914-cad4764f1072
     { transform: translate(19.320261px,2.6458334px); }

     #hull-e2c11e02-b770-495e-a3c2-3dc998eac5a6 ~ #hull-2f2b451c-4776-405c-9914-cad4764f1072
     { transform: translate(14.553878px,0.157755px); }
     
     #hull-429f178e-e369-4f51-8054-2e01dd0abea1 ~ #hull-2f2b451c-4776-405c-9914-cad4764f1072
     { transform: translate(23.283342px,2.2574654px); }
   

     #hull-d4c9a66d-81e6-49ee-9b33-82d7a1522bbf ~ #hull-a8bf77b9-b7e3-4498-bf91-d3e777a7f688
     { transform: translate(9.5250003px,2.6458334px); }

     #hull-e2c11e02-b770-495e-a3c2-3dc998eac5a6 ~ #hull-a8bf77b9-b7e3-4498-bf91-d3e777a7f688
     { transform: translate(4.529166px,0.516667px); }
     
     #hull-429f178e-e369-4f51-8054-2e01dd0abea1 ~ #hull-a8bf77b9-b7e3-4498-bf91-d3e777a7f688
     { transform: translate(13.358625px,2.6458334px); }
   

     #hull-d4c9a66d-81e6-49ee-9b33-82d7a1522bbf ~ #hull-78d72a9a-893c-41c6-bddd-f198dfcf77ee
     { transform: translate(15.345837px,1.458044px); }

     #hull-e2c11e02-b770-495e-a3c2-3dc998eac5a6 ~ #hull-78d72a9a-893c-41c6-bddd-f198dfcf77ee
     { transform: translate(10.45px,-0.641377px); }
     
     #hull-429f178e-e369-4f51-8054-2e01dd0abea1 ~ #hull-78d72a9a-893c-41c6-bddd-f198dfcf77ee
     { transform: translate(19.179462px,1.0583333px); } #hull-38e7a28f-1b06-4b73-98ee-f03d1d8a81fe[data-core='d4c9a66d-81e6-49ee-9b33-82d7a1522bbf']
     { transform: translate(82.466029px,0.43762747px); } #hull-29eb9c63-6c47-40f2-8f46-4ed4da8d3386[data-core='d4c9a66d-81e6-49ee-9b33-82d7a1522bbf']
     { transform: translate(82.243632px,4.2333331px); } #hull-c534a876-3f8a-4315-a194-5dda0f84c2b3[data-core='d4c9a66d-81e6-49ee-9b33-82d7a1522bbf']
     { transform: translate(82.486942px,15.345836px); } #hull-38e7a28f-1b06-4b73-98ee-f03d1d8a81fe[data-core='e2c11e02-b770-495e-a3c2-3dc998eac5a6']
     { transform: translate(86.86574px,-1.7px); } #hull-29eb9c63-6c47-40f2-8f46-4ed4da8d3386[data-core='e2c11e02-b770-495e-a3c2-3dc998eac5a6']
     { transform: translate(86.913598px,1.874711px); } #hull-c534a876-3f8a-4315-a194-5dda0f84c2b3[data-core='e2c11e02-b770-495e-a3c2-3dc998eac5a6']
     { transform: translate(86.757197px,13.346126px); } #hull-38e7a28f-1b06-4b73-98ee-f03d1d8a81fe[data-core='429f178e-e369-4f51-8054-2e01dd0abea1']
     { transform: translate(75.187147px,0.27025471px); } #hull-29eb9c63-6c47-40f2-8f46-4ed4da8d3386[data-core='429f178e-e369-4f51-8054-2e01dd0abea1']
     { transform: translate(75.493917px,3.8336228px); } #hull-c534a876-3f8a-4315-a194-5dda0f84c2b3[data-core='429f178e-e369-4f51-8054-2e01dd0abea1']
     { transform: translate(75.348859px,15.604749px); }
       </style>
       <defs id="defs870"/>
       
       
       
       
       
       



       
       
       
<xsl:apply-templates select="$ship-report//HullConfig/PrimaryStructure/SegmentConfiguration"/></svg>
   </xsl:template>
   <xsl:template match="HullConfig/PrimaryStructure/SegmentConfiguration[Key = 'd4c9a66d-81e6-49ee-9b33-82d7a1522bbf']">
      <g xmlns="http://www.w3.org/2000/svg"
         xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
         xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
         xmlns:svg="http://www.w3.org/2000/svg"
         id="hull-d4c9a66d-81e6-49ee-9b33-82d7a1522bbf"
         transform="translate(40.033153)"
         class="hull core"
         data-width="42.548"
         style="display:inline">
         <g transform="matrix(1.2261282,0,0,1.2261282,-47.792842,-89.653209)"
            id="g2752">
            <g id="g2270"
               style="stroke:#8c8c8c;stroke-width:0.32623;stroke-dasharray:none;stroke-opacity:1"
               class="frame"
               transform="translate(0,12.515682)">
               <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.32623;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                     d="m 39.141781,71.946211 v 14.378101 h 0.807614 v -0.325303 h 7.377218 v 0.325303 h 1.153226 v -0.325303 h 7.030241 v 0.325303 h 0.842743 v -0.591894 h 0.776208 v 1.050681 l -0.25886,0.258861 v 1.65432 l 0.819319,0.81932 7.437041,1.266359 h 6.821582 l 0.525341,-0.525338 v -3.37943 l -0.586801,-0.338789 h 1.127824 v -0.821663 h 0.501816 V 71.571751 l -1.881814,-0.78409 V 69.862435 H 58.193548 v 1.016597 L 56.375,71.74395 h -3.770161 l -0.476817,0.476816 h -3.686931 v -0.274555 h -1.191818 v 0.274555 h -7.370448 v -0.274555 z"
                     id="path1621"/>
               <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.32623;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                     d="M 71.886653,86.538402 H 57.129031"
                     id="path2266"/>
            </g>
            <g id="g3142" class="sockets" transform="translate(0,12.515682)">
               <xsl:for-each select="../../..//PartDamage">
                  <xsl:variable name="percent" select="HealthPercent"/>
                  <xsl:choose>
                     <xsl:when test="Key = 'tcQfj6XOHUWFSAx_W0cc1A'">
                        <rect style="fill:#8c8c8c;stroke-width:0.178658;stroke-dashoffset:9.8"
                              id="rect2998"
                              width="2.4467263"
                              height="4.8934526"
                              x="40.302052"
                              y="76.455765"
                              class="socket-tcQfj6XOHUWFSAx_W0cc1A">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.178658;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.178658;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 't0T4CSAPnEq4rvHAVl84-Q'">
                        <rect style="fill:#8c8c8c;stroke-width:0.178658;stroke-dashoffset:9.8"
                              id="rect2998-8"
                              width="2.4467263"
                              height="4.8934526"
                              x="48.906887"
                              y="76.455765"
                              class="socket-t0T4CSAPnEq4rvHAVl84-Q">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.178658;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.178658;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'M3mc7A4WOU-2fq5XgRSECA'">
                        <rect style="fill:#8c8c8c;stroke-width:0.3;stroke-dashoffset:9.8"
                              id="rect3022"
                              width="2.6612904"
                              height="2.5156591"
                              x="45.81855"
                              y="72.97628"
                              class="socket-M3mc7A4WOU-2fq5XgRSECA">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.3;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.3;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'S-rQo19r20K0L0PRer3yMw'">
                        <rect style="fill:#8c8c8c;stroke-width:0.3;stroke-dashoffset:9.8"
                              id="rect3022-1"
                              width="2.6612904"
                              height="2.5156591"
                              x="45.81855"
                              y="82.972008"
                              class="socket-S-rQo19r20K0L0PRer3yMw">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.3;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.3;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'Sb5-VSuwlkWpT6ViRiJ3vg'">
                        <rect style="fill:#8c8c8c;stroke-width:0.177943;stroke-dashoffset:9.8"
                              id="rect3046"
                              width="1.6311508"
                              height="1.6311508"
                              x="62.689083"
                              y="69.374512"
                              class="socket-Sb5-VSuwlkWpT6ViRiJ3vg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.177943;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.177943;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'fYoX2amTl0KrZurPKjU9gg'">
                        <rect style="fill:#8c8c8c;stroke-width:0.3;stroke-dashoffset:9.8"
                              id="rect3048"
                              width="8.2943554"
                              height="2.3951612"
                              x="60.034286"
                              y="73.354477"
                              class="socket-fYoX2amTl0KrZurPKjU9gg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.3;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.3;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '3Ky8PvdxqUKMRXZa0xLF2A'">
                        <rect style="fill:#8c8c8c;stroke-width:0.3;stroke-dashoffset:9.8"
                              id="rect3048-2"
                              width="8.2943554"
                              height="2.3951612"
                              x="60.034286"
                              y="79.69722"
                              class="socket-3Ky8PvdxqUKMRXZa0xLF2A">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.3;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.3;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'FVcPIcV_00eu62NQQK3oLg'">
                        <rect style="fill:#8c8c8c;stroke-width:0.3;stroke-dashoffset:9.8"
                              id="rect3072"
                              width="6.7862902"
                              height="1.3306452"
                              x="56.308468"
                              y="76.281898"
                              class="socket-FVcPIcV_00eu62NQQK3oLg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.3;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.3;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '1FrTJ5o850ynlq4dRDmMbA'">
                        <rect style="fill:#8c8c8c;stroke-width:0.3;stroke-dashoffset:9.8"
                              id="rect3072-5"
                              width="6.7862902"
                              height="1.3306452"
                              x="56.308468"
                              y="78.056091"
                              class="socket-1FrTJ5o850ynlq4dRDmMbA">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.3;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.3;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '6LpDL27QuEW0PZCm35Nx5w'">
                        <rect style="fill:#8c8c8c;stroke-width:0.3;stroke-dashoffset:9.8"
                              id="rect3072-6"
                              width="6.7862902"
                              height="1.3306452"
                              x="65.445564"
                              y="76.281898"
                              class="socket-6LpDL27QuEW0PZCm35Nx5w">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.3;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.3;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'QIOFQpQSKESIdNzf_JEFyA'">
                        <rect style="fill:#8c8c8c;stroke-width:0.3;stroke-dashoffset:9.8"
                              id="rect3072-9"
                              width="6.7862902"
                              height="1.3306452"
                              x="65.445564"
                              y="78.056091"
                              class="socket-QIOFQpQSKESIdNzf_JEFyA">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.3;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.3;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'I68tNng-K0yG-AoUx0HcSw'">
                        <rect style="fill:#8c8c8c;stroke-width:0.3;stroke-dashoffset:9.8"
                              id="rect3122"
                              width="3.1048386"
                              height="3.1048386"
                              x="67.552422"
                              y="88.032379"
                              class="socket-I68tNng-K0yG-AoUx0HcSw">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.3;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.3;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'wgLiLSBRVUS0KoWi83D4gA'">
                        <rect style="fill:#8c8c8c;stroke-width:0.3;stroke-dashoffset:9.8"
                              id="rect3124"
                              width="2.9274194"
                              height="1.6854838"
                              x="63.471775"
                              y="88.354836"
                              class="socket-wgLiLSBRVUS0KoWi83D4gA">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.3;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.3;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'MQyTgOLGCkyeljdvbkkFDA'">
                        <rect style="fill:#8c8c8c;stroke-width:0.3;stroke-dashoffset:9.8"
                              id="rect3126"
                              width="2.5725808"
                              height="2.5725808"
                              x="63.294353"
                              y="82.94355"
                              class="socket-MQyTgOLGCkyeljdvbkkFDA">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.3;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.3;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '8pltGexHAEyFL2ljOe0oMQ'">
                        <rect style="fill:#8c8c8c;stroke-width:0.178658;stroke-dashoffset:9.8"
                              id="rect1169"
                              width="2.4467263"
                              height="4.8934526"
                              x="42.959198"
                              y="76.455765"
                              class="socket-8pltGexHAEyFL2ljOe0oMQ">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.178658;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.178658;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'grYBjxIS3E--lmrqenuK8A'">
                        <rect style="fill:#8c8c8c;stroke-width:0.178658;stroke-dashoffset:9.8"
                              id="rect1171"
                              width="2.4467263"
                              height="4.8934526"
                              x="51.564034"
                              y="76.455765"
                              class="socket-grYBjxIS3E--lmrqenuK8A">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.178658;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.178658;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '6ZiODnoXqkaNWvaqyGjnwg'">
                        <rect style="fill:#8c8c8c;stroke-width:0.177943;stroke-dashoffset:9.8"
                              id="rect1173"
                              width="1.6311508"
                              height="1.6311508"
                              x="64.653114"
                              y="69.374512"
                              class="socket-6ZiODnoXqkaNWvaqyGjnwg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.177943;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.177943;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                  </xsl:choose>
               </xsl:for-each>
            </g>
            <xsl:if test="../../..//HullConfig/SecondaryStructure/SecondaryStructureConfig[Segment = 1][Key = '42d07c1a-156b-4057-aaca-7a2024751423']">
               <g data-hull="42d07c1a-156b-4057-aaca-7a2024751423"
                  transform="matrix(0.87556578,0,0,0.87556578,25.931173,53.563356)"
                  class="super"
                  data-index="1"
                  style="display:inline"
                  id="g1274-6">
                  <g id="g3338-9-6-03"
                     class="frame"
                     style="stroke-width:0.372594;stroke-dasharray:none">
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.372594;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="M 38.514509,32.712242 V 30.70497 h 6.35113 V 28.948607 H 44.53632 v -0.972269 h 0.329319 V 25.843611 H 44.53632 v -1.254544 h 6.69613 v 1.238863 h -0.517498 v 2.069998 h 0.517498 v 1.082043 h -0.517498 v 3.732271 z"
                           id="path3329-1-0-4"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.372594;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="M 43.501323,30.689288 V 22.628842"
                           id="path3331-3-5-7"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.372594;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 43.501323,25.843611 h 0.565658"
                           id="path3333-0-0-3"/>
                  </g>
                                   
                                   
                                   
                  <g id="g3346-8-8-05" class="sockets">
                     <xsl:for-each select="../../..//PartDamage">
                        <xsl:variable name="percent" select="HealthPercent"/>
                        <xsl:choose>
                           <xsl:when test="Key = '4dpVMvs8nUmd-5az35rT2Q'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.703938;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    class="socket-4dpVMvs8nUmd-5az35rT2Q"
                                    width="3.3044353"
                                    height="1.4570738"
                                    x="46.217739"
                                    y="24.734459"
                                    id="rect284-1-4-5">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.703938;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.703938;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                           <xsl:when test="Key = 'zj9tWS4kP0qww93h23r_mQ'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.600001;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    class="socket-zj9tWS4kP0qww93h23r_mQ"
                                    width="2.7278225"
                                    height="1.5302418"
                                    x="41.516125"
                                    y="31.026209"
                                    id="rect286-9-3-26">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.600001;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.600001;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                        </xsl:choose>
                     </xsl:for-each>
                  </g>
               </g>
            </xsl:if>
            <xsl:if test="../../..//HullConfig/SecondaryStructure/SecondaryStructureConfig[Segment = 1][Key = 'c9d04445-3558-46b4-b6fc-7dca8617d438']">
               <g data-hull="c9d04445-3558-46b4-b6fc-7dca8617d438"
                  transform="matrix(1.2104205,0,0,1.1099852,-89.024767,11.783876)"
                  class="super"
                  data-index="1"
                  id="g1284-0"
                  style="display:inline">
                  <g id="g9491-9-4-9"
                     class="frame"
                     style="stroke-width:0.281447;stroke-dasharray:none">
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.281447;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 131.20161,63.449596 h -7.54032 v -1.530241 h 0.66532 v -0.931453 l 1.46371,-2.284275 h 0.75403 v -0.709676 h 4.10283 v 2.594758 h 0.35483 v 0.709676 h -0.59878 v 0.53226 h 0.79838 z"
                           id="path8570-8-6-63"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.281447;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 130.40323,61.298385 h -5.05646 l -0.0222,-0.709676 h 5.32258"
                           id="path8572-8-2-1"/>
                     <rect style="fill:#8c8c8c;fill-opacity:1;stroke:#8c8c8c;stroke-width:0.281447;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                           id="rect8574-5-6-18"
                           width="3.2156999"
                           height="0.72076529"
                           x="127.43145"
                           y="59.867943"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.281447;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 126.54435,58.703627 0.82057,0.465728 v 1.419352"
                           id="path8576-5-9-2"/>
                  </g>
                                   
                                   
                                   
                                   
                  <g id="g9495-3-4-4" class="sockets">
                     <xsl:for-each select="../../..//PartDamage">
                        <xsl:variable name="percent" select="HealthPercent"/>
                        <xsl:choose>
                           <xsl:when test="Key = 'zj9tWS4kP0qww93h23r_mQ'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect9483-3-5-5"
                                    width="1.5123487"
                                    height="1.2545443"
                                    x="125.11822"
                                    y="61.613804"
                                    class="socket-zj9tWS4kP0qww93h23r_mQ">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                           <xsl:when test="Key = '4dpVMvs8nUmd-5az35rT2Q'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect9485-3-6-9"
                                    width="1.5368167"
                                    height="1.2388625"
                                    x="128.37125"
                                    y="57.614944"
                                    class="socket-4dpVMvs8nUmd-5az35rT2Q">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                        </xsl:choose>
                     </xsl:for-each>
                  </g>
               </g>
            </xsl:if>
            <xsl:if test="../../..//HullConfig/SecondaryStructure/SecondaryStructureConfig[Segment = 1][Key = '9ebcea74-e9c9-45b3-b616-e12e3f491024']">
               <g data-hull="9ebcea74-e9c9-45b3-b616-e12e3f491024"
                  transform="matrix(0.96538045,0,0,0.96538045,107.64197,14.747096)"
                  class="super"
                  data-index="1"
                  id="g1293-6"
                  style="display:inline">
                  <g id="g5905-4-4-37"
                     style="stroke:#8c8c8c;stroke-width:0.337929;stroke-dasharray:none;stroke-opacity:1"
                     transform="translate(-245.38886,-5.3945402)"
                     class="frame">
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.337929;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 199.16223,75.271634 v -2.860887 h 1.86291 v -1.131049 h -0.28831 V 70.48131 h 2.99395 v 0.798388 h -0.42137 v 3.991936 z"
                           id="path4717-1-2-3"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.337929;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="M 199.93844,72.366392 V 66.201069"
                           id="path4719-8-9-2"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.337929;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 199.62796,68.906714 h 0.73186"
                           id="path4721-4-0-29"/>
                  </g>
                                   
                                   
                                   
                  <g id="g5967-3-6-86"
                     transform="translate(-245.38886,-5.3945402)"
                     class="sockets">
                     <xsl:for-each select="../../..//PartDamage">
                        <xsl:variable name="percent" select="HealthPercent"/>
                        <xsl:choose>
                           <xsl:when test="Key = 'zj9tWS4kP0qww93h23r_mQ'">
                              <rect style="fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect5961-4-2-2"
                                    width="1.0423387"
                                    height="1.0423387"
                                    x="199.76102"
                                    y="72.854294"
                                    class="socket-zj9tWS4kP0qww93h23r_mQ">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                           <xsl:when test="Key = '4dpVMvs8nUmd-5az35rT2Q'">
                              <rect style="fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect5963-1-2-1"
                                    width="1.7520161"
                                    height="1.108871"
                                    x="201.31345"
                                    y="70.281715"
                                    class="socket-4dpVMvs8nUmd-5az35rT2Q">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                        </xsl:choose>
                     </xsl:for-each>
                  </g>
               </g>
            </xsl:if>
            <xsl:if test="../../..//HullConfig/SecondaryStructure/SecondaryStructureConfig[Segment = 1][Key = '59344a67-9e7b-43df-9f7c-505ad9a0ab87']">
               <g data-hull="59344a67-9e7b-43df-9f7c-505ad9a0ab87"
                  transform="matrix(1.0548651,0,0,1.0548651,17.165806,38.108493)"
                  class="super"
                  data-index="1"
                  id="g1301-7"
                  style="display:inline">
                  <g id="g8273-6-6-1" class="frame">
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.3;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 42.999503,41.807688 v -1.301591 l 0.814425,-3.03947 v -0.583026 h 2.510118 l 0.327834,0.567825 h 1.459892 v 0.718082 H 47.56291 v 0.893863 h 0.36068 v 0.721363 h -0.36068 v 2.022954 z"
                           id="path8267-2-3-24"/>
                     <path style="fill:#8c8c8c;fill-opacity:1;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.3;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 44.567683,36.883601 v -0.893863 l -0.284577,-0.164303 v -0.353198 l 0.22253,-0.128479 v -1.314246 l 0.281932,-0.281932 v -0.408067 h 0.281935 v 3.497043"
                           id="path8269-5-1-87"/>
                  </g>
                                   
                                   
                  <g id="g8281-7-9-7" class="sockets">
                     <xsl:for-each select="../../..//PartDamage">
                        <xsl:variable name="percent" select="HealthPercent"/>
                        <xsl:choose>
                           <xsl:when test="Key = 'zj9tWS4kP0qww93h23r_mQ'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect8275-2-6-70"
                                    width="1.113408"
                                    height="1.2859079"
                                    x="43.940414"
                                    y="39.047688"
                                    class="socket-zj9tWS4kP0qww93h23r_mQ">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                           <xsl:when test="Key = '4dpVMvs8nUmd-5az35rT2Q'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect8277-9-5-55"
                                    width="1.3643168"
                                    height="1.0663626"
                                    x="44.944046"
                                    y="36.914967"
                                    class="socket-4dpVMvs8nUmd-5az35rT2Q">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                        </xsl:choose>
                     </xsl:for-each>
                  </g>
               </g>
            </xsl:if>
         </g>
      </g>
   </xsl:template>
   <xsl:template match="HullConfig/PrimaryStructure/SegmentConfiguration[Key = 'e2c11e02-b770-495e-a3c2-3dc998eac5a6']">
      <g xmlns="http://www.w3.org/2000/svg"
         xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
         xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
         xmlns:svg="http://www.w3.org/2000/svg"
         id="hull-e2c11e02-b770-495e-a3c2-3dc998eac5a6"
         transform="translate(35.289545)"
         class="hull core"
         data-width="52.035"
         style="display:inline">
         <g id="g3925"
            transform="matrix(1.4326722,0,0,1.4326722,-133.78662,-47.188933)"
            style="display:inline">
            <g id="g678"
               style="stroke:#8c8c8c;stroke-width:0.279199;stroke-dasharray:none;stroke-opacity:1"
               class="frame">
               <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.279199;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                     d="M 93.522174,54.245967 V 42.203629 h 0.510083 v 0.554434 l 1.463709,-1.108871 v -0.665321 h 11.310484 v 0.731853 l 1.39718,1.064517 V 42.35887 h 21.35943 v 11.711988 h -21.35862 v -0.329319 l -2.6659,1.097727 v 2.697271 H 96.741045 V 54.901993 L 94.09082,53.710175 v 0.535792 z"
                     id="path626"/>
            </g>
            <g id="g858" class="sockets">
               <xsl:for-each select="../../..//PartDamage">
                  <xsl:variable name="percent" select="HealthPercent"/>
                  <xsl:choose>
                     <xsl:when test="Key = 'Sb5-VSuwlkWpT6ViRiJ3vg'">
                        <rect style="fill:#8c8c8c;stroke-width:0.143206;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect680"
                              width="1.3959928"
                              height="1.3959928"
                              x="99.782539"
                              y="40.585472"
                              class="socket-Sb5-VSuwlkWpT6ViRiJ3vg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.143206;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.143206;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'fYoX2amTl0KrZurPKjU9gg'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect682"
                              width="6.8306446"
                              height="1.8185484"
                              x="98.245964"
                              y="44.310482"
                              class="socket-fYoX2amTl0KrZurPKjU9gg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '3Ky8PvdxqUKMRXZa0xLF2A'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect682-4"
                              width="6.8306446"
                              height="1.8185484"
                              x="98.245964"
                              y="50.054436"
                              class="socket-3Ky8PvdxqUKMRXZa0xLF2A">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'FVcPIcV_00eu62NQQK3oLg'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect706"
                              width="5.7395396"
                              height="1.034999"
                              x="95.235596"
                              y="46.763138"
                              class="socket-FVcPIcV_00eu62NQQK3oLg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '1FrTJ5o850ynlq4dRDmMbA'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect706-7"
                              width="5.7395396"
                              height="1.034999"
                              x="95.235596"
                              y="48.22155"
                              class="socket-1FrTJ5o850ynlq4dRDmMbA">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '6LpDL27QuEW0PZCm35Nx5w'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect706-5"
                              width="5.7395396"
                              height="1.034999"
                              x="102.3865"
                              y="46.763138"
                              class="socket-6LpDL27QuEW0PZCm35Nx5w">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'QIOFQpQSKESIdNzf_JEFyA'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect706-2"
                              width="5.7395396"
                              height="1.034999"
                              x="102.3865"
                              y="48.22155"
                              class="socket-QIOFQpQSKESIdNzf_JEFyA">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'MQyTgOLGCkyeljdvbkkFDA'">
                        <rect style="fill:#8c8c8c;stroke-width:0.251016;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect756"
                              width="2.0939891"
                              height="2.0939891"
                              x="100.5322"
                              y="52.596767"
                              class="socket-MQyTgOLGCkyeljdvbkkFDA">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.251016;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.251016;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'S-rQo19r20K0L0PRer3yMw'">
                        <rect style="fill:#8c8c8c;stroke-width:0.251016;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect756-6"
                              width="2.0939891"
                              height="2.0939891"
                              x="111.17735"
                              y="50.417"
                              class="socket-S-rQo19r20K0L0PRer3yMw">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.251016;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.251016;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'M3mc7A4WOU-2fq5XgRSECA'">
                        <rect style="fill:#8c8c8c;stroke-width:0.251016;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect756-0"
                              width="2.0939891"
                              height="2.0939891"
                              x="118.05237"
                              y="50.417"
                              class="socket-M3mc7A4WOU-2fq5XgRSECA">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.251016;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.251016;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'wgLiLSBRVUS0KoWi83D4gA'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect793"
                              width="2.3209069"
                              height="1.0663626"
                              x="97.854454"
                              y="55.952671"
                              class="socket-wgLiLSBRVUS0KoWi83D4gA">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'I68tNng-K0yG-AoUx0HcSw'">
                        <rect style="fill:#8c8c8c;stroke-width:0.154214;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect795"
                              width="1.3959928"
                              height="1.3959928"
                              x="102.30107"
                              y="56.708744"
                              class="socket-I68tNng-K0yG-AoUx0HcSw">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.154214;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.154214;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'tcQfj6XOHUWFSAx_W0cc1A'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.152901;stroke-dashoffset:9.8"
                              id="rect2998-8-4"
                              width="2.0939891"
                              height="4.1879783"
                              x="110.12242"
                              y="44.162102"
                              class="socket-tcQfj6XOHUWFSAx_W0cc1A">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.152901;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.152901;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 't0T4CSAPnEq4rvHAVl84-Q'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.152901;stroke-dashoffset:9.8"
                              id="rect2998-8-16"
                              width="2.0939891"
                              height="4.1879783"
                              x="116.99743"
                              y="44.162102"
                              class="socket-t0T4CSAPnEq4rvHAVl84-Q">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.152901;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.152901;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '8pltGexHAEyFL2ljOe0oMQ'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.152901;stroke-dashoffset:9.8"
                              id="rect1436"
                              width="2.0939891"
                              height="4.1879783"
                              x="112.39649"
                              y="44.162102"
                              class="socket-8pltGexHAEyFL2ljOe0oMQ">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.152901;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.152901;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'grYBjxIS3E--lmrqenuK8A'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.152901;stroke-dashoffset:9.8"
                              id="rect1438"
                              width="2.0939891"
                              height="4.1879783"
                              x="119.2715"
                              y="44.162102"
                              class="socket-grYBjxIS3E--lmrqenuK8A">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.152901;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.152901;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '6ZiODnoXqkaNWvaqyGjnwg'">
                        <rect style="fill:#8c8c8c;stroke-width:0.143206;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1440"
                              width="1.3959928"
                              height="1.3959928"
                              x="101.44923"
                              y="40.585472"
                              class="socket-6ZiODnoXqkaNWvaqyGjnwg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.143206;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.143206;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                  </xsl:choose>
               </xsl:for-each>
            </g>
            <xsl:if test="../../..//HullConfig/SecondaryStructure/SecondaryStructureConfig[Segment = 1][Key = '42d07c1a-156b-4057-aaca-7a2024751423']">
               <g data-hull="42d07c1a-156b-4057-aaca-7a2024751423"
                  transform="matrix(0.74933812,0,0,0.74933812,67.627096,16.201382)"
                  class="super"
                  data-index="1"
                  style="display:inline"
                  id="g1274-2">
                  <g id="g3338-9-6-5"
                     class="frame"
                     style="stroke-width:0.372594;stroke-dasharray:none">
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.372594;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="M 38.514509,32.712242 V 30.70497 h 6.35113 V 28.948607 H 44.53632 v -0.972269 h 0.329319 V 25.843611 H 44.53632 v -1.254544 h 6.69613 v 1.238863 h -0.517498 v 2.069998 h 0.517498 v 1.082043 h -0.517498 v 3.732271 z"
                           id="path3329-1-0-15"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.372594;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="M 43.501323,30.689288 V 22.628842"
                           id="path3331-3-5-0"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.372594;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 43.501323,25.843611 h 0.565658"
                           id="path3333-0-0-4"/>
                  </g>
                                   
                                   
                                   
                  <g id="g3346-8-8-1" class="sockets">
                     <xsl:for-each select="../../..//PartDamage">
                        <xsl:variable name="percent" select="HealthPercent"/>
                        <xsl:choose>
                           <xsl:when test="Key = '4dpVMvs8nUmd-5az35rT2Q'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.703938;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    class="socket-4dpVMvs8nUmd-5az35rT2Q"
                                    width="3.3044353"
                                    height="1.4570738"
                                    x="46.217739"
                                    y="24.734459"
                                    id="rect284-1-4-4">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.703938;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.703938;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                           <xsl:when test="Key = 'zj9tWS4kP0qww93h23r_mQ'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.600001;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    class="socket-zj9tWS4kP0qww93h23r_mQ"
                                    width="2.7278225"
                                    height="1.5302418"
                                    x="41.516125"
                                    y="31.026209"
                                    id="rect286-9-3-9">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.600001;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.600001;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                        </xsl:choose>
                     </xsl:for-each>
                  </g>
               </g>
            </xsl:if>
            <xsl:if test="../../..//HullConfig/SecondaryStructure/SecondaryStructureConfig[Segment = 1][Key = 'c9d04445-3558-46b4-b6fc-7dca8617d438']">
               <g data-hull="c9d04445-3558-46b4-b6fc-7dca8617d438"
                  transform="matrix(1.0359178,0,0,0.94996204,-30.756092,-19.554878)"
                  class="super"
                  data-index="1"
                  id="g1284-5"
                  style="display:inline">
                  <g id="g9491-9-4-7"
                     class="frame"
                     style="stroke-width:0.281447;stroke-dasharray:none">
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.281447;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 131.20161,63.449596 h -7.54032 v -1.530241 h 0.66532 v -0.931453 l 1.46371,-2.284275 h 0.75403 v -0.709676 h 4.10283 v 2.594758 h 0.35483 v 0.709676 h -0.59878 v 0.53226 h 0.79838 z"
                           id="path8570-8-6-83"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.281447;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 130.40323,61.298385 h -5.05646 l -0.0222,-0.709676 h 5.32258"
                           id="path8572-8-2-6"/>
                     <rect style="fill:#8c8c8c;fill-opacity:1;stroke:#8c8c8c;stroke-width:0.281447;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                           id="rect8574-5-6-9"
                           width="3.2156999"
                           height="0.72076529"
                           x="127.43145"
                           y="59.867943"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.281447;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 126.54435,58.703627 0.82057,0.465728 v 1.419352"
                           id="path8576-5-9-7"/>
                  </g>
                                   
                                   
                                   
                                   
                  <g id="g9495-3-4-8" class="sockets">
                     <xsl:for-each select="../../..//PartDamage">
                        <xsl:variable name="percent" select="HealthPercent"/>
                        <xsl:choose>
                           <xsl:when test="Key = 'zj9tWS4kP0qww93h23r_mQ'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect9483-3-5-2"
                                    width="1.5123487"
                                    height="1.2545443"
                                    x="125.11822"
                                    y="61.613804"
                                    class="socket-zj9tWS4kP0qww93h23r_mQ">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                           <xsl:when test="Key = '4dpVMvs8nUmd-5az35rT2Q'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect9485-3-6-1"
                                    width="1.5368167"
                                    height="1.2388625"
                                    x="128.37125"
                                    y="57.614944"
                                    class="socket-4dpVMvs8nUmd-5az35rT2Q">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                        </xsl:choose>
                     </xsl:for-each>
                  </g>
               </g>
            </xsl:if>
            <xsl:if test="../../..//HullConfig/SecondaryStructure/SecondaryStructureConfig[Segment = 1][Key = '9ebcea74-e9c9-45b3-b616-e12e3f491024']">
               <g data-hull="9ebcea74-e9c9-45b3-b616-e12e3f491024"
                  transform="matrix(0.82620448,0,0,0.82620448,137.55779,-17.018856)"
                  class="super"
                  data-index="1"
                  id="g1293-5"
                  style="display:inline">
                  <g id="g5905-4-4-4"
                     style="stroke:#8c8c8c;stroke-width:0.337929;stroke-dasharray:none;stroke-opacity:1"
                     transform="translate(-245.38886,-5.3945402)"
                     class="frame">
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.337929;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 199.16223,75.271634 v -2.860887 h 1.86291 v -1.131049 h -0.28831 V 70.48131 h 2.99395 v 0.798388 h -0.42137 v 3.991936 z"
                           id="path4717-1-2-2"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.337929;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="M 199.93844,72.366392 V 66.201069"
                           id="path4719-8-9-66"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.337929;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 199.62796,68.906714 h 0.73186"
                           id="path4721-4-0-4"/>
                  </g>
                                   
                                   
                                   
                  <g id="g5967-3-6-1"
                     transform="translate(-245.38886,-5.3945402)"
                     class="sockets">
                     <xsl:for-each select="../../..//PartDamage">
                        <xsl:variable name="percent" select="HealthPercent"/>
                        <xsl:choose>
                           <xsl:when test="Key = 'zj9tWS4kP0qww93h23r_mQ'">
                              <rect style="fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect5961-4-2-8"
                                    width="1.0423387"
                                    height="1.0423387"
                                    x="199.76102"
                                    y="72.854294"
                                    class="socket-zj9tWS4kP0qww93h23r_mQ">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                           <xsl:when test="Key = '4dpVMvs8nUmd-5az35rT2Q'">
                              <rect style="fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect5963-1-2-8"
                                    width="1.7520161"
                                    height="1.108871"
                                    x="201.31345"
                                    y="70.281715"
                                    class="socket-4dpVMvs8nUmd-5az35rT2Q">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                        </xsl:choose>
                     </xsl:for-each>
                  </g>
               </g>
            </xsl:if>
            <xsl:if test="../../..//HullConfig/SecondaryStructure/SecondaryStructureConfig[Segment = 1][Key = '59344a67-9e7b-43df-9f7c-505ad9a0ab87']">
               <g data-hull="59344a67-9e7b-43df-9f7c-505ad9a0ab87"
                  transform="matrix(0.90278837,0,0,0.90278837,60.125409,2.9745975)"
                  class="super"
                  data-index="1"
                  id="g1301-3"
                  style="display:inline">
                  <g id="g8273-6-6-69" class="frame">
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.3;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 42.999503,41.807688 v -1.301591 l 0.814425,-3.03947 v -0.583026 h 2.510118 l 0.327834,0.567825 h 1.459892 v 0.718082 H 47.56291 v 0.893863 h 0.36068 v 0.721363 h -0.36068 v 2.022954 z"
                           id="path8267-2-3-28"/>
                     <path style="fill:#8c8c8c;fill-opacity:1;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.3;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 44.567683,36.883601 v -0.893863 l -0.284577,-0.164303 v -0.353198 l 0.22253,-0.128479 v -1.314246 l 0.281932,-0.281932 v -0.408067 h 0.281935 v 3.497043"
                           id="path8269-5-1-8"/>
                  </g>
                                   
                                   
                  <g id="g8281-7-9-3" class="sockets">
                     <xsl:for-each select="../../..//PartDamage">
                        <xsl:variable name="percent" select="HealthPercent"/>
                        <xsl:choose>
                           <xsl:when test="Key = 'zj9tWS4kP0qww93h23r_mQ'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect8275-2-6-8"
                                    width="1.113408"
                                    height="1.2859079"
                                    x="43.940414"
                                    y="39.047688"
                                    class="socket-zj9tWS4kP0qww93h23r_mQ">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                           <xsl:when test="Key = '4dpVMvs8nUmd-5az35rT2Q'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect8277-9-5-5"
                                    width="1.3643168"
                                    height="1.0663626"
                                    x="44.944046"
                                    y="36.914967"
                                    class="socket-4dpVMvs8nUmd-5az35rT2Q">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                        </xsl:choose>
                     </xsl:for-each>
                  </g>
               </g>
            </xsl:if>
         </g>
      </g>
   </xsl:template>
   <xsl:template match="HullConfig/PrimaryStructure/SegmentConfiguration[Key = '429f178e-e369-4f51-8054-2e01dd0abea1']">
      <g xmlns="http://www.w3.org/2000/svg"
         xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
         xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
         xmlns:svg="http://www.w3.org/2000/svg"
         id="hull-429f178e-e369-4f51-8054-2e01dd0abea1"
         transform="translate(43.856946)"
         class="hull core"
         data-width="34.9"
         style="display:inline">
         <g id="g3870"
            transform="translate(-100.69672,-18.863278)"
            style="display:inline">
            <g id="g919"
               style="stroke:#8c8c8c;stroke-width:0.4;stroke-dasharray:none;stroke-opacity:1"
               class="frame"
               transform="translate(0,-8.9958338)">
               <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.4;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                     d="M 100.89672,60.437669 V 42.96814 h 1.16045 v 0.59591 h 2.82273 v -1.254546 h -1.16045 v -2.948178 h 27.00406 v 2.885451 h -2.60318 v 1.254546 h 4.17136 v 4.359539"
                     id="path893"/>
               <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.4;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                     d="m 100.86536,48.456773 3.50735,-2.024973 h 25.50398 l 4.45522,2.572218 v 5.443202 l -4.54283,2.622804 h -25.28554 l -3.60001,-2.078461"
                     id="path895"/>
               <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.4;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                     d="m 104.37271,46.4318 h -3.47599"
                     id="path899"/>
               <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.4;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                     d="m 104.50354,57.070024 h -3.60682"
                     id="path901"/>
               <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.4;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                     d="m 100.89672,60.437669 h 1.12909 v -0.407725 h 30.23452 v -4.386697"
                     id="path903"/>
               <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.4;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                     d="m 129.78908,57.070024 h 2.47125"
                     id="path905"/>
               <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.4;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                     d="m 129.87669,46.4318 h 2.415"
                     id="path907"/>
               <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.4;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                     d="m 107.79671,60.029944 v 6.554994 l 3.07364,2.791359 h 24.52634 v -5.331812 l -5.80227,-4.014541"
                     id="path909"/>
            </g>
            <g id="g1098" class="sockets" transform="translate(0,-8.9958338)">
               <xsl:for-each select="../../..//PartDamage">
                  <xsl:variable name="percent" select="HealthPercent"/>
                  <xsl:choose>
                     <xsl:when test="Key = '3Ky8PvdxqUKMRXZa0xLF2A'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect923"
                              width="6.2540321"
                              height="2.2620966"
                              x="105.69758"
                              y="43.866936"
                              class="socket-3Ky8PvdxqUKMRXZa0xLF2A">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'fYoX2amTl0KrZurPKjU9gg'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect923-3"
                              width="6.2540321"
                              height="2.2620966"
                              x="120.53426"
                              y="43.866936"
                              class="socket-fYoX2amTl0KrZurPKjU9gg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '1FrTJ5o850ynlq4dRDmMbA'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect947"
                              width="6.4314513"
                              height="0.97580642"
                              x="105.60887"
                              y="57.88306"
                              class="socket-1FrTJ5o850ynlq4dRDmMbA">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'FVcPIcV_00eu62NQQK3oLg'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect947-8"
                              width="6.4314513"
                              height="0.97580642"
                              x="105.60887"
                              y="55.532257"
                              class="socket-FVcPIcV_00eu62NQQK3oLg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '6LpDL27QuEW0PZCm35Nx5w'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect947-4"
                              width="6.4314513"
                              height="0.97580642"
                              x="120.44555"
                              y="55.532257"
                              class="socket-6LpDL27QuEW0PZCm35Nx5w">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'QIOFQpQSKESIdNzf_JEFyA'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect947-89"
                              width="6.4314513"
                              height="0.97580642"
                              x="120.44555"
                              y="57.88306"
                              class="socket-QIOFQpQSKESIdNzf_JEFyA">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'Sb5-VSuwlkWpT6ViRiJ3vg'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect997"
                              width="2.75"
                              height="3.4153223"
                              x="113.73507"
                              y="44.624054"
                              class="socket-Sb5-VSuwlkWpT6ViRiJ3vg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '6ZiODnoXqkaNWvaqyGjnwg'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect997-4"
                              width="2.75"
                              height="3.4153223"
                              x="116.80838"
                              y="44.624054"
                              class="socket-6ZiODnoXqkaNWvaqyGjnwg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'M3mc7A4WOU-2fq5XgRSECA'">
                        <rect style="fill:#8c8c8c;stroke-width:0.284501;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1010"
                              width="3"
                              height="3"
                              x="115.3004"
                              y="49.455647"
                              class="socket-M3mc7A4WOU-2fq5XgRSECA">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.284501;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.284501;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'S-rQo19r20K0L0PRer3yMw'">
                        <rect style="fill:#8c8c8c;stroke-width:0.284501;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1010-9"
                              width="3"
                              height="3"
                              x="115.3004"
                              y="53.509098"
                              class="socket-S-rQo19r20K0L0PRer3yMw">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.284501;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.284501;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'MQyTgOLGCkyeljdvbkkFDA'">
                        <rect style="fill:#8c8c8c;stroke-width:0.284501;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1010-4"
                              width="3"
                              height="3"
                              x="119.11491"
                              y="62.340725"
                              class="socket-MQyTgOLGCkyeljdvbkkFDA">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.284501;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.284501;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'I68tNng-K0yG-AoUx0HcSw'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1047"
                              width="3.4153223"
                              height="3.9475806"
                              x="125.125"
                              y="66.04126"
                              class="socket-I68tNng-K0yG-AoUx0HcSw">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'wgLiLSBRVUS0KoWi83D4gA'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1049"
                              width="3.7258065"
                              height="1.907258"
                              x="112.66129"
                              y="67.153221"
                              class="socket-wgLiLSBRVUS0KoWi83D4gA">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'tcQfj6XOHUWFSAx_W0cc1A'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.219057;stroke-dashoffset:9.8"
                              id="rect2998-8-16-5"
                              width="3"
                              height="6"
                              x="105.73337"
                              y="48.923397"
                              class="socket-tcQfj6XOHUWFSAx_W0cc1A">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.219057;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.219057;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 't0T4CSAPnEq4rvHAVl84-Q'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.219057;stroke-dashoffset:9.8"
                              id="rect2998-8-16-8"
                              width="3"
                              height="6"
                              x="120.57006"
                              y="48.923397"
                              class="socket-t0T4CSAPnEq4rvHAVl84-Q">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.219057;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.219057;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '8pltGexHAEyFL2ljOe0oMQ'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.219057;stroke-dashoffset:9.8"
                              id="rect1052"
                              width="3"
                              height="6"
                              x="108.91581"
                              y="48.923397"
                              class="socket-8pltGexHAEyFL2ljOe0oMQ">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.219057;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.219057;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'grYBjxIS3E--lmrqenuK8A'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.219057;stroke-dashoffset:9.8"
                              id="rect1054"
                              width="3"
                              height="6"
                              x="123.75249"
                              y="48.923397"
                              class="socket-grYBjxIS3E--lmrqenuK8A">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.219057;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.219057;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                  </xsl:choose>
               </xsl:for-each>
            </g>
            <xsl:if test="../../..//HullConfig/SecondaryStructure/SecondaryStructureConfig[Segment = 1][Key = '42d07c1a-156b-4057-aaca-7a2024751423']">
               <g data-hull="42d07c1a-156b-4057-aaca-7a2024751423"
                  transform="matrix(1.0735559,0,0,1.0735559,68.772732,-5.114387)"
                  class="super"
                  data-index="1"
                  style="display:inline"
                  id="g1274-3">
                  <g id="g3338-9-6-0"
                     class="frame"
                     style="stroke-width:0.372594;stroke-dasharray:none">
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.372594;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="M 38.514509,32.712242 V 30.70497 h 6.35113 V 28.948607 H 44.53632 v -0.972269 h 0.329319 V 25.843611 H 44.53632 v -1.254544 h 6.69613 v 1.238863 h -0.517498 v 2.069998 h 0.517498 v 1.082043 h -0.517498 v 3.732271 z"
                           id="path3329-1-0-1"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.372594;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="M 43.501323,30.689288 V 22.628842"
                           id="path3331-3-5-8"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.372594;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 43.501323,25.843611 h 0.565658"
                           id="path3333-0-0-2"/>
                  </g>
                                   
                                   
                                   
                  <g id="g3346-8-8-7" class="sockets">
                     <xsl:for-each select="../../..//PartDamage">
                        <xsl:variable name="percent" select="HealthPercent"/>
                        <xsl:choose>
                           <xsl:when test="Key = '4dpVMvs8nUmd-5az35rT2Q'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.703938;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    class="socket-4dpVMvs8nUmd-5az35rT2Q"
                                    width="3.3044353"
                                    height="1.4570738"
                                    x="46.217739"
                                    y="24.734459"
                                    id="rect284-1-4-6">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.703938;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.703938;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                           <xsl:when test="Key = 'zj9tWS4kP0qww93h23r_mQ'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.600001;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    class="socket-zj9tWS4kP0qww93h23r_mQ"
                                    width="2.7278225"
                                    height="1.5302418"
                                    x="41.516125"
                                    y="31.026209"
                                    id="rect286-9-3-2">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.600001;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.600001;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                        </xsl:choose>
                     </xsl:for-each>
                  </g>
               </g>
            </xsl:if>
            <xsl:if test="../../..//HullConfig/SecondaryStructure/SecondaryStructureConfig[Segment = 1][Key = 'c9d04445-3558-46b4-b6fc-7dca8617d438']">
               <g data-hull="c9d04445-3558-46b4-b6fc-7dca8617d438"
                  transform="matrix(1.4841307,0,0,1.3609842,-72.178011,-56.341388)"
                  class="super"
                  data-index="1"
                  id="g1284-3"
                  style="display:inline">
                  <g id="g9491-9-4-2"
                     class="frame"
                     style="stroke-width:0.281447;stroke-dasharray:none">
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.281447;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 131.20161,63.449596 h -7.54032 v -1.530241 h 0.66532 v -0.931453 l 1.46371,-2.284275 h 0.75403 v -0.709676 h 4.10283 v 2.594758 h 0.35483 v 0.709676 h -0.59878 v 0.53226 h 0.79838 z"
                           id="path8570-8-6-6"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.281447;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 130.40323,61.298385 h -5.05646 l -0.0222,-0.709676 h 5.32258"
                           id="path8572-8-2-7"/>
                     <rect style="fill:#8c8c8c;fill-opacity:1;stroke:#8c8c8c;stroke-width:0.281447;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                           id="rect8574-5-6-0"
                           width="3.2156999"
                           height="0.72076529"
                           x="127.43145"
                           y="59.867943"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.281447;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 126.54435,58.703627 0.82057,0.465728 v 1.419352"
                           id="path8576-5-9-5"/>
                  </g>
                                   
                                   
                                   
                                   
                  <g id="g9495-3-4-5" class="sockets">
                     <xsl:for-each select="../../..//PartDamage">
                        <xsl:variable name="percent" select="HealthPercent"/>
                        <xsl:choose>
                           <xsl:when test="Key = 'zj9tWS4kP0qww93h23r_mQ'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect9483-3-5-6"
                                    width="1.5123487"
                                    height="1.2545443"
                                    x="125.11822"
                                    y="61.613804"
                                    class="socket-zj9tWS4kP0qww93h23r_mQ">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                           <xsl:when test="Key = '4dpVMvs8nUmd-5az35rT2Q'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect9485-3-6-3"
                                    width="1.5368167"
                                    height="1.2388625"
                                    x="128.37125"
                                    y="57.614944"
                                    class="socket-4dpVMvs8nUmd-5az35rT2Q">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                        </xsl:choose>
                     </xsl:for-each>
                  </g>
               </g>
            </xsl:if>
            <xsl:if test="../../..//HullConfig/SecondaryStructure/SecondaryStructureConfig[Segment = 1][Key = '9ebcea74-e9c9-45b3-b616-e12e3f491024']">
               <g data-hull="9ebcea74-e9c9-45b3-b616-e12e3f491024"
                  transform="matrix(1.1836802,0,0,1.1836802,168.96062,-52.708098)"
                  class="super"
                  data-index="1"
                  id="g1293-8"
                  style="display:inline">
                  <g id="g5905-4-4-3"
                     style="stroke:#8c8c8c;stroke-width:0.337929;stroke-dasharray:none;stroke-opacity:1"
                     transform="translate(-245.38886,-5.3945402)"
                     class="frame">
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.337929;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 199.16223,75.271634 v -2.860887 h 1.86291 v -1.131049 h -0.28831 V 70.48131 h 2.99395 v 0.798388 h -0.42137 v 3.991936 z"
                           id="path4717-1-2-5"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.337929;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="M 199.93844,72.366392 V 66.201069"
                           id="path4719-8-9-4"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.337929;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 199.62796,68.906714 h 0.73186"
                           id="path4721-4-0-2"/>
                  </g>
                                   
                                   
                                   
                  <g id="g5967-3-6-7"
                     transform="translate(-245.38886,-5.3945402)"
                     class="sockets">
                     <xsl:for-each select="../../..//PartDamage">
                        <xsl:variable name="percent" select="HealthPercent"/>
                        <xsl:choose>
                           <xsl:when test="Key = 'zj9tWS4kP0qww93h23r_mQ'">
                              <rect style="fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect5961-4-2-0"
                                    width="1.0423387"
                                    height="1.0423387"
                                    x="199.76102"
                                    y="72.854294"
                                    class="socket-zj9tWS4kP0qww93h23r_mQ">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                           <xsl:when test="Key = '4dpVMvs8nUmd-5az35rT2Q'">
                              <rect style="fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect5963-1-2-5"
                                    width="1.7520161"
                                    height="1.108871"
                                    x="201.31345"
                                    y="70.281715"
                                    class="socket-4dpVMvs8nUmd-5az35rT2Q">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                        </xsl:choose>
                     </xsl:for-each>
                  </g>
               </g>
            </xsl:if>
            <xsl:if test="../../..//HullConfig/SecondaryStructure/SecondaryStructureConfig[Segment = 01][Key = '59344a67-9e7b-43df-9f7c-505ad9a0ab87']">
               <g data-hull="59344a67-9e7b-43df-9f7c-505ad9a0ab87"
                  transform="matrix(1.2933998,0,0,1.2933998,58.025268,-24.064031)"
                  class="super"
                  data-index="01"
                  id="g1301-1"
                  style="display:inline">
                  <g id="g8273-6-6-6" class="frame">
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.3;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 42.999503,41.807688 v -1.301591 l 0.814425,-3.03947 v -0.583026 h 2.510118 l 0.327834,0.567825 h 1.459892 v 0.718082 H 47.56291 v 0.893863 h 0.36068 v 0.721363 h -0.36068 v 2.022954 z"
                           id="path8267-2-3-5"/>
                     <path style="fill:#8c8c8c;fill-opacity:1;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.3;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 44.567683,36.883601 v -0.893863 l -0.284577,-0.164303 v -0.353198 l 0.22253,-0.128479 v -1.314246 l 0.281932,-0.281932 v -0.408067 h 0.281935 v 3.497043"
                           id="path8269-5-1-7"/>
                  </g>
                                   
                                   
                  <g id="g8281-7-9-5" class="sockets">
                     <xsl:for-each select="../../..//PartDamage">
                        <xsl:variable name="percent" select="HealthPercent"/>
                        <xsl:choose>
                           <xsl:when test="Key = 'zj9tWS4kP0qww93h23r_mQ'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect8275-2-6-6"
                                    width="1.113408"
                                    height="1.2859079"
                                    x="43.940414"
                                    y="39.047688"
                                    class="socket-zj9tWS4kP0qww93h23r_mQ">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                           <xsl:when test="Key = '4dpVMvs8nUmd-5az35rT2Q'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect8277-9-5-9"
                                    width="1.3643168"
                                    height="1.0663626"
                                    x="44.944046"
                                    y="36.914967"
                                    class="socket-4dpVMvs8nUmd-5az35rT2Q">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                        </xsl:choose>
                     </xsl:for-each>
                  </g>
               </g>
            </xsl:if>
         </g>
      </g>
   </xsl:template>
   <xsl:template match="HullConfig/PrimaryStructure/SegmentConfiguration[Key = '2f2b451c-4776-405c-9914-cad4764f1072']">
      <g xmlns="http://www.w3.org/2000/svg"
         xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
         xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
         xmlns:svg="http://www.w3.org/2000/svg"
         id="hull-2f2b451c-4776-405c-9914-cad4764f1072"
         style="display:inline;stroke:#8c8c8c;stroke-width:0.319925;stroke-dasharray:none;stroke-opacity:1"
         class="hull stern"
         data-width="20.713">
         <g id="g3808"
            transform="matrix(1.2502942,0,0,1.2502942,-27.524111,-77.153463)"
            style="display:inline">
            <g id="g1364"
               style="stroke:#8c8c8c;stroke-width:0.319925;stroke-dasharray:none;stroke-opacity:1"
               class="frame">
               <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.319925;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                     d="M 22.17407,72.418569 V 85.779466 H 38.420418 V 72.418569 l -4.35954,-1.756363 h -9.252265 z"
                     id="path1355"/>
               <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.319925;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                     d="m 38.451782,74.61402 h -0.752727 l -3.732268,-1.505452 h -9.220901 l -2.540452,1.787726"
                     id="path1357"/>
               <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.319925;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                     d="M 22.142706,83.458557 H 38.389054"
                     id="path1359"/>
            </g>
            <g id="g1507"
               style="stroke:#8c8c8c;stroke-width:0.319925;stroke-dasharray:none;stroke-opacity:1"
               class="sockets">
               <xsl:for-each select="../../..//PartDamage">
                  <xsl:variable name="percent" select="HealthPercent"/>
                  <xsl:choose>
                     <xsl:when test="Key = 'vOzzHo4KfE60wZ3Q1s38GA'">
                        <rect style="fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.308862;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1418"
                              width="4.9351492"
                              height="7.1166143"
                              x="25.179445"
                              y="74.772636"
                              class="socket-vOzzHo4KfE60wZ3Q1s38GA">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.308862;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.308862;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '6evWdeLGT0uALe075-nhgw'">
                        <rect style="fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.26979;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1420"
                              width="3.7292683"
                              height="3.7292683"
                              x="30.773996"
                              y="76.466309"
                              class="socket-6evWdeLGT0uALe075-nhgw">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.26979;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.26979;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'dzec-EbyJ02MpDFyy0LoNA'">
                        <rect style="fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.253366;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1422"
                              width="2.5108478"
                              height="1.6718564"
                              x="35.438797"
                              y="76.270622"
                              class="socket-dzec-EbyJ02MpDFyy0LoNA">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.253366;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.253366;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'kVxQISZZkEW7ronz4_V1-A'">
                        <rect style="display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.253366;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1422-9"
                              width="2.5108478"
                              height="1.6718564"
                              x="35.438797"
                              y="78.657051"
                              class="socket-kVxQISZZkEW7ronz4_V1-A">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.253366;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.253366;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'chyIvxHr90KGG5rpz5l5Bw'">
                        <rect style="fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.129089;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1424-7"
                              width="0.6707226"
                              height="0.67072296"
                              x="25.139238"
                              y="71.231552"
                              class="socket-chyIvxHr90KGG5rpz5l5Bw">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.129089;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.129089;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'Ah920T-vMEat6CcR81KseQ'">
                        <rect style="display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.129089;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1424-7-6"
                              width="0.6707226"
                              height="0.67072296"
                              x="26.057785"
                              y="71.231552"
                              class="socket-Ah920T-vMEat6CcR81KseQ">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.129089;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.129089;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'kZlReixxdE6hIPu3FQFyCg'">
                        <rect style="display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.129089;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1424-7-9"
                              width="0.6707226"
                              height="0.67072296"
                              x="27.575792"
                              y="73.518044"
                              class="socket-kZlReixxdE6hIPu3FQFyCg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.129089;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.129089;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'JXFDj6CCiEaP_m5J5bfbrw'">
                        <rect style="display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.129089;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1424-7-6-2"
                              width="0.6707226"
                              height="0.67072296"
                              x="28.494339"
                              y="73.518044"
                              class="socket-JXFDj6CCiEaP_m5J5bfbrw">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.129089;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.129089;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'bDZNYbbadkWmZJ19zYmQUg'">
                        <rect style="display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.129089;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1424-7-3"
                              width="0.6707226"
                              height="0.67072296"
                              x="27.575792"
                              y="82.418655"
                              class="socket-bDZNYbbadkWmZJ19zYmQUg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.129089;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.129089;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'SMbKH1hGBkCaNQ_mb-GqpA'">
                        <rect style="display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.129089;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1424-7-6-7"
                              width="0.6707226"
                              height="0.67072296"
                              x="28.494339"
                              y="82.418655"
                              class="socket-SMbKH1hGBkCaNQ_mb-GqpA">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.129089;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.129089;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'fzTrqxQAPkWNzKCYJ8wRTQ'">
                        <rect style="display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.129089;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1424-7-0"
                              width="0.6707226"
                              height="0.67072296"
                              x="25.029814"
                              y="84.753235"
                              class="socket-fzTrqxQAPkWNzKCYJ8wRTQ">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.129089;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.129089;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'TXtyCfvv80qRS81kC5xDww'">
                        <rect style="display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.129089;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1424-7-6-8"
                              width="0.6707226"
                              height="0.67072296"
                              x="25.94836"
                              y="84.753235"
                              class="socket-TXtyCfvv80qRS81kC5xDww">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.129089;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.129089;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'VDQhZPo-rkWkzwozat27fw'">
                        <rect style="fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.319925;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1426"
                              width="2.6345429"
                              height="2.0386345"
                              x="29.371489"
                              y="70.317207"
                              class="socket-VDQhZPo-rkWkzwozat27fw">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.319925;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.319925;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '87PSgg9GREmGU9MIRAXXhg'">
                        <rect style="fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.319925;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1426-7"
                              width="2.6345429"
                              height="2.0386345"
                              x="29.277399"
                              y="84.085655"
                              class="socket-87PSgg9GREmGU9MIRAXXhg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.319925;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.319925;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '6EaVarsvekuNlwz-krTniw'">
                        <rect style="fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.223727;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1428"
                              width="2.2289221"
                              height="1.775802"
                              x="22.282789"
                              y="73.279663"
                              class="socket-6EaVarsvekuNlwz-krTniw">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.223727;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.223727;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'KzgSgS5kwU-lUDtS6_JF8g'">
                        <rect style="display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.223727;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1428-2"
                              width="2.2289221"
                              height="1.775802"
                              x="22.282789"
                              y="75.752327"
                              class="socket-KzgSgS5kwU-lUDtS6_JF8g">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.223727;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.223727;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'Cf4rY7NzAUCTyNCsK5EyRw'">
                        <rect style="display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.223727;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1428-26"
                              width="2.2289221"
                              height="1.775802"
                              x="22.282789"
                              y="78.189316"
                              class="socket-Cf4rY7NzAUCTyNCsK5EyRw">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.223727;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.223727;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'dFLeC8tGNEOZ_JWcN0fjqg'">
                        <rect style="display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.223727;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1428-3"
                              width="2.2289221"
                              height="1.775802"
                              x="22.282789"
                              y="80.523903"
                              class="socket-dFLeC8tGNEOZ_JWcN0fjqg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.223727;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.223727;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'ypsi3zEY-UyS1a6urt5hMQ'">
                        <rect style="display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.223727;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1428-9"
                              width="2.2289221"
                              height="1.775802"
                              x="22.282789"
                              y="82.85849"
                              class="socket-ypsi3zEY-UyS1a6urt5hMQ">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.223727;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.223727;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                  </xsl:choose>
               </xsl:for-each>
            </g>
            <xsl:if test="../../..//HullConfig/SecondaryStructure/SecondaryStructureConfig[Segment = 2][Key = '42d07c1a-156b-4057-aaca-7a2024751423']">
               <g data-hull="42d07c1a-156b-4057-aaca-7a2024751423"
                  transform="matrix(0.85864263,0,0,0.85864263,-8.7233717,42.53063)"
                  class="super"
                  data-index="2"
                  style="display:inline"
                  id="g1274-5">
                  <g id="g3338-9-6-4"
                     class="frame"
                     style="stroke-width:0.372594;stroke-dasharray:none">
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.372594;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="M 38.514509,32.712242 V 30.70497 h 6.35113 V 28.948607 H 44.53632 v -0.972269 h 0.329319 V 25.843611 H 44.53632 v -1.254544 h 6.69613 v 1.238863 h -0.517498 v 2.069998 h 0.517498 v 1.082043 h -0.517498 v 3.732271 z"
                           id="path3329-1-0-6"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.372594;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="M 43.501323,30.689288 V 22.628842"
                           id="path3331-3-5-1"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.372594;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 43.501323,25.843611 h 0.565658"
                           id="path3333-0-0-21"/>
                  </g>
                                   
                                   
                                   
                  <g id="g3346-8-8-6" class="sockets">
                     <xsl:for-each select="../../..//PartDamage">
                        <xsl:variable name="percent" select="HealthPercent"/>
                        <xsl:choose>
                           <xsl:when test="Key = '4dpVMvs8nUmd-5az35rT2Q'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.703938;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    class="socket-4dpVMvs8nUmd-5az35rT2Q"
                                    width="3.3044353"
                                    height="1.4570738"
                                    x="46.217739"
                                    y="24.734459"
                                    id="rect284-1-4-9">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.703938;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.703938;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                           <xsl:when test="Key = 'zj9tWS4kP0qww93h23r_mQ'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.600001;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    class="socket-zj9tWS4kP0qww93h23r_mQ"
                                    width="2.7278225"
                                    height="1.5302418"
                                    x="41.516125"
                                    y="31.026209"
                                    id="rect286-9-3-0">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.600001;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.600001;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                        </xsl:choose>
                     </xsl:for-each>
                  </g>
               </g>
            </xsl:if>
            <xsl:if test="../../..//HullConfig/SecondaryStructure/SecondaryStructureConfig[Segment = 2][Key = 'c9d04445-3558-46b4-b6fc-7dca8617d438']">
               <g data-hull="c9d04445-3558-46b4-b6fc-7dca8617d438"
                  transform="matrix(1.1870252,0,0,1.0885312,-121.45743,1.5586723)"
                  class="super"
                  data-index="2"
                  id="g1284-2"
                  style="display:inline">
                  <g id="g9491-9-4-6"
                     class="frame"
                     style="stroke-width:0.281447;stroke-dasharray:none">
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.281447;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 131.20161,63.449596 h -7.54032 v -1.530241 h 0.66532 v -0.931453 l 1.46371,-2.284275 h 0.75403 v -0.709676 h 4.10283 v 2.594758 h 0.35483 v 0.709676 h -0.59878 v 0.53226 h 0.79838 z"
                           id="path8570-8-6-8"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.281447;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 130.40323,61.298385 h -5.05646 l -0.0222,-0.709676 h 5.32258"
                           id="path8572-8-2-2"/>
                     <rect style="fill:#8c8c8c;fill-opacity:1;stroke:#8c8c8c;stroke-width:0.281447;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                           id="rect8574-5-6-1"
                           width="3.2156999"
                           height="0.72076529"
                           x="127.43145"
                           y="59.867943"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.281447;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 126.54435,58.703627 0.82057,0.465728 v 1.419352"
                           id="path8576-5-9-6"/>
                  </g>
                                   
                                   
                                   
                                   
                  <g id="g9495-3-4-0" class="sockets">
                     <xsl:for-each select="../../..//PartDamage">
                        <xsl:variable name="percent" select="HealthPercent"/>
                        <xsl:choose>
                           <xsl:when test="Key = 'zj9tWS4kP0qww93h23r_mQ'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect9483-3-5-8"
                                    width="1.5123487"
                                    height="1.2545443"
                                    x="125.11822"
                                    y="61.613804"
                                    class="socket-zj9tWS4kP0qww93h23r_mQ">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                           <xsl:when test="Key = '4dpVMvs8nUmd-5az35rT2Q'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect9485-3-6-7"
                                    width="1.5368167"
                                    height="1.2388625"
                                    x="128.37125"
                                    y="57.614944"
                                    class="socket-4dpVMvs8nUmd-5az35rT2Q">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                        </xsl:choose>
                     </xsl:for-each>
                  </g>
               </g>
            </xsl:if>
            <xsl:if test="../../..//HullConfig/SecondaryStructure/SecondaryStructureConfig[Segment = 2][Key = '9ebcea74-e9c9-45b3-b616-e12e3f491024']">
               <g data-hull="9ebcea74-e9c9-45b3-b616-e12e3f491024"
                  transform="matrix(0.94672133,0,0,0.94672133,71.408075,4.4646187)"
                  class="super"
                  data-index="2"
                  id="g1293-83"
                  style="display:inline">
                  <g id="g5905-4-4-6"
                     style="stroke:#8c8c8c;stroke-width:0.337929;stroke-dasharray:none;stroke-opacity:1"
                     transform="translate(-245.38886,-5.3945402)"
                     class="frame">
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.337929;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 199.16223,75.271634 v -2.860887 h 1.86291 v -1.131049 h -0.28831 V 70.48131 h 2.99395 v 0.798388 h -0.42137 v 3.991936 z"
                           id="path4717-1-2-4"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.337929;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="M 199.93844,72.366392 V 66.201069"
                           id="path4719-8-9-6"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.337929;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 199.62796,68.906714 h 0.73186"
                           id="path4721-4-0-25"/>
                  </g>
                                   
                                   
                                   
                  <g id="g5967-3-6-8"
                     transform="translate(-245.38886,-5.3945402)"
                     class="sockets">
                     <xsl:for-each select="../../..//PartDamage">
                        <xsl:variable name="percent" select="HealthPercent"/>
                        <xsl:choose>
                           <xsl:when test="Key = 'zj9tWS4kP0qww93h23r_mQ'">
                              <rect style="fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect5961-4-2-3"
                                    width="1.0423387"
                                    height="1.0423387"
                                    x="199.76102"
                                    y="72.854294"
                                    class="socket-zj9tWS4kP0qww93h23r_mQ">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                           <xsl:when test="Key = '4dpVMvs8nUmd-5az35rT2Q'">
                              <rect style="fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect5963-1-2-7"
                                    width="1.7520161"
                                    height="1.108871"
                                    x="201.31345"
                                    y="70.281715"
                                    class="socket-4dpVMvs8nUmd-5az35rT2Q">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                        </xsl:choose>
                     </xsl:for-each>
                  </g>
               </g>
            </xsl:if>
            <xsl:if test="../../..//HullConfig/SecondaryStructure/SecondaryStructureConfig[Segment = 2][Key = '59344a67-9e7b-43df-9f7c-505ad9a0ab87']">
               <g data-hull="59344a67-9e7b-43df-9f7c-505ad9a0ab87"
                  transform="matrix(1.0344764,0,0,1.0344764,-17.319319,27.374479)"
                  class="super"
                  data-index="2"
                  id="g1301-6"
                  style="display:inline">
                  <g id="g8273-6-6-3" class="frame">
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.3;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 42.999503,41.807688 v -1.301591 l 0.814425,-3.03947 v -0.583026 h 2.510118 l 0.327834,0.567825 h 1.459892 v 0.718082 H 47.56291 v 0.893863 h 0.36068 v 0.721363 h -0.36068 v 2.022954 z"
                           id="path8267-2-3-2"/>
                     <path style="fill:#8c8c8c;fill-opacity:1;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.3;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 44.567683,36.883601 v -0.893863 l -0.284577,-0.164303 v -0.353198 l 0.22253,-0.128479 v -1.314246 l 0.281932,-0.281932 v -0.408067 h 0.281935 v 3.497043"
                           id="path8269-5-1-1"/>
                  </g>
                                   
                                   
                  <g id="g8281-7-9-1" class="sockets">
                     <xsl:for-each select="../../..//PartDamage">
                        <xsl:variable name="percent" select="HealthPercent"/>
                        <xsl:choose>
                           <xsl:when test="Key = 'zj9tWS4kP0qww93h23r_mQ'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect8275-2-6-7"
                                    width="1.113408"
                                    height="1.2859079"
                                    x="43.940414"
                                    y="39.047688"
                                    class="socket-zj9tWS4kP0qww93h23r_mQ">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                           <xsl:when test="Key = '4dpVMvs8nUmd-5az35rT2Q'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect8277-9-5-98"
                                    width="1.3643168"
                                    height="1.0663626"
                                    x="44.944046"
                                    y="36.914967"
                                    class="socket-4dpVMvs8nUmd-5az35rT2Q">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                        </xsl:choose>
                     </xsl:for-each>
                  </g>
               </g>
            </xsl:if>
         </g>
      </g>
   </xsl:template>
   <xsl:template match="HullConfig/PrimaryStructure/SegmentConfiguration[Key = 'a8bf77b9-b7e3-4498-bf91-d3e777a7f688']">
      <g xmlns="http://www.w3.org/2000/svg"
         xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
         xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
         xmlns:svg="http://www.w3.org/2000/svg"
         id="hull-a8bf77b9-b7e3-4498-bf91-d3e777a7f688"
         class="hull stern"
         data-width="30.722"
         style="display:inline">
         <g id="g3749"
            transform="matrix(1.3870831,0,0,1.3870831,-98.597423,-36.49566)"
            style="display:inline">
            <g id="g451"
               style="stroke:#8c8c8c;stroke-width:0.288375;stroke-dasharray:none;stroke-opacity:1"
               class="frame"
               transform="translate(0,-6.485432)">
               <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.288375;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                     d="m 71.226751,41.102007 v 5.708176 l 0.382309,0.220726 v 2.35109 l -0.382309,0.207899 v 5.860958 h 18.771118 l 3.089315,-1.630908 V 42.685869 l -2.932497,-1.583862 z"
                     id="path389"/>
               <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.288375;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                     d="m 71.226751,43.168345 h 18.791393 l 3.06904,1.519155"
                     id="path438"/>
               <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.288375;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                     d="m 71.226751,53.381047 h 18.857925 l 3.002508,-1.596774"
                     id="path440"/>
               <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.288375;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                     d="m 71.21169,44.288305 h 16.716232 l 2.300907,2.228831 v 3.492945 l -2.300907,2.300906 H 71.233868"
                     id="path442"/>
               <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.288375;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                     d="m 73.252014,55.421371 v 1.685483 l 1.097783,1.097782 h 12.297378 l 2.178931,-2.178931 v -0.55998"
                     id="path444"/>
            </g>
            <g id="g623" class="sockets" transform="translate(0,-6.485432)">
               <xsl:for-each select="../../..//PartDamage">
                  <xsl:variable name="percent" select="HealthPercent"/>
                  <xsl:choose>
                     <xsl:when test="Key = 'dFLeC8tGNEOZ_JWcN0fjqg'">
                        <rect style="fill:#8c8c8c;stroke-width:0.181387;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect505"
                              width="2.5090885"
                              height="2.3069994"
                              x="71.195389"
                              y="41.650867"
                              class="socket-dFLeC8tGNEOZ_JWcN0fjqg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.181387;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.181387;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '6EaVarsvekuNlwz-krTniw'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.181387;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect505-3"
                              width="2.5090885"
                              height="2.3069994"
                              x="71.195389"
                              y="44.239906"
                              class="socket-6EaVarsvekuNlwz-krTniw">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.181387;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.181387;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'KzgSgS5kwU-lUDtS6_JF8g'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.181387;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect505-6"
                              width="2.5090885"
                              height="2.3069994"
                              x="71.195389"
                              y="50.107021"
                              class="socket-KzgSgS5kwU-lUDtS6_JF8g">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.181387;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.181387;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'ypsi3zEY-UyS1a6urt5hMQ'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.181387;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect505-3-9"
                              width="2.5090885"
                              height="2.3069994"
                              x="71.195389"
                              y="52.69606"
                              class="socket-ypsi3zEY-UyS1a6urt5hMQ">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.181387;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.181387;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'VDQhZPo-rkWkzwozat27fw'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect529"
                              width="2.3836341"
                              height="2.2268162"
                              x="74.363113"
                              y="40.453918"
                              class="socket-VDQhZPo-rkWkzwozat27fw">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'vOzzHo4KfE60wZ3Q1s38GA'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect531"
                              width="6.7118115"
                              height="6.8372664"
                              x="75.492203"
                              y="44.881321"
                              class="socket-vOzzHo4KfE60wZ3Q1s38GA">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '6evWdeLGT0uALe075-nhgw'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect533"
                              width="3.8890872"
                              height="3.8890872"
                              x="84.932648"
                              y="46.355412"
                              class="socket-6evWdeLGT0uALe075-nhgw">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'kZlReixxdE6hIPu3FQFyCg'">
                        <rect style="fill:#8c8c8c;stroke-width:0.0895793;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect535"
                              width="0.72093731"
                              height="0.72093731"
                              x="86.123459"
                              y="44.694099"
                              class="socket-kZlReixxdE6hIPu3FQFyCg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.0895793;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.0895793;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '87PSgg9GREmGU9MIRAXXhg'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect559"
                              width="2.0386345"
                              height="2.6972702"
                              x="80.41629"
                              y="55.863716"
                              class="socket-87PSgg9GREmGU9MIRAXXhg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'JXFDj6CCiEaP_m5J5bfbrw'">
                        <rect style="fill:#8c8c8c;stroke-width:0.0895793;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect540"
                              width="0.72093731"
                              height="0.72093731"
                              x="87.025955"
                              y="44.694099"
                              class="socket-JXFDj6CCiEaP_m5J5bfbrw">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.0895793;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.0895793;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'bDZNYbbadkWmZJ19zYmQUg'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.0895793;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect535-9"
                              width="0.72093731"
                              height="0.72093731"
                              x="86.123459"
                              y="51.337334"
                              class="socket-bDZNYbbadkWmZJ19zYmQUg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.0895793;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.0895793;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'fzTrqxQAPkWNzKCYJ8wRTQ'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.0895793;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect535-1"
                              width="0.72093731"
                              height="0.72093731"
                              x="74.172913"
                              y="54.406349"
                              class="socket-fzTrqxQAPkWNzKCYJ8wRTQ">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.0895793;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.0895793;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'TXtyCfvv80qRS81kC5xDww'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.0895793;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect540-5"
                              width="0.72093731"
                              height="0.72093731"
                              x="75.075409"
                              y="54.406349"
                              class="socket-TXtyCfvv80qRS81kC5xDww">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.0895793;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.0895793;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'chyIvxHr90KGG5rpz5l5Bw'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.0895793;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect535-7"
                              width="0.72093731"
                              height="0.72093731"
                              x="74.172913"
                              y="43.385807"
                              class="socket-chyIvxHr90KGG5rpz5l5Bw">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.0895793;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.0895793;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'Ah920T-vMEat6CcR81KseQ'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.0895793;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect540-0"
                              width="0.72093731"
                              height="0.72093731"
                              x="75.075409"
                              y="43.385807"
                              class="socket-Ah920T-vMEat6CcR81KseQ">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.0895793;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.0895793;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'SMbKH1hGBkCaNQ_mb-GqpA'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.0895793;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect540-7"
                              width="0.72093731"
                              height="0.72093731"
                              x="87.025955"
                              y="51.337334"
                              class="socket-SMbKH1hGBkCaNQ_mb-GqpA">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.0895793;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.0895793;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                  </xsl:choose>
               </xsl:for-each>
            </g>
            <xsl:if test="../../..//HullConfig/SecondaryStructure/SecondaryStructureConfig[Segment = 2][Key = '42d07c1a-156b-4057-aaca-7a2024751423']">
               <g data-hull="42d07c1a-156b-4057-aaca-7a2024751423"
                  transform="matrix(0.77396653,0,0,0.77396653,48.642677,9.0246907)"
                  class="super"
                  data-index="2"
                  style="display:inline"
                  id="g1274">
                  <g id="g3338-9-6"
                     class="frame"
                     style="stroke-width:0.372594;stroke-dasharray:none">
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.372594;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="M 38.514509,32.712242 V 30.70497 h 6.35113 V 28.948607 H 44.53632 v -0.972269 h 0.329319 V 25.843611 H 44.53632 v -1.254544 h 6.69613 v 1.238863 h -0.517498 v 2.069998 h 0.517498 v 1.082043 h -0.517498 v 3.732271 z"
                           id="path3329-1-0"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.372594;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="M 43.501323,30.689288 V 22.628842"
                           id="path3331-3-5"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.372594;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 43.501323,25.843611 h 0.565658"
                           id="path3333-0-0"/>
                  </g>
                                   
                                   
                                   
                  <g id="g3346-8-8" class="sockets">
                     <xsl:for-each select="../../..//PartDamage">
                        <xsl:variable name="percent" select="HealthPercent"/>
                        <xsl:choose>
                           <xsl:when test="Key = '4dpVMvs8nUmd-5az35rT2Q'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.703938;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    class="socket-4dpVMvs8nUmd-5az35rT2Q"
                                    width="3.3044353"
                                    height="1.4570738"
                                    x="46.217739"
                                    y="24.734459"
                                    id="rect284-1-4">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.703938;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.703938;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                           <xsl:when test="Key = 'zj9tWS4kP0qww93h23r_mQ'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.600001;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    class="socket-zj9tWS4kP0qww93h23r_mQ"
                                    width="2.7278225"
                                    height="1.5302418"
                                    x="41.516125"
                                    y="31.026209"
                                    id="rect286-9-3">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.600001;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.600001;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                        </xsl:choose>
                     </xsl:for-each>
                  </g>
               </g>
            </xsl:if>
            <xsl:if test="../../..//HullConfig/SecondaryStructure/SecondaryStructureConfig[Segment = 2][Key = 'c9d04445-3558-46b4-b6fc-7dca8617d438']">
               <g data-hull="c9d04445-3558-46b4-b6fc-7dca8617d438"
                  transform="matrix(1.0699652,0,0,0.98118433,-52.973975,-27.906766)"
                  class="super"
                  data-index="2"
                  id="g1284"
                  style="display:inline">
                  <g id="g9491-9-4"
                     class="frame"
                     style="stroke-width:0.281447;stroke-dasharray:none">
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.281447;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 131.20161,63.449596 h -7.54032 v -1.530241 h 0.66532 v -0.931453 l 1.46371,-2.284275 h 0.75403 v -0.709676 h 4.10283 v 2.594758 h 0.35483 v 0.709676 h -0.59878 v 0.53226 h 0.79838 z"
                           id="path8570-8-6"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.281447;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 130.40323,61.298385 h -5.05646 l -0.0222,-0.709676 h 5.32258"
                           id="path8572-8-2"/>
                     <rect style="fill:#8c8c8c;fill-opacity:1;stroke:#8c8c8c;stroke-width:0.281447;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                           id="rect8574-5-6"
                           width="3.2156999"
                           height="0.72076529"
                           x="127.43145"
                           y="59.867943"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.281447;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 126.54435,58.703627 0.82057,0.465728 v 1.419352"
                           id="path8576-5-9"/>
                  </g>
                                   
                                   
                                   
                                   
                  <g id="g9495-3-4" class="sockets">
                     <xsl:for-each select="../../..//PartDamage">
                        <xsl:variable name="percent" select="HealthPercent"/>
                        <xsl:choose>
                           <xsl:when test="Key = 'zj9tWS4kP0qww93h23r_mQ'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect9483-3-5"
                                    width="1.5123487"
                                    height="1.2545443"
                                    x="125.11822"
                                    y="61.613804"
                                    class="socket-zj9tWS4kP0qww93h23r_mQ">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                           <xsl:when test="Key = '4dpVMvs8nUmd-5az35rT2Q'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect9485-3-6"
                                    width="1.5368167"
                                    height="1.2388625"
                                    x="128.37125"
                                    y="57.614944"
                                    class="socket-4dpVMvs8nUmd-5az35rT2Q">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                        </xsl:choose>
                     </xsl:for-each>
                  </g>
               </g>
            </xsl:if>
            <xsl:if test="../../..//HullConfig/SecondaryStructure/SecondaryStructureConfig[Segment = 2][Key = '9ebcea74-e9c9-45b3-b616-e12e3f491024']">
               <g data-hull="9ebcea74-e9c9-45b3-b616-e12e3f491024"
                  transform="matrix(0.85335925,0,0,0.85335925,120.87186,-25.287393)"
                  class="super"
                  data-index="2"
                  id="g1293"
                  style="display:inline">
                  <g id="g5905-4-4"
                     style="stroke:#8c8c8c;stroke-width:0.337929;stroke-dasharray:none;stroke-opacity:1"
                     transform="translate(-245.38886,-5.3945402)"
                     class="frame">
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.337929;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 199.16223,75.271634 v -2.860887 h 1.86291 v -1.131049 h -0.28831 V 70.48131 h 2.99395 v 0.798388 h -0.42137 v 3.991936 z"
                           id="path4717-1-2"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.337929;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="M 199.93844,72.366392 V 66.201069"
                           id="path4719-8-9"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.337929;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 199.62796,68.906714 h 0.73186"
                           id="path4721-4-0"/>
                  </g>
                                   
                                   
                                   
                  <g id="g5967-3-6"
                     transform="translate(-245.38886,-5.3945402)"
                     class="sockets">
                     <xsl:for-each select="../../..//PartDamage">
                        <xsl:variable name="percent" select="HealthPercent"/>
                        <xsl:choose>
                           <xsl:when test="Key = 'zj9tWS4kP0qww93h23r_mQ'">
                              <rect style="fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect5961-4-2"
                                    width="1.0423387"
                                    height="1.0423387"
                                    x="199.76102"
                                    y="72.854294"
                                    class="socket-zj9tWS4kP0qww93h23r_mQ">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                           <xsl:when test="Key = '4dpVMvs8nUmd-5az35rT2Q'">
                              <rect style="fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect5963-1-2"
                                    width="1.7520161"
                                    height="1.108871"
                                    x="201.31345"
                                    y="70.281715"
                                    class="socket-4dpVMvs8nUmd-5az35rT2Q">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                        </xsl:choose>
                     </xsl:for-each>
                  </g>
               </g>
            </xsl:if>
            <xsl:if test="../../..//HullConfig/SecondaryStructure/SecondaryStructureConfig[Segment = 2][Key = '59344a67-9e7b-43df-9f7c-505ad9a0ab87']">
               <g data-hull="59344a67-9e7b-43df-9f7c-505ad9a0ab87"
                  transform="matrix(0.93246021,0,0,0.93246021,40.894428,-4.6368159)"
                  class="super"
                  data-index="2"
                  id="g1301"
                  style="display:inline">
                  <g id="g8273-6-6" class="frame">
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.3;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 42.999503,41.807688 v -1.301591 l 0.814425,-3.03947 v -0.583026 h 2.510118 l 0.327834,0.567825 h 1.459892 v 0.718082 H 47.56291 v 0.893863 h 0.36068 v 0.721363 h -0.36068 v 2.022954 z"
                           id="path8267-2-3"/>
                     <path style="fill:#8c8c8c;fill-opacity:1;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.3;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 44.567683,36.883601 v -0.893863 l -0.284577,-0.164303 v -0.353198 l 0.22253,-0.128479 v -1.314246 l 0.281932,-0.281932 v -0.408067 h 0.281935 v 3.497043"
                           id="path8269-5-1"/>
                  </g>
                                   
                                   
                  <g id="g8281-7-9" class="sockets">
                     <xsl:for-each select="../../..//PartDamage">
                        <xsl:variable name="percent" select="HealthPercent"/>
                        <xsl:choose>
                           <xsl:when test="Key = 'zj9tWS4kP0qww93h23r_mQ'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect8275-2-6"
                                    width="1.113408"
                                    height="1.2859079"
                                    x="43.940414"
                                    y="39.047688"
                                    class="socket-zj9tWS4kP0qww93h23r_mQ">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                           <xsl:when test="Key = '4dpVMvs8nUmd-5az35rT2Q'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect8277-9-5"
                                    width="1.3643168"
                                    height="1.0663626"
                                    x="44.944046"
                                    y="36.914967"
                                    class="socket-4dpVMvs8nUmd-5az35rT2Q">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                        </xsl:choose>
                     </xsl:for-each>
                  </g>
               </g>
            </xsl:if>
         </g>
      </g>
   </xsl:template>
   <xsl:template match="HullConfig/PrimaryStructure/SegmentConfiguration[Key = '78d72a9a-893c-41c6-bddd-f198dfcf77ee']">
      <g xmlns="http://www.w3.org/2000/svg"
         xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
         xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
         xmlns:svg="http://www.w3.org/2000/svg"
         id="hull-78d72a9a-893c-41c6-bddd-f198dfcf77ee"
         style="display:inline;stroke:#8c8c8c;stroke-width:0.302984;stroke-dasharray:none;stroke-opacity:1"
         class="stern hull"
         data-width="24.897">
         <g id="g3691"
            style="display:inline"
            transform="matrix(1.3202013,0,0,1.3202013,-25.405027,-45.773786)">
            <g id="g1294"
               style="stroke:#8c8c8c;stroke-width:0.302984;stroke-dasharray:none;stroke-opacity:1"
               class="frame"
               transform="translate(0,11.62386)">
               <path style="display:inline;fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.302984;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                     d="m -210.93954,26.439519 3.75155,-3.700904 1.06636,2.509089 h 11.79272 l 1.94454,-1.317273 v 11.03999 l -1.53681,-1.348636 h -12.20045 l -1.3343,2.311077 -3.48361,-3.483613 z"
                     id="path1281"
                     transform="translate(230.33433,11.03999)"/>
               <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.302984;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                     d="m 23.14634,33.778605 v -2.101363 h 11.918172 l 0.06273,1.870514 h 1.066364 l 0.113159,0.422323 1.643198,-0.0033 v 1.003636"
                     id="path1287"/>
               <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.302984;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                     d="m 22.8784,46.972852 v 2.261018 h 12.228453 v -1.729838 h 0.620969 l 0.643144,-0.643147 h 1.578994 v -0.850481"
                     id="path1289"/>
            </g>
            <g id="g1362"
               style="stroke:#8c8c8c;stroke-width:0.302984;stroke-dasharray:none;stroke-opacity:1"
               class="sockets"
               transform="translate(0,11.62386)">
               <xsl:for-each select="../../..//PartDamage">
                  <xsl:variable name="percent" select="HealthPercent"/>
                  <xsl:choose>
                     <xsl:when test="Key = 'dFLeC8tGNEOZ_JWcN0fjqg'">
                        <rect style="fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.164861;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1296"
                              width="2.2107213"
                              height="1.35006"
                              x="19.892576"
                              y="38.991234"
                              class="socket-dFLeC8tGNEOZ_JWcN0fjqg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.164861;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.164861;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '6EaVarsvekuNlwz-krTniw'">
                        <rect style="display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.164861;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1296-2"
                              width="2.2107213"
                              height="1.35006"
                              x="19.892576"
                              y="40.753609"
                              class="socket-6EaVarsvekuNlwz-krTniw">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.164861;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.164861;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'vOzzHo4KfE60wZ3Q1s38GA'">
                        <rect style="fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.302984;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1298"
                              width="4.9165926"
                              height="6.8999934"
                              x="22.746109"
                              y="37.071785"
                              class="socket-vOzzHo4KfE60wZ3Q1s38GA">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.302984;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.302984;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'KzgSgS5kwU-lUDtS6_JF8g'">
                        <rect style="fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.14023;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1302"
                              width="2.2510977"
                              height="0.99596035"
                              x="23.760592"
                              y="32.004761"
                              class="socket-KzgSgS5kwU-lUDtS6_JF8g">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.14023;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.14023;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'ypsi3zEY-UyS1a6urt5hMQ'">
                        <rect style="display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.14023;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1302-5"
                              width="2.2510977"
                              height="0.99596035"
                              x="23.760592"
                              y="33.364784"
                              class="socket-ypsi3zEY-UyS1a6urt5hMQ">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.14023;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.14023;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '87PSgg9GREmGU9MIRAXXhg'">
                        <rect style="fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.153792;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1326"
                              width="1.3611284"
                              height="1.3611281"
                              x="28.32519"
                              y="39.841217"
                              class="socket-87PSgg9GREmGU9MIRAXXhg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.153792;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.153792;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'VDQhZPo-rkWkzwozat27fw'">
                        <rect style="display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.153792;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1326-7"
                              width="1.3611284"
                              height="1.3611281"
                              x="29.974258"
                              y="39.841217"
                              class="socket-VDQhZPo-rkWkzwozat27fw">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.153792;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.153792;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'kZlReixxdE6hIPu3FQFyCg'">
                        <rect style="fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.106573;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1328"
                              width="0.65088707"
                              height="0.65088731"
                              x="32.474464"
                              y="35.183334"
                              class="socket-kZlReixxdE6hIPu3FQFyCg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.106573;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.106573;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'JXFDj6CCiEaP_m5J5bfbrw'">
                        <rect style="display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.106573;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1328-7"
                              width="0.65088707"
                              height="0.65088731"
                              x="33.422649"
                              y="35.183334"
                              class="socket-JXFDj6CCiEaP_m5J5bfbrw">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.106573;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.106573;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'chyIvxHr90KGG5rpz5l5Bw'">
                        <rect style="display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.106573;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1328-2"
                              width="0.65088707"
                              height="0.65088731"
                              x="24.371511"
                              y="35.183334"
                              class="socket-chyIvxHr90KGG5rpz5l5Bw">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.106573;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.106573;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'Ah920T-vMEat6CcR81KseQ'">
                        <rect style="display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.106573;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1328-7-1"
                              width="0.65088707"
                              height="0.65088731"
                              x="25.319696"
                              y="35.183334"
                              class="socket-Ah920T-vMEat6CcR81KseQ">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.106573;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.106573;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'kVxQISZZkEW7ronz4_V1-A'">
                        <rect style="display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.14023;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1302-2"
                              width="2.2510977"
                              height="0.99596035"
                              x="23.492805"
                              y="46.527229"
                              class="socket-kVxQISZZkEW7ronz4_V1-A">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.14023;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.14023;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'Cf4rY7NzAUCTyNCsK5EyRw'">
                        <rect style="display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.14023;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1302-5-7"
                              width="2.2510977"
                              height="0.99596035"
                              x="23.492805"
                              y="47.887253"
                              class="socket-Cf4rY7NzAUCTyNCsK5EyRw">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.14023;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.14023;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'fzTrqxQAPkWNzKCYJ8wRTQ'">
                        <rect style="display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.106573;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1328-2-1"
                              width="0.65088707"
                              height="0.65088731"
                              x="24.371511"
                              y="45.212288"
                              class="socket-fzTrqxQAPkWNzKCYJ8wRTQ">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.106573;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.106573;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'TXtyCfvv80qRS81kC5xDww'">
                        <rect style="display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.106573;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1328-7-1-9"
                              width="0.65088707"
                              height="0.65088731"
                              x="25.319696"
                              y="45.212288"
                              class="socket-TXtyCfvv80qRS81kC5xDww">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.106573;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.106573;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'bDZNYbbadkWmZJ19zYmQUg'">
                        <rect style="display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.106573;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1328-3"
                              width="0.65088707"
                              height="0.65088731"
                              x="32.474464"
                              y="45.212288"
                              class="socket-bDZNYbbadkWmZJ19zYmQUg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.106573;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.106573;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'SMbKH1hGBkCaNQ_mb-GqpA'">
                        <rect style="display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.106573;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1328-7-0"
                              width="0.65088707"
                              height="0.65088731"
                              x="33.422649"
                              y="45.212288"
                              class="socket-SMbKH1hGBkCaNQ_mb-GqpA">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.106573;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.106573;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '6evWdeLGT0uALe075-nhgw'">
                        <rect style="fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.302984;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                              id="rect1352"
                              width="5.018177"
                              height="5.3318133"
                              x="32.084969"
                              y="37.855873"
                              class="socket-6evWdeLGT0uALe075-nhgw">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.302984;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke:#8c8c8c;stroke-width:0.302984;stroke-linecap:square;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                  </xsl:choose>
               </xsl:for-each>
            </g>
            <xsl:if test="../../..//HullConfig/SecondaryStructure/SecondaryStructureConfig[Segment = 2][Key = '42d07c1a-156b-4057-aaca-7a2024751423']">
               <g data-hull="42d07c1a-156b-4057-aaca-7a2024751423"
                  transform="matrix(0.81317591,0,0,0.81317591,-7.2388847,16.509694)"
                  class="super"
                  data-index="2"
                  style="display:inline"
                  id="g1274-4">
                  <g id="g3338-9-6-2"
                     class="frame"
                     style="stroke-width:0.372594;stroke-dasharray:none">
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.372594;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="M 38.514509,32.712242 V 30.70497 h 6.35113 V 28.948607 H 44.53632 v -0.972269 h 0.329319 V 25.843611 H 44.53632 v -1.254544 h 6.69613 v 1.238863 h -0.517498 v 2.069998 h 0.517498 v 1.082043 h -0.517498 v 3.732271 z"
                           id="path3329-1-0-61"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.372594;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="M 43.501323,30.689288 V 22.628842"
                           id="path3331-3-5-9"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.372594;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 43.501323,25.843611 h 0.565658"
                           id="path3333-0-0-8"/>
                  </g>
                                   
                                   
                                   
                  <g id="g3346-8-8-0" class="sockets">
                     <xsl:for-each select="../../..//PartDamage">
                        <xsl:variable name="percent" select="HealthPercent"/>
                        <xsl:choose>
                           <xsl:when test="Key = '4dpVMvs8nUmd-5az35rT2Q'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.703938;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    class="socket-4dpVMvs8nUmd-5az35rT2Q"
                                    width="3.3044353"
                                    height="1.4570738"
                                    x="46.217739"
                                    y="24.734459"
                                    id="rect284-1-4-7">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.703938;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.703938;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                           <xsl:when test="Key = 'zj9tWS4kP0qww93h23r_mQ'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.600001;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    class="socket-zj9tWS4kP0qww93h23r_mQ"
                                    width="2.7278225"
                                    height="1.5302418"
                                    x="41.516125"
                                    y="31.026209"
                                    id="rect286-9-3-8">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.600001;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.600001;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                        </xsl:choose>
                     </xsl:for-each>
                  </g>
               </g>
            </xsl:if>
            <xsl:if test="../../..//HullConfig/SecondaryStructure/SecondaryStructureConfig[Segment = 2][Key = 'c9d04445-3558-46b4-b6fc-7dca8617d438']">
               <g data-hull="c9d04445-3558-46b4-b6fc-7dca8617d438"
                  transform="matrix(1.12417,0,0,1.0308914,-114.00347,-22.292722)"
                  class="super"
                  data-index="2"
                  id="g1284-57"
                  style="display:inline">
                  <g id="g9491-9-4-75"
                     class="frame"
                     style="stroke-width:0.281447;stroke-dasharray:none">
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.281447;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 131.20161,63.449596 h -7.54032 v -1.530241 h 0.66532 v -0.931453 l 1.46371,-2.284275 h 0.75403 v -0.709676 h 4.10283 v 2.594758 h 0.35483 v 0.709676 h -0.59878 v 0.53226 h 0.79838 z"
                           id="path8570-8-6-0"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.281447;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 130.40323,61.298385 h -5.05646 l -0.0222,-0.709676 h 5.32258"
                           id="path8572-8-2-8"/>
                     <rect style="fill:#8c8c8c;fill-opacity:1;stroke:#8c8c8c;stroke-width:0.281447;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                           id="rect8574-5-6-90"
                           width="3.2156999"
                           height="0.72076529"
                           x="127.43145"
                           y="59.867943"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.281447;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 126.54435,58.703627 0.82057,0.465728 v 1.419352"
                           id="path8576-5-9-4"/>
                  </g>
                                   
                                   
                                   
                                   
                  <g id="g9495-3-4-3" class="sockets">
                     <xsl:for-each select="../../..//PartDamage">
                        <xsl:variable name="percent" select="HealthPercent"/>
                        <xsl:choose>
                           <xsl:when test="Key = 'zj9tWS4kP0qww93h23r_mQ'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect9483-3-5-7"
                                    width="1.5123487"
                                    height="1.2545443"
                                    x="125.11822"
                                    y="61.613804"
                                    class="socket-zj9tWS4kP0qww93h23r_mQ">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                           <xsl:when test="Key = '4dpVMvs8nUmd-5az35rT2Q'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect9485-3-6-6"
                                    width="1.5368167"
                                    height="1.2388625"
                                    x="128.37125"
                                    y="57.614944"
                                    class="socket-4dpVMvs8nUmd-5az35rT2Q">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                        </xsl:choose>
                     </xsl:for-each>
                  </g>
               </g>
            </xsl:if>
            <xsl:if test="../../..//HullConfig/SecondaryStructure/SecondaryStructureConfig[Segment = 2][Key = '9ebcea74-e9c9-45b3-b616-e12e3f491024']">
               <g data-hull="9ebcea74-e9c9-45b3-b616-e12e3f491024"
                  transform="matrix(0.89659069,0,0,0.89659069,68.649455,-19.54065)"
                  class="super"
                  data-index="2"
                  id="g1293-2"
                  style="display:inline">
                  <g id="g5905-4-4-0"
                     style="stroke:#8c8c8c;stroke-width:0.337929;stroke-dasharray:none;stroke-opacity:1"
                     transform="translate(-245.38886,-5.3945402)"
                     class="frame">
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.337929;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 199.16223,75.271634 v -2.860887 h 1.86291 v -1.131049 h -0.28831 V 70.48131 h 2.99395 v 0.798388 h -0.42137 v 3.991936 z"
                           id="path4717-1-2-53"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.337929;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="M 199.93844,72.366392 V 66.201069"
                           id="path4719-8-9-9"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.337929;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 199.62796,68.906714 h 0.73186"
                           id="path4721-4-0-5"/>
                  </g>
                                   
                                   
                                   
                  <g id="g5967-3-6-0"
                     transform="translate(-245.38886,-5.3945402)"
                     class="sockets">
                     <xsl:for-each select="../../..//PartDamage">
                        <xsl:variable name="percent" select="HealthPercent"/>
                        <xsl:choose>
                           <xsl:when test="Key = 'zj9tWS4kP0qww93h23r_mQ'">
                              <rect style="fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect5961-4-2-7"
                                    width="1.0423387"
                                    height="1.0423387"
                                    x="199.76102"
                                    y="72.854294"
                                    class="socket-zj9tWS4kP0qww93h23r_mQ">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                           <xsl:when test="Key = '4dpVMvs8nUmd-5az35rT2Q'">
                              <rect style="fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect5963-1-2-50"
                                    width="1.7520161"
                                    height="1.108871"
                                    x="201.31345"
                                    y="70.281715"
                                    class="socket-4dpVMvs8nUmd-5az35rT2Q">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                        </xsl:choose>
                     </xsl:for-each>
                  </g>
               </g>
            </xsl:if>
            <xsl:if test="../../..//HullConfig/SecondaryStructure/SecondaryStructureConfig[Segment = 2][Key = '59344a67-9e7b-43df-9f7c-505ad9a0ab87']">
               <g data-hull="59344a67-9e7b-43df-9f7c-505ad9a0ab87"
                  transform="matrix(0.97969893,0,0,0.97969893,-15.379662,2.1560926)"
                  class="super"
                  data-index="2"
                  id="g1301-0"
                  style="display:inline">
                  <g id="g8273-6-6-2" class="frame">
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.3;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 42.999503,41.807688 v -1.301591 l 0.814425,-3.03947 v -0.583026 h 2.510118 l 0.327834,0.567825 h 1.459892 v 0.718082 H 47.56291 v 0.893863 h 0.36068 v 0.721363 h -0.36068 v 2.022954 z"
                           id="path8267-2-3-20"/>
                     <path style="fill:#8c8c8c;fill-opacity:1;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.3;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 44.567683,36.883601 v -0.893863 l -0.284577,-0.164303 v -0.353198 l 0.22253,-0.128479 v -1.314246 l 0.281932,-0.281932 v -0.408067 h 0.281935 v 3.497043"
                           id="path8269-5-1-0"/>
                  </g>
                                   
                                   
                  <g id="g8281-7-9-8" class="sockets">
                     <xsl:for-each select="../../..//PartDamage">
                        <xsl:variable name="percent" select="HealthPercent"/>
                        <xsl:choose>
                           <xsl:when test="Key = 'zj9tWS4kP0qww93h23r_mQ'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect8275-2-6-3"
                                    width="1.113408"
                                    height="1.2859079"
                                    x="43.940414"
                                    y="39.047688"
                                    class="socket-zj9tWS4kP0qww93h23r_mQ">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                           <xsl:when test="Key = '4dpVMvs8nUmd-5az35rT2Q'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect8277-9-5-1"
                                    width="1.3643168"
                                    height="1.0663626"
                                    x="44.944046"
                                    y="36.914967"
                                    class="socket-4dpVMvs8nUmd-5az35rT2Q">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                        </xsl:choose>
                     </xsl:for-each>
                  </g>
               </g>
            </xsl:if>
         </g>
      </g>
   </xsl:template>
   <xsl:template match="HullConfig/PrimaryStructure/SegmentConfiguration[Key = '38e7a28f-1b06-4b73-98ee-f03d1d8a81fe']">
      <g xmlns="http://www.w3.org/2000/svg"
         xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
         xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
         xmlns:svg="http://www.w3.org/2000/svg"
         id="hull-38e7a28f-1b06-4b73-98ee-f03d1d8a81fe"
         transform="translate(91.591324)"
         class="hull bow"
         data-width="48.092"
         style="display:inline">
         <xsl:attribute name="data-core">
            <xsl:value-of select="./following-sibling::node()/Key/text()"/>
         </xsl:attribute>
         <g id="g3633"
            transform="matrix(1.1994713,0,0,1.1994713,-88.958801,-86.744378)"
            style="display:inline">
            <g id="g5335"
               style="stroke:#8c8c8c;stroke-width:0.33348;stroke-dasharray:none;stroke-opacity:1"
               class="frame"
               transform="translate(0,12.793834)">
               <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.33348;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                     d="m 113.4108,73.318546 v -2.436794 l -2.02295,-1.834771 H 95.972637 l -3.647812,2.840844 H 91.989459 91.221051 V 72.26175 H 83.772194 V 71.887825 H 82.627421 V 72.26175 H 75.11584 v -0.373925 h -0.78409 v 14.430854 h 0.78409 v -0.288306 h 7.558627 v 0.288306 h 1.019318 v -0.288306 h 7.464538 v 0.288306 h 0.925227 v -0.617622 h 16.16443 l 3.1334,-1.809068 2.71095,-2.710949 v -3.804023 h -7.39677 v -4.058471 z"
                     id="path4597"/>
               <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.33348;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                     d="m 74.33175,74.63611 h 0.894056 v 0.338593 h 7.673387 V 74.63611 h 0.643144 v 0.338593 h 7.695565 V 74.63611 h 0.598789 0.484303 l 5.215296,-3.646191 h 15.85685"
                     id="path5325"/>
               <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.33348;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                     d="m 114.125,81.036289 h -2.57258 l -1.61895,1.441532 -1.7742,0.931452 H 92.080645 v 0.317462 H 91.17137 v -0.317462 h -7.606855 v 0.317462 h -0.798386 v -0.317462 h -7.673387 v 0.317462 h -0.665324"
                     id="path5327"/>
               <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.33348;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                     d="m 112.43951,73.340724 v 4.05847"
                     id="path5329"/>
            </g>
            <g id="g6901" class="sockets" transform="translate(0,12.793834)">
               <xsl:for-each select="../../..//PartDamage">
                  <xsl:variable name="percent" select="HealthPercent"/>
                  <xsl:choose>
                     <xsl:when test="Key = 'xvNT1_DYcUuSpU6rrmL_4A'">
                        <rect style="fill:#8c8c8c;stroke-width:0.182628;stroke-dashoffset:9.8"
                              id="rect2998-8-7"
                              width="2.501102"
                              height="5.0022039"
                              x="75.270164"
                              y="76.69735"
                              class="socket-xvNT1_DYcUuSpU6rrmL_4A">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.182628;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.182628;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'auQ7ijGeX0evdikZQeBxTg'">
                        <rect style="fill:#8c8c8c;stroke-width:0.182628;stroke-dashoffset:9.8"
                              id="rect2998-8-1"
                              width="2.501102"
                              height="5.0022039"
                              x="85.031319"
                              y="76.69735"
                              class="socket-auQ7ijGeX0evdikZQeBxTg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.182628;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.182628;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'JHJi2y5Xskytpw5-Qbu95A'">
                        <rect style="fill:#8c8c8c;stroke-width:0.231736;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8"
                              id="rect6100"
                              width="2.501102"
                              height="2.501102"
                              x="81.827652"
                              y="73.177536"
                              class="socket-JHJi2y5Xskytpw5-Qbu95A">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.231736;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.231736;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'yryHYXgMWEy969gRuaDO6w'">
                        <rect style="fill:#8c8c8c;stroke-width:0.231736;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8"
                              id="rect6100-8"
                              width="2.501102"
                              height="2.501102"
                              x="81.827652"
                              y="82.560539"
                              class="socket-yryHYXgMWEy969gRuaDO6w">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.231736;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.231736;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'JVCLf3RKKUOBEXaWWkVLMw'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264487;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8"
                              id="rect6124"
                              width="2.501102"
                              height="2.501102"
                              x="93.118546"
                              y="77.217201"
                              class="socket-JVCLf3RKKUOBEXaWWkVLMw">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264487;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264487;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'y1Cs8LR0KUyCKUAJBIOyOg'">
                        <rect style="fill:#8c8c8c;stroke-width:0.271688;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8"
                              id="rect6126"
                              width="6"
                              height="1.8190893"
                              x="97.666275"
                              y="74.143997"
                              class="socket-y1Cs8LR0KUyCKUAJBIOyOg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.271688;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.271688;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'T9TN0ZYumUaCxcSRjO_qTw'">
                        <rect style="fill:#8c8c8c;stroke-width:0.271688;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8"
                              id="rect6128"
                              width="6"
                              height="1.0036354"
                              x="97.666275"
                              y="77.342651"
                              class="socket-T9TN0ZYumUaCxcSRjO_qTw">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.271688;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.271688;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'T4d-8WnA_UiHSJh6PXiXpA'">
                        <rect style="fill:#8c8c8c;stroke-width:0.271688;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8"
                              id="rect6128-1"
                              width="6"
                              height="1.0036354"
                              x="97.666275"
                              y="79.193108"
                              class="socket-T4d-8WnA_UiHSJh6PXiXpA">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.271688;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.271688;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '9EF9u0V1eUetleBnkQhHkA'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8"
                              id="rect6152"
                              width="2.8854518"
                              height="3.3872697"
                              x="99.548088"
                              y="83.082191"
                              class="socket-9EF9u0V1eUetleBnkQhHkA">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'sTr26YTLmkOZTo_rNevp-g'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.158019;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8"
                              id="rect6152-7"
                              width="1.6674013"
                              height="2.0842516"
                              x="110.3363"
                              y="82.468834"
                              class="socket-sTr26YTLmkOZTo_rNevp-g">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.158019;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.158019;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'PRLtjo7PfECpLy8CGW9T8A'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.158019;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8"
                              id="rect6152-7-6"
                              width="1.6674013"
                              height="2.0842516"
                              x="95.961342"
                              y="68.559113"
                              class="socket-PRLtjo7PfECpLy8CGW9T8A">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.158019;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.158019;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '7wH2IkzqrEqN7Z6m-22t5A'">
                        <rect style="fill:#8c8c8c;stroke-width:0.103691;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8"
                              id="rect6156"
                              width="0.83370066"
                              height="0.83370066"
                              x="105.07372"
                              y="71.920914"
                              class="socket-7wH2IkzqrEqN7Z6m-22t5A">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.103691;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.103691;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 't5fY5HPZuEigjc8Exa3SAg'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.103691;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8"
                              id="rect6156-4"
                              width="0.83370066"
                              height="0.83370066"
                              x="106.06255"
                              y="71.920914"
                              class="socket-t5fY5HPZuEigjc8Exa3SAg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.103691;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.103691;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'X_A64jZIwEiia56tucilbg'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.103691;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8"
                              id="rect6156-1"
                              width="0.83370066"
                              height="0.83370066"
                              x="105.07372"
                              y="81.937263"
                              class="socket-X_A64jZIwEiia56tucilbg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.103691;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.103691;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'WppN26Y5ykmfrm7KKUhLPg'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.103691;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8"
                              id="rect6156-4-9"
                              width="0.83370066"
                              height="0.83370066"
                              x="106.06255"
                              y="81.937263"
                              class="socket-WppN26Y5ykmfrm7KKUhLPg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.103691;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.103691;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '1skVkEkQ-EKICuSgUF3JvQ'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.103691;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8"
                              id="rect6156-9"
                              width="0.83370066"
                              height="0.83370066"
                              x="102.69337"
                              y="83.876457"
                              class="socket-1skVkEkQ-EKICuSgUF3JvQ">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.103691;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.103691;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '5fQq72sMH0G064yX6Jcp1Q'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.103691;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8"
                              id="rect6156-4-6"
                              width="0.83370066"
                              height="0.83370066"
                              x="103.6822"
                              y="83.876457"
                              class="socket-5fQq72sMH0G064yX6Jcp1Q">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.103691;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.103691;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'h0Mbp6I0xky7QvNaxyuZbw'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.103691;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8"
                              id="rect6156-5"
                              width="0.83370066"
                              height="0.83370066"
                              x="107.48444"
                              y="69.655663"
                              class="socket-h0Mbp6I0xky7QvNaxyuZbw">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.103691;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.103691;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'NuBitlMYHEqAVLgi8AF0cQ'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.103691;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8"
                              id="rect6156-0"
                              width="0.83370066"
                              height="0.83370066"
                              x="108.47305"
                              y="69.655663"
                              class="socket-NuBitlMYHEqAVLgi8AF0cQ">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.103691;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.103691;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'YsJMiI2QOkuVJC2Dt2qnbA'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264778;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8"
                              id="rect6158"
                              width="4.5090785"
                              height="1.6674013"
                              x="107.43623"
                              y="73.624565"
                              class="socket-YsJMiI2QOkuVJC2Dt2qnbA">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264778;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264778;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'bxvsvg5znk6TqiIKq8H0kg'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8"
                              id="rect6160"
                              width="2.4149976"
                              height="3.5127239"
                              x="127.83182"
                              y="-30.331972"
                              transform="rotate(45)"
                              class="socket-bxvsvg5znk6TqiIKq8H0kg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'd3N-B_JnDUKAdVRBJ6nvFQ'">
                        <rect style="fill:#8c8c8c;stroke-width:0.182628;stroke-dashoffset:9.8"
                              id="rect506"
                              width="2.501102"
                              height="5.0022039"
                              x="78.212433"
                              y="76.69735"
                              class="socket-d3N-B_JnDUKAdVRBJ6nvFQ">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.182628;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.182628;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'E9IMUD_Uz0661-nYgJh4Mg'">
                        <rect style="fill:#8c8c8c;stroke-width:0.182628;stroke-dashoffset:9.8"
                              id="rect508"
                              width="2.501102"
                              height="5.0022039"
                              x="87.973587"
                              y="76.69735"
                              class="socket-E9IMUD_Uz0661-nYgJh4Mg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.182628;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.182628;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '4c-pqLU2z0yYfuICBQrR8Q'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264778;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8"
                              id="rect510"
                              width="4.5090785"
                              height="1.6674013"
                              x="107.43623"
                              y="75.408249"
                              class="socket-4c-pqLU2z0yYfuICBQrR8Q">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264778;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264778;stroke-linecap:square;stroke-linejoin:miter;stroke-dasharray:none;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                  </xsl:choose>
               </xsl:for-each>
            </g>
            <xsl:if test="../../..//HullConfig/SecondaryStructure/SecondaryStructureConfig[Segment = 0][Key = '42d07c1a-156b-4057-aaca-7a2024751423']">
               <g data-hull="42d07c1a-156b-4057-aaca-7a2024751423"
                  transform="matrix(0.89502425,0,0,0.89502425,63.313051,52.328649)"
                  class="super"
                  data-index="0"
                  style="display:inline"
                  id="g1274-29">
                  <g id="g3338-9-6-7"
                     class="frame"
                     style="stroke-width:0.372594;stroke-dasharray:none">
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.372594;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="M 38.514509,32.712242 V 30.70497 h 6.35113 V 28.948607 H 44.53632 v -0.972269 h 0.329319 V 25.843611 H 44.53632 v -1.254544 h 6.69613 v 1.238863 h -0.517498 v 2.069998 h 0.517498 v 1.082043 h -0.517498 v 3.732271 z"
                           id="path3329-1-0-3"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.372594;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="M 43.501323,30.689288 V 22.628842"
                           id="path3331-3-5-5"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.372594;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 43.501323,25.843611 h 0.565658"
                           id="path3333-0-0-81"/>
                  </g>
                                   
                                   
                                   
                  <g id="g3346-8-8-5" class="sockets">
                     <xsl:for-each select="../../..//PartDamage">
                        <xsl:variable name="percent" select="HealthPercent"/>
                        <xsl:choose>
                           <xsl:when test="Key = '4dpVMvs8nUmd-5az35rT2Q'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.703938;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    class="socket-4dpVMvs8nUmd-5az35rT2Q"
                                    width="3.3044353"
                                    height="1.4570738"
                                    x="46.217739"
                                    y="24.734459"
                                    id="rect284-1-4-69">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.703938;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.703938;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                           <xsl:when test="Key = 'zj9tWS4kP0qww93h23r_mQ'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.600001;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    class="socket-zj9tWS4kP0qww93h23r_mQ"
                                    width="2.7278225"
                                    height="1.5302418"
                                    x="41.516125"
                                    y="31.026209"
                                    id="rect286-9-3-7">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.600001;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.600001;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                        </xsl:choose>
                     </xsl:for-each>
                  </g>
               </g>
            </xsl:if>
            <xsl:if test="../../..//HullConfig/SecondaryStructure/SecondaryStructureConfig[Segment = 0][Key = 'c9d04445-3558-46b4-b6fc-7dca8617d438']">
               <g data-hull="c9d04445-3558-46b4-b6fc-7dca8617d438"
                  transform="matrix(1.2373207,0,0,1.1346534,-54.197676,9.6206649)"
                  class="super"
                  data-index="0"
                  id="g1284-34"
                  style="display:inline">
                  <g id="g9491-9-4-3"
                     class="frame"
                     style="stroke-width:0.281447;stroke-dasharray:none">
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.281447;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 131.20161,63.449596 h -7.54032 v -1.530241 h 0.66532 v -0.931453 l 1.46371,-2.284275 h 0.75403 v -0.709676 h 4.10283 v 2.594758 h 0.35483 v 0.709676 h -0.59878 v 0.53226 h 0.79838 z"
                           id="path8570-8-6-4"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.281447;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 130.40323,61.298385 h -5.05646 l -0.0222,-0.709676 h 5.32258"
                           id="path8572-8-2-0"/>
                     <rect style="fill:#8c8c8c;fill-opacity:1;stroke:#8c8c8c;stroke-width:0.281447;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                           id="rect8574-5-6-5"
                           width="3.2156999"
                           height="0.72076529"
                           x="127.43145"
                           y="59.867943"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.281447;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 126.54435,58.703627 0.82057,0.465728 v 1.419352"
                           id="path8576-5-9-78"/>
                  </g>
                                   
                                   
                                   
                                   
                  <g id="g9495-3-4-81" class="sockets">
                     <xsl:for-each select="../../..//PartDamage">
                        <xsl:variable name="percent" select="HealthPercent"/>
                        <xsl:choose>
                           <xsl:when test="Key = 'zj9tWS4kP0qww93h23r_mQ'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect9483-3-5-4"
                                    width="1.5123487"
                                    height="1.2545443"
                                    x="125.11822"
                                    y="61.613804"
                                    class="socket-zj9tWS4kP0qww93h23r_mQ">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                           <xsl:when test="Key = '4dpVMvs8nUmd-5az35rT2Q'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect9485-3-6-8"
                                    width="1.5368167"
                                    height="1.2388625"
                                    x="128.37125"
                                    y="57.614944"
                                    class="socket-4dpVMvs8nUmd-5az35rT2Q">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                        </xsl:choose>
                     </xsl:for-each>
                  </g>
               </g>
            </xsl:if>
            <xsl:if test="../../..//HullConfig/SecondaryStructure/SecondaryStructureConfig[Segment = 0][Key = '9ebcea74-e9c9-45b3-b616-e12e3f491024']">
               <g data-hull="9ebcea74-e9c9-45b3-b616-e12e3f491024"
                  transform="matrix(0.98683494,0,0,0.98683494,146.83977,12.649739)"
                  class="super"
                  data-index="0"
                  id="g1293-1"
                  style="display:inline">
                  <g id="g5905-4-4-48"
                     style="stroke:#8c8c8c;stroke-width:0.337929;stroke-dasharray:none;stroke-opacity:1"
                     transform="translate(-245.38886,-5.3945402)"
                     class="frame">
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.337929;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 199.16223,75.271634 v -2.860887 h 1.86291 v -1.131049 h -0.28831 V 70.48131 h 2.99395 v 0.798388 h -0.42137 v 3.991936 z"
                           id="path4717-1-2-8"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.337929;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="M 199.93844,72.366392 V 66.201069"
                           id="path4719-8-9-28"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.337929;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 199.62796,68.906714 h 0.73186"
                           id="path4721-4-0-49"/>
                  </g>
                                   
                                   
                                   
                  <g id="g5967-3-6-9"
                     transform="translate(-245.38886,-5.3945402)"
                     class="sockets">
                     <xsl:for-each select="../../..//PartDamage">
                        <xsl:variable name="percent" select="HealthPercent"/>
                        <xsl:choose>
                           <xsl:when test="Key = 'zj9tWS4kP0qww93h23r_mQ'">
                              <rect style="fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect5961-4-2-5"
                                    width="1.0423387"
                                    height="1.0423387"
                                    x="199.76102"
                                    y="72.854294"
                                    class="socket-zj9tWS4kP0qww93h23r_mQ">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                           <xsl:when test="Key = '4dpVMvs8nUmd-5az35rT2Q'">
                              <rect style="fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect5963-1-2-56"
                                    width="1.7520161"
                                    height="1.108871"
                                    x="201.31345"
                                    y="70.281715"
                                    class="socket-4dpVMvs8nUmd-5az35rT2Q">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                        </xsl:choose>
                     </xsl:for-each>
                  </g>
               </g>
            </xsl:if>
            <xsl:if test="../../..//HullConfig/SecondaryStructure/SecondaryStructureConfig[Segment = 0][Key = '59344a67-9e7b-43df-9f7c-505ad9a0ab87']">
               <g data-hull="59344a67-9e7b-43df-9f7c-505ad9a0ab87"
                  transform="matrix(1.0783083,0,0,1.0783083,54.352882,36.530317)"
                  class="super"
                  data-index="0"
                  id="g1301-15"
                  style="display:inline">
                  <g id="g8273-6-6-8" class="frame">
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.3;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 42.999503,41.807688 v -1.301591 l 0.814425,-3.03947 v -0.583026 h 2.510118 l 0.327834,0.567825 h 1.459892 v 0.718082 H 47.56291 v 0.893863 h 0.36068 v 0.721363 h -0.36068 v 2.022954 z"
                           id="path8267-2-3-7"/>
                     <path style="fill:#8c8c8c;fill-opacity:1;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.3;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 44.567683,36.883601 v -0.893863 l -0.284577,-0.164303 v -0.353198 l 0.22253,-0.128479 v -1.314246 l 0.281932,-0.281932 v -0.408067 h 0.281935 v 3.497043"
                           id="path8269-5-1-2"/>
                  </g>
                                   
                                   
                  <g id="g8281-7-9-9" class="sockets">
                     <xsl:for-each select="../../..//PartDamage">
                        <xsl:variable name="percent" select="HealthPercent"/>
                        <xsl:choose>
                           <xsl:when test="Key = 'zj9tWS4kP0qww93h23r_mQ'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect8275-2-6-9"
                                    width="1.113408"
                                    height="1.2859079"
                                    x="43.940414"
                                    y="39.047688"
                                    class="socket-zj9tWS4kP0qww93h23r_mQ">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                           <xsl:when test="Key = '4dpVMvs8nUmd-5az35rT2Q'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect8277-9-5-6"
                                    width="1.3643168"
                                    height="1.0663626"
                                    x="44.944046"
                                    y="36.914967"
                                    class="socket-4dpVMvs8nUmd-5az35rT2Q">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                        </xsl:choose>
                     </xsl:for-each>
                  </g>
               </g>
            </xsl:if>
         </g>
      </g>
   </xsl:template>
   <xsl:template match="HullConfig/PrimaryStructure/SegmentConfiguration[Key = '29eb9c63-6c47-40f2-8f46-4ed4da8d3386']">
      <g xmlns="http://www.w3.org/2000/svg"
         xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
         xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
         xmlns:svg="http://www.w3.org/2000/svg"
         id="hull-29eb9c63-6c47-40f2-8f46-4ed4da8d3386"
         transform="translate(100.23531)"
         class="hull bow"
         data-width="39.448"
         style="display:inline">
         <xsl:attribute name="data-core">
            <xsl:value-of select="./following-sibling::node()/Key/text()"/>
         </xsl:attribute>
         <g id="g3570"
            transform="translate(-132.65624,-31.745062)"
            style="display:inline">
            <g id="g1112"
               style="stroke:#8c8c8c;stroke-width:0.4;stroke-dasharray:none;stroke-opacity:1"
               class="frame">
               <path style="display:inline;fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.4;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                     d="m -97.478094,31.725448 h 1.223182 v 0.579066 h 9.158173 v -0.579066 h 1.348634 v 0.579066 h 9.283629 v -0.579066 h 1.191815 v 0.767248 h 9.409084 l 7.433175,5.14363 v 8.279992 l -4.17136,2.916817 h -12.796353 v 0.654619 h -1.129089 v -0.403712 h -9.377719 v 0.403712 h -1.191816 v -0.403712 h -9.346356 v 0.403712 h -1.034999 z"
                     id="path1104"
                     transform="translate(230.33433,11.03999)"/>
               <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.4;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                     d="m 132.84274,52.279364 h 1.02016 V 51.89516 h 9.49194 v 0.384204 h 1.13104 V 51.89516 h 9.42541 v 0.384204 h 1.15322 v -0.628155 h 16.85484"
                     id="path1108"/>
            </g>
            <g id="g1236" class="sockets">
               <xsl:for-each select="../../..//PartDamage">
                  <xsl:variable name="percent" select="HealthPercent"/>
                  <xsl:choose>
                     <xsl:when test="Key = 'yryHYXgMWEy969gRuaDO6w'">
                        <rect style="fill:#8c8c8c;stroke-width:0.294742;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1114"
                              width="3"
                              height="3"
                              x="135.42805"
                              y="55.199947"
                              class="socket-yryHYXgMWEy969gRuaDO6w">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.294742;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.294742;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'JHJi2y5Xskytpw5-Qbu95A'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.294742;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1114-0"
                              width="3"
                              height="3"
                              x="145.30762"
                              y="55.199947"
                              class="socket-JHJi2y5Xskytpw5-Qbu95A">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.294742;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.294742;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'JVCLf3RKKUOBEXaWWkVLMw'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.294742;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1114-01"
                              width="3"
                              height="3"
                              x="153.86992"
                              y="55.199947"
                              class="socket-JVCLf3RKKUOBEXaWWkVLMw">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.294742;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.294742;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '9EF9u0V1eUetleBnkQhHkA'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1151"
                              width="2.8854518"
                              height="3.5127239"
                              x="157.66484"
                              y="57.301311"
                              class="socket-9EF9u0V1eUetleBnkQhHkA">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'PRLtjo7PfECpLy8CGW9T8A'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.186123;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1151-9"
                              width="2"
                              height="2.5"
                              x="137.8373"
                              y="42.445061"
                              class="socket-PRLtjo7PfECpLy8CGW9T8A">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.186123;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.186123;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'sTr26YTLmkOZTo_rNevp-g'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.186123;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1151-1"
                              width="2"
                              height="2.5"
                              x="135.42093"
                              y="42.445061"
                              class="socket-sTr26YTLmkOZTo_rNevp-g">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.186123;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.186123;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '4c-pqLU2z0yYfuICBQrR8Q'">
                        <rect style="fill:#8c8c8c;stroke-width:0.282555;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1155"
                              width="4.6396947"
                              height="2.2806811"
                              x="166.82513"
                              y="52.853466"
                              class="socket-4c-pqLU2z0yYfuICBQrR8Q">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.282555;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.282555;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'YsJMiI2QOkuVJC2Dt2qnbA'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.282555;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1155-11"
                              width="4.6396947"
                              height="2.2806811"
                              x="166.82513"
                              y="49.867226"
                              class="socket-YsJMiI2QOkuVJC2Dt2qnbA">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.282555;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.282555;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'h0Mbp6I0xky7QvNaxyuZbw'">
                        <rect style="fill:#8c8c8c;stroke-width:0.138587;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1157"
                              width="1"
                              height="1"
                              x="163.30806"
                              y="44.530533"
                              class="socket-h0Mbp6I0xky7QvNaxyuZbw">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.138587;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.138587;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'y1Cs8LR0KUyCKUAJBIOyOg'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1159"
                              width="6.6804481"
                              height="2.1013618"
                              x="155.28294"
                              y="44.25531"
                              class="socket-y1Cs8LR0KUyCKUAJBIOyOg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'T9TN0ZYumUaCxcSRjO_qTw'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1161"
                              width="6.5236301"
                              height="1.191817"
                              x="155.36136"
                              y="48.552597"
                              class="socket-T9TN0ZYumUaCxcSRjO_qTw">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'T4d-8WnA_UiHSJh6PXiXpA'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1161-2"
                              width="6.5236301"
                              height="1.191817"
                              x="155.36136"
                              y="50.183506"
                              class="socket-T4d-8WnA_UiHSJh6PXiXpA">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'bxvsvg5znk6TqiIKq8H0kg'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1185"
                              width="2.3064516"
                              height="3.171371"
                              x="164.18875"
                              y="-55.512642"
                              transform="rotate(33.63851)"
                              class="socket-bxvsvg5znk6TqiIKq8H0kg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'auQ7ijGeX0evdikZQeBxTg'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.219057;stroke-dashoffset:9.8"
                              id="rect2998-8-16-8-9"
                              width="3"
                              height="6"
                              x="145.59497"
                              y="45.131687"
                              class="socket-auQ7ijGeX0evdikZQeBxTg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.219057;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.219057;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'xvNT1_DYcUuSpU6rrmL_4A'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.219057;stroke-dashoffset:9.8"
                              id="rect2998-8-16-8-0"
                              width="3"
                              height="6"
                              x="135.12721"
                              y="45.131687"
                              class="socket-xvNT1_DYcUuSpU6rrmL_4A">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.219057;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.219057;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'd3N-B_JnDUKAdVRBJ6nvFQ'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.219057;stroke-dashoffset:9.8"
                              id="rect1305"
                              width="3"
                              height="6"
                              x="138.38521"
                              y="45.131687"
                              class="socket-d3N-B_JnDUKAdVRBJ6nvFQ">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.219057;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.219057;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'E9IMUD_Uz0661-nYgJh4Mg'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.219057;stroke-dashoffset:9.8"
                              id="rect1307"
                              width="3"
                              height="6"
                              x="148.85297"
                              y="45.131687"
                              class="socket-E9IMUD_Uz0661-nYgJh4Mg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.219057;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.219057;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '1skVkEkQ-EKICuSgUF3JvQ'">
                        <rect style="fill:#8c8c8c;stroke-width:0.138587;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1309"
                              width="1"
                              height="1"
                              x="164.46315"
                              y="44.530533"
                              class="socket-1skVkEkQ-EKICuSgUF3JvQ">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.138587;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.138587;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '7wH2IkzqrEqN7Z6m-22t5A'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.138587;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1157-8"
                              width="1"
                              height="1"
                              x="157.62311"
                              y="46.895588"
                              class="socket-7wH2IkzqrEqN7Z6m-22t5A">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.138587;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.138587;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'NuBitlMYHEqAVLgi8AF0cQ'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.138587;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1309-2"
                              width="1"
                              height="1"
                              x="158.7782"
                              y="46.895588"
                              class="socket-NuBitlMYHEqAVLgi8AF0cQ">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.138587;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.138587;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'X_A64jZIwEiia56tucilbg'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.138587;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1157-8-0"
                              width="1"
                              height="1"
                              x="162.74622"
                              y="57.930927"
                              class="socket-X_A64jZIwEiia56tucilbg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.138587;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.138587;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 't5fY5HPZuEigjc8Exa3SAg'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.138587;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1309-2-7"
                              width="1"
                              height="1"
                              x="163.90131"
                              y="57.930927"
                              class="socket-t5fY5HPZuEigjc8Exa3SAg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.138587;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.138587;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                  </xsl:choose>
               </xsl:for-each>
            </g>
            <xsl:if test="../../..//HullConfig/SecondaryStructure/SecondaryStructureConfig[Segment = 0][Key = '42d07c1a-156b-4057-aaca-7a2024751423']">
               <g data-hull="42d07c1a-156b-4057-aaca-7a2024751423"
                  transform="matrix(1.0735559,0,0,1.0735559,99.088384,7.767399)"
                  class="super"
                  data-index="0"
                  style="display:inline"
                  id="g1274-0">
                  <g id="g3338-9-6-6"
                     class="frame"
                     style="stroke-width:0.372594;stroke-dasharray:none">
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.372594;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="M 38.514509,32.712242 V 30.70497 h 6.35113 V 28.948607 H 44.53632 v -0.972269 h 0.329319 V 25.843611 H 44.53632 v -1.254544 h 6.69613 v 1.238863 h -0.517498 v 2.069998 h 0.517498 v 1.082043 h -0.517498 v 3.732271 z"
                           id="path3329-1-0-14"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.372594;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="M 43.501323,30.689288 V 22.628842"
                           id="path3331-3-5-2"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.372594;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 43.501323,25.843611 h 0.565658"
                           id="path3333-0-0-45"/>
                  </g>
                                   
                                   
                                   
                  <g id="g3346-8-8-2" class="sockets">
                     <xsl:for-each select="../../..//PartDamage">
                        <xsl:variable name="percent" select="HealthPercent"/>
                        <xsl:choose>
                           <xsl:when test="Key = '4dpVMvs8nUmd-5az35rT2Q'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.703938;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    class="socket-4dpVMvs8nUmd-5az35rT2Q"
                                    width="3.3044353"
                                    height="1.4570738"
                                    x="46.217739"
                                    y="24.734459"
                                    id="rect284-1-4-51">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.703938;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.703938;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                           <xsl:when test="Key = 'zj9tWS4kP0qww93h23r_mQ'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.600001;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    class="socket-zj9tWS4kP0qww93h23r_mQ"
                                    width="2.7278225"
                                    height="1.5302418"
                                    x="41.516125"
                                    y="31.026209"
                                    id="rect286-9-3-1">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.600001;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.600001;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                        </xsl:choose>
                     </xsl:for-each>
                  </g>
               </g>
            </xsl:if>
            <xsl:if test="../../..//HullConfig/SecondaryStructure/SecondaryStructureConfig[Segment = 0][Key = 'c9d04445-3558-46b4-b6fc-7dca8617d438']">
               <g data-hull="c9d04445-3558-46b4-b6fc-7dca8617d438"
                  transform="matrix(1.4841307,0,0,1.3609842,-41.86236,-43.4596)"
                  class="super"
                  data-index="0"
                  id="g1284-01"
                  style="display:inline">
                  <g id="g9491-9-4-4"
                     class="frame"
                     style="stroke-width:0.281447;stroke-dasharray:none">
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.281447;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 131.20161,63.449596 h -7.54032 v -1.530241 h 0.66532 v -0.931453 l 1.46371,-2.284275 h 0.75403 v -0.709676 h 4.10283 v 2.594758 h 0.35483 v 0.709676 h -0.59878 v 0.53226 h 0.79838 z"
                           id="path8570-8-6-9"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.281447;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 130.40323,61.298385 h -5.05646 l -0.0222,-0.709676 h 5.32258"
                           id="path8572-8-2-25"/>
                     <rect style="fill:#8c8c8c;fill-opacity:1;stroke:#8c8c8c;stroke-width:0.281447;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                           id="rect8574-5-6-4"
                           width="3.2156999"
                           height="0.72076529"
                           x="127.43145"
                           y="59.867943"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.281447;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 126.54435,58.703627 0.82057,0.465728 v 1.419352"
                           id="path8576-5-9-9"/>
                  </g>
                                   
                                   
                                   
                                   
                  <g id="g9495-3-4-51" class="sockets">
                     <xsl:for-each select="../../..//PartDamage">
                        <xsl:variable name="percent" select="HealthPercent"/>
                        <xsl:choose>
                           <xsl:when test="Key = 'zj9tWS4kP0qww93h23r_mQ'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect9483-3-5-87"
                                    width="1.5123487"
                                    height="1.2545443"
                                    x="125.11822"
                                    y="61.613804"
                                    class="socket-zj9tWS4kP0qww93h23r_mQ">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                           <xsl:when test="Key = '4dpVMvs8nUmd-5az35rT2Q'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect9485-3-6-66"
                                    width="1.5368167"
                                    height="1.2388625"
                                    x="128.37125"
                                    y="57.614944"
                                    class="socket-4dpVMvs8nUmd-5az35rT2Q">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.4;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                        </xsl:choose>
                     </xsl:for-each>
                  </g>
               </g>
            </xsl:if>
            <xsl:if test="../../..//HullConfig/SecondaryStructure/SecondaryStructureConfig[Segment = 0][Key = '9ebcea74-e9c9-45b3-b616-e12e3f491024']">
               <g data-hull="9ebcea74-e9c9-45b3-b616-e12e3f491024"
                  transform="matrix(1.1836802,0,0,1.1836802,199.27625,-39.826312)"
                  class="super"
                  data-index="0"
                  id="g1293-9"
                  style="display:inline">
                  <g id="g5905-4-4-42"
                     style="stroke:#8c8c8c;stroke-width:0.337929;stroke-dasharray:none;stroke-opacity:1"
                     transform="translate(-245.38886,-5.3945402)"
                     class="frame">
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.337929;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 199.16223,75.271634 v -2.860887 h 1.86291 v -1.131049 h -0.28831 V 70.48131 h 2.99395 v 0.798388 h -0.42137 v 3.991936 z"
                           id="path4717-1-2-1"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.337929;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="M 199.93844,72.366392 V 66.201069"
                           id="path4719-8-9-97"/>
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.337929;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 199.62796,68.906714 h 0.73186"
                           id="path4721-4-0-7"/>
                  </g>
                                   
                                   
                                   
                  <g id="g5967-3-6-3"
                     transform="translate(-245.38886,-5.3945402)"
                     class="sockets">
                     <xsl:for-each select="../../..//PartDamage">
                        <xsl:variable name="percent" select="HealthPercent"/>
                        <xsl:choose>
                           <xsl:when test="Key = 'zj9tWS4kP0qww93h23r_mQ'">
                              <rect style="fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect5961-4-2-6"
                                    width="1.0423387"
                                    height="1.0423387"
                                    x="199.76102"
                                    y="72.854294"
                                    class="socket-zj9tWS4kP0qww93h23r_mQ">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                           <xsl:when test="Key = '4dpVMvs8nUmd-5az35rT2Q'">
                              <rect style="fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect5963-1-2-4"
                                    width="1.7520161"
                                    height="1.108871"
                                    x="201.31345"
                                    y="70.281715"
                                    class="socket-4dpVMvs8nUmd-5az35rT2Q">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                        </xsl:choose>
                     </xsl:for-each>
                  </g>
               </g>
            </xsl:if>
            <xsl:if test="../../..//HullConfig/SecondaryStructure/SecondaryStructureConfig[Segment = 0][Key = '59344a67-9e7b-43df-9f7c-505ad9a0ab87']">
               <g data-hull="59344a67-9e7b-43df-9f7c-505ad9a0ab87"
                  transform="matrix(1.2933998,0,0,1.2933998,88.340919,-11.182247)"
                  class="super"
                  data-index="0"
                  id="g1301-5"
                  style="display:inline">
                  <g id="g8273-6-6-4" class="frame">
                     <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.3;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 42.999503,41.807688 v -1.301591 l 0.814425,-3.03947 v -0.583026 h 2.510118 l 0.327834,0.567825 h 1.459892 v 0.718082 H 47.56291 v 0.893863 h 0.36068 v 0.721363 h -0.36068 v 2.022954 z"
                           id="path8267-2-3-8"/>
                     <path style="fill:#8c8c8c;fill-opacity:1;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.3;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                           d="m 44.567683,36.883601 v -0.893863 l -0.284577,-0.164303 v -0.353198 l 0.22253,-0.128479 v -1.314246 l 0.281932,-0.281932 v -0.408067 h 0.281935 v 3.497043"
                           id="path8269-5-1-00"/>
                  </g>
                                   
                                   
                  <g id="g8281-7-9-37" class="sockets">
                     <xsl:for-each select="../../..//PartDamage">
                        <xsl:variable name="percent" select="HealthPercent"/>
                        <xsl:choose>
                           <xsl:when test="Key = 'zj9tWS4kP0qww93h23r_mQ'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect8275-2-6-4"
                                    width="1.113408"
                                    height="1.2859079"
                                    x="43.940414"
                                    y="39.047688"
                                    class="socket-zj9tWS4kP0qww93h23r_mQ">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                           <xsl:when test="Key = '4dpVMvs8nUmd-5az35rT2Q'">
                              <rect style="fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1"
                                    id="rect8277-9-5-2"
                                    width="1.3643168"
                                    height="1.0663626"
                                    x="44.944046"
                                    y="36.914967"
                                    class="socket-4dpVMvs8nUmd-5az35rT2Q">
                                 <xsl:attribute name="style">
                                    <xsl:choose>
                                       <xsl:when test="IsDestroyed = 'false'">
                                          <xsl:value-of select="concat('fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                       </xsl:when>
                                       <xsl:otherwise>
                                          <xsl:text>fill:#8c8c8c;fill-opacity:1;stroke:none;stroke-width:0.3;stroke-dasharray:none;stroke-dashoffset:9.8;stroke-opacity:1</xsl:text>
                                       </xsl:otherwise>
                                    </xsl:choose>
                                 </xsl:attribute>
                              </rect>
                           </xsl:when>
                        </xsl:choose>
                     </xsl:for-each>
                  </g>
               </g>
            </xsl:if>
         </g>
      </g>
   </xsl:template>
   <xsl:template match="HullConfig/PrimaryStructure/SegmentConfiguration[Key = 'c534a876-3f8a-4315-a194-5dda0f84c2b3']">
      <g xmlns="http://www.w3.org/2000/svg"
         xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
         xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
         xmlns:svg="http://www.w3.org/2000/svg"
         id="hull-c534a876-3f8a-4315-a194-5dda0f84c2b3"
         transform="translate(82.757197)"
         class="hull bow"
         data-width="56.926"
         style="display:inline">
         <xsl:attribute name="data-core">
            <xsl:value-of select="./following-sibling::node()/Key/text()"/>
         </xsl:attribute>
         <g id="g3511"
            transform="matrix(1.1827377,0,0,1.1827377,-75.001609,-30.324781)"
            style="display:inline">
            <g id="g1371"
               style="stroke:#8c8c8c;stroke-width:0.338198;stroke-dasharray:none;stroke-opacity:1"
               class="frame"
               transform="translate(0,-7.6059411)">
               <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.338198;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                     d="m 63.58266,33.497719 h 0.909273 v 0.411553 h 3.94758 v 2.106856 h 3.370969 v -0.427235 h 1.219758 v 0.427235 h 7.185483 v -0.427235 h 1.108871 v 0.427235 h 7.008064 v -0.427235 h 1.197581 v 0.427235 h 6.963709 v -0.427235 h 1.153226 v 0.649009 h 8.893146 l 4.83468,2.040323 v 3.903226 l -4.72379,2.328627 h -9.1371 v 0.551116 h -0.84274 v -0.395871 h -7.207663 v 0.395871 h -1.108871 v -0.395871 h -7.118951 v 0.395871 h -1.108871 v -0.395871 h -7.495966 l -4.178903,2.412687 h -4.026744 v 0.36838 H 63.58266 Z"
                     id="path1365"/>
               <path style="fill:none;fill-rule:evenodd;stroke:#8c8c8c;stroke-width:0.338198;stroke-linecap:butt;stroke-linejoin:miter;stroke-dasharray:none;stroke-opacity:1"
                     d="m 63.542666,44.693138 h 0.878181 v -0.313634 h 4.17136 l 3.449997,-2.289543 h 8.185902 v 0.324026 h 1.019317 v -0.324026 h 7.064653 v 0.324026 h 1.211419 v -0.324026 h 7.076413 v 0.324026 h 1.113407 v -0.324026 h 8.985675 l 4.64181,-2.132727"
                     id="path1367"/>
            </g>
            <g id="g1546" class="sockets" transform="translate(0,-7.6059411)">
               <xsl:for-each select="../../..//PartDamage">
                  <xsl:variable name="percent" select="HealthPercent"/>
                  <xsl:choose>
                     <xsl:when test="Key = 'bxvsvg5znk6TqiIKq8H0kg'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1425"
                              width="2.2581797"
                              height="2.6031792"
                              x="65.299026"
                              y="33.245422"
                              class="socket-bxvsvg5znk6TqiIKq8H0kg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'yryHYXgMWEy969gRuaDO6w'">
                        <rect style="fill:#8c8c8c;stroke-width:0.274762;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1427"
                              width="2.5364881"
                              height="2.5364881"
                              x="66.584938"
                              y="37.604973"
                              class="socket-yryHYXgMWEy969gRuaDO6w">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.274762;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.274762;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'JHJi2y5Xskytpw5-Qbu95A'">
                        <rect style="fill:#8c8c8c;stroke-width:0.274762;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1427-8"
                              width="2.5364881"
                              height="2.5364881"
                              x="89.104004"
                              y="37.604973"
                              class="socket-JHJi2y5Xskytpw5-Qbu95A">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.274762;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.274762;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'JVCLf3RKKUOBEXaWWkVLMw'">
                        <rect style="fill:#8c8c8c;stroke-width:0.274761;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1427-2"
                              width="2.5364881"
                              height="2.5364881"
                              x="101.05354"
                              y="37.604973"
                              class="socket-JVCLf3RKKUOBEXaWWkVLMw">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.274761;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.274761;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'y1Cs8LR0KUyCKUAJBIOyOg'">
                        <rect style="fill:#8c8c8c;stroke-width:0.287809;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1464"
                              width="6.0531759"
                              height="1.6647817"
                              x="93.306725"
                              y="37.040421"
                              class="socket-y1Cs8LR0KUyCKUAJBIOyOg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.287809;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.287809;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'T4d-8WnA_UiHSJh6PXiXpA'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1466"
                              width="6.0531759"
                              height="1.034999"
                              x="93.306725"
                              y="40.77269"
                              class="socket-T4d-8WnA_UiHSJh6PXiXpA">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'T9TN0ZYumUaCxcSRjO_qTw'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1466-9"
                              width="6.0531759"
                              height="1.034999"
                              x="93.306725"
                              y="39.345646"
                              class="socket-T9TN0ZYumUaCxcSRjO_qTw">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '9EF9u0V1eUetleBnkQhHkA'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1490"
                              width="1.8818164"
                              height="2.2895432"
                              x="101.74354"
                              y="42.842686"
                              class="socket-9EF9u0V1eUetleBnkQhHkA">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'sTr26YTLmkOZTo_rNevp-g'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1490-7"
                              width="1.8818164"
                              height="2.2895432"
                              x="65.611809"
                              y="45.33989"
                              class="socket-sTr26YTLmkOZTo_rNevp-g">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'h0Mbp6I0xky7QvNaxyuZbw'">
                        <rect style="fill:#8c8c8c;stroke-width:0.150006;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1494"
                              width="0.845496"
                              height="0.845496"
                              x="104.72308"
                              y="36.703735"
                              class="socket-h0Mbp6I0xky7QvNaxyuZbw">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.150006;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.150006;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '1skVkEkQ-EKICuSgUF3JvQ'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.150006;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1494-1"
                              width="0.845496"
                              height="0.845496"
                              x="105.70989"
                              y="36.703735"
                              class="socket-1skVkEkQ-EKICuSgUF3JvQ">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.150006;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.150006;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '7wH2IkzqrEqN7Z6m-22t5A'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.150006;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1494-9"
                              width="0.845496"
                              height="0.845496"
                              x="104.72308"
                              y="38.867531"
                              class="socket-7wH2IkzqrEqN7Z6m-22t5A">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.150006;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.150006;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'NuBitlMYHEqAVLgi8AF0cQ'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.150006;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1494-1-0"
                              width="0.845496"
                              height="0.845496"
                              x="105.70989"
                              y="38.867531"
                              class="socket-NuBitlMYHEqAVLgi8AF0cQ">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.150006;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.150006;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'X_A64jZIwEiia56tucilbg'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.150006;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1494-3"
                              width="0.845496"
                              height="0.845496"
                              x="104.72308"
                              y="42.903061"
                              class="socket-X_A64jZIwEiia56tucilbg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.150006;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.150006;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 't5fY5HPZuEigjc8Exa3SAg'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.150006;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1494-1-9"
                              width="0.845496"
                              height="0.845496"
                              x="105.70989"
                              y="42.903061"
                              class="socket-t5fY5HPZuEigjc8Exa3SAg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.150006;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.150006;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'YsJMiI2QOkuVJC2Dt2qnbA'">
                        <rect style="fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1496"
                              width="2.8540881"
                              height="1.5995439"
                              x="108.25218"
                              y="38.294964"
                              class="socket-YsJMiI2QOkuVJC2Dt2qnbA">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = '4c-pqLU2z0yYfuICBQrR8Q'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1496-2"
                              width="2.8540881"
                              height="1.5995439"
                              x="108.25218"
                              y="40.317402"
                              class="socket-4c-pqLU2z0yYfuICBQrR8Q">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.264999;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'xvNT1_DYcUuSpU6rrmL_4A'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.185212;stroke-dashoffset:9.8"
                              id="rect2998-8-16-8-0-9"
                              width="2.5364881"
                              height="5.0729761"
                              x="73.386894"
                              y="36.637096"
                              class="socket-xvNT1_DYcUuSpU6rrmL_4A">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.185212;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.185212;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'auQ7ijGeX0evdikZQeBxTg'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.185212;stroke-dashoffset:9.8"
                              id="rect2998-8-16-8-0-7"
                              width="2.5364881"
                              height="5.0729761"
                              x="82.080444"
                              y="36.637096"
                              class="socket-auQ7ijGeX0evdikZQeBxTg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.185212;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.185212;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'd3N-B_JnDUKAdVRBJ6nvFQ'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.185212;stroke-dashoffset:9.8"
                              id="rect1447"
                              width="2.5364881"
                              height="5.0729761"
                              x="76.141525"
                              y="36.637096"
                              class="socket-d3N-B_JnDUKAdVRBJ6nvFQ">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.185212;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.185212;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'E9IMUD_Uz0661-nYgJh4Mg'">
                        <rect style="display:inline;fill:#8c8c8c;stroke-width:0.185212;stroke-dashoffset:9.8"
                              id="rect1449"
                              width="2.5364881"
                              height="5.0729761"
                              x="84.835075"
                              y="36.637096"
                              class="socket-E9IMUD_Uz0661-nYgJh4Mg">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('display:inline;fill:#8c8c8c;stroke-width:0.185212;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>display:inline;fill:#8c8c8c;stroke-width:0.185212;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                     <xsl:when test="Key = 'PRLtjo7PfECpLy8CGW9T8A'">
                        <rect style="fill:#8c8c8c;stroke-width:0.254622;stroke-linecap:square;stroke-dashoffset:9.8"
                              id="rect1490-9"
                              width="1.8818164"
                              height="2.11374"
                              x="107.03336"
                              y="35.926334"
                              class="socket-PRLtjo7PfECpLy8CGW9T8A">
                           <xsl:attribute name="style">
                              <xsl:choose>
                                 <xsl:when test="IsDestroyed = 'false'">
                                    <xsl:value-of select="concat('fill:#8c8c8c;stroke-width:0.254622;stroke-linecap:square;stroke-dashoffset:9.8', '; fill: hsl(calc(', $percent, ' * 100 * 1.2), 100%, 50%);')"/>
                                 </xsl:when>
                                 <xsl:otherwise>
                                    <xsl:text>fill:#8c8c8c;stroke-width:0.254622;stroke-linecap:square;stroke-dashoffset:9.8</xsl:text>
                                 </xsl:otherwise>
                              </xsl:choose>
                           </xsl:attribute>
                        </rect>
                     </xsl:when>
                  </xsl:choose>
               </xsl:for-each>
            </g>
         </g>
      </g>
   </xsl:template>
</xsl:stylesheet>
