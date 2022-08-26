<qgis simplifyAlgorithm="0" simplifyDrawingHints="1" styleCategories="AllStyleCategories" labelsEnabled="1" simplifyMaxScale="1" minScale="100000000" simplifyDrawingTol="1" readOnly="0" version="3.22.10-Bia&#322;owie&#380;a" maxScale="0" simplifyLocal="1" hasScaleBasedVisibilityFlag="0" symbologyReferenceScale="-1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal enabled="0" mode="0" durationField="" durationUnit="min" fixedDuration="0" accumulate="0" endExpression="" limitMode="0" startField="" endField="" startExpression="">
    <fixedRange>
      <start />
      <end />
    </fixedRange>
  </temporal>
  <renderer-v2 enableorderby="0" forceraster="0" symbollevels="0" type="RuleRenderer" referencescale="-1">
    <rules key="{2cdbefb9-b625-48d7-bf4b-3e45fd704aeb}">
      <rule filter="qualitaet_txt = 'AV93' and (( round(area(  $geometry )) -0.55&gt;&quot;flaechenmass&quot; ) or ( round(area(  $geometry )) +0.55&lt; &quot;flaechenmass&quot; ) )" label="AV93 / MO93" symbol="0" key="{0029f964-6608-478a-8284-7c0964a0e7c6}" />
      <rule filter="qualitaet_txt &lt;&gt; 'AV93' and (( round(area(  $geometry )) -0.55&gt; &quot;flaechenmass&quot; ) or ( round(area(  $geometry )) +0.55&lt; &quot;flaechenmass&quot; ) )" label="andere Qualit&#228;t / autres de qualit&#233;" symbol="1" key="{12bb080d-e08d-44b2-a172-424a8f28755b}" />
    </rules>
    <symbols>
      <symbol clip_to_extent="1" alpha="1" type="fill" force_rhr="0" name="0">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value="" />
            <Option name="properties" />
            <Option type="QString" name="type" value="collection" />
          </Option>
        </data_defined_properties>
        <layer enabled="1" locked="0" class="LinePatternFill" pass="0">
          <Option type="Map">
            <Option type="QString" name="angle" value="45" />
            <Option type="QString" name="color" value="164,87,208,255" />
            <Option type="QString" name="distance" value="5" />
            <Option type="QString" name="distance_map_unit_scale" value="3x:0,0,0,0,0,0" />
            <Option type="QString" name="distance_unit" value="MM" />
            <Option type="QString" name="line_width" value="2" />
            <Option type="QString" name="line_width_map_unit_scale" value="3x:0,0,0,0,0,0" />
            <Option type="QString" name="line_width_unit" value="MM" />
            <Option type="QString" name="offset" value="0" />
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" />
            <Option type="QString" name="offset_unit" value="MM" />
            <Option type="QString" name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" />
            <Option type="QString" name="outline_width_unit" value="MM" />
          </Option>
          <prop k="angle" v="45" />
          <prop k="color" v="164,87,208,255" />
          <prop k="distance" v="5" />
          <prop k="distance_map_unit_scale" v="3x:0,0,0,0,0,0" />
          <prop k="distance_unit" v="MM" />
          <prop k="line_width" v="2" />
          <prop k="line_width_map_unit_scale" v="3x:0,0,0,0,0,0" />
          <prop k="line_width_unit" v="MM" />
          <prop k="offset" v="0" />
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0" />
          <prop k="offset_unit" v="MM" />
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0" />
          <prop k="outline_width_unit" v="MM" />
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value="" />
              <Option name="properties" />
              <Option type="QString" name="type" value="collection" />
            </Option>
          </data_defined_properties>
          <symbol clip_to_extent="1" alpha="1" type="line" force_rhr="0" name="@0@0">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" name="name" value="" />
                <Option name="properties" />
                <Option type="QString" name="type" value="collection" />
              </Option>
            </data_defined_properties>
            <layer enabled="1" locked="0" class="SimpleLine" pass="0">
              <Option type="Map">
                <Option type="QString" name="align_dash_pattern" value="0" />
                <Option type="QString" name="capstyle" value="square" />
                <Option type="QString" name="customdash" value="5;2" />
                <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" />
                <Option type="QString" name="customdash_unit" value="MM" />
                <Option type="QString" name="dash_pattern_offset" value="0" />
                <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" />
                <Option type="QString" name="dash_pattern_offset_unit" value="MM" />
                <Option type="QString" name="draw_inside_polygon" value="0" />
                <Option type="QString" name="joinstyle" value="bevel" />
                <Option type="QString" name="line_color" value="164,87,208,255" />
                <Option type="QString" name="line_style" value="solid" />
                <Option type="QString" name="line_width" value="2" />
                <Option type="QString" name="line_width_unit" value="MM" />
                <Option type="QString" name="offset" value="0" />
                <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" />
                <Option type="QString" name="offset_unit" value="MM" />
                <Option type="QString" name="ring_filter" value="0" />
                <Option type="QString" name="trim_distance_end" value="0" />
                <Option type="QString" name="trim_distance_end_map_unit_scale" value="3x:0,0,0,0,0,0" />
                <Option type="QString" name="trim_distance_end_unit" value="MM" />
                <Option type="QString" name="trim_distance_start" value="0" />
                <Option type="QString" name="trim_distance_start_map_unit_scale" value="3x:0,0,0,0,0,0" />
                <Option type="QString" name="trim_distance_start_unit" value="MM" />
                <Option type="QString" name="tweak_dash_pattern_on_corners" value="0" />
                <Option type="QString" name="use_custom_dash" value="0" />
                <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0" />
              </Option>
              <prop k="align_dash_pattern" v="0" />
              <prop k="capstyle" v="square" />
              <prop k="customdash" v="5;2" />
              <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0" />
              <prop k="customdash_unit" v="MM" />
              <prop k="dash_pattern_offset" v="0" />
              <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0" />
              <prop k="dash_pattern_offset_unit" v="MM" />
              <prop k="draw_inside_polygon" v="0" />
              <prop k="joinstyle" v="bevel" />
              <prop k="line_color" v="164,87,208,255" />
              <prop k="line_style" v="solid" />
              <prop k="line_width" v="2" />
              <prop k="line_width_unit" v="MM" />
              <prop k="offset" v="0" />
              <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0" />
              <prop k="offset_unit" v="MM" />
              <prop k="ring_filter" v="0" />
              <prop k="trim_distance_end" v="0" />
              <prop k="trim_distance_end_map_unit_scale" v="3x:0,0,0,0,0,0" />
              <prop k="trim_distance_end_unit" v="MM" />
              <prop k="trim_distance_start" v="0" />
              <prop k="trim_distance_start_map_unit_scale" v="3x:0,0,0,0,0,0" />
              <prop k="trim_distance_start_unit" v="MM" />
              <prop k="tweak_dash_pattern_on_corners" v="0" />
              <prop k="use_custom_dash" v="0" />
              <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0" />
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" name="name" value="" />
                  <Option name="properties" />
                  <Option type="QString" name="type" value="collection" />
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
        <layer enabled="1" locked="0" class="SimpleFill" pass="0">
          <Option type="Map">
            <Option type="QString" name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" />
            <Option type="QString" name="color" value="0,0,255,255" />
            <Option type="QString" name="joinstyle" value="bevel" />
            <Option type="QString" name="offset" value="0,0" />
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" />
            <Option type="QString" name="offset_unit" value="MM" />
            <Option type="QString" name="outline_color" value="252,0,0,255" />
            <Option type="QString" name="outline_style" value="solid" />
            <Option type="QString" name="outline_width" value="2.06" />
            <Option type="QString" name="outline_width_unit" value="MM" />
            <Option type="QString" name="style" value="no" />
          </Option>
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0" />
          <prop k="color" v="0,0,255,255" />
          <prop k="joinstyle" v="bevel" />
          <prop k="offset" v="0,0" />
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0" />
          <prop k="offset_unit" v="MM" />
          <prop k="outline_color" v="252,0,0,255" />
          <prop k="outline_style" v="solid" />
          <prop k="outline_width" v="2.06" />
          <prop k="outline_width_unit" v="MM" />
          <prop k="style" v="no" />
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value="" />
              <Option name="properties" />
              <Option type="QString" name="type" value="collection" />
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" alpha="1" type="fill" force_rhr="0" name="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value="" />
            <Option name="properties" />
            <Option type="QString" name="type" value="collection" />
          </Option>
        </data_defined_properties>
        <layer enabled="1" locked="0" class="SimpleFill" pass="0">
          <Option type="Map">
            <Option type="QString" name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" />
            <Option type="QString" name="color" value="211,142,21,255" />
            <Option type="QString" name="joinstyle" value="bevel" />
            <Option type="QString" name="offset" value="0,0" />
            <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" />
            <Option type="QString" name="offset_unit" value="MM" />
            <Option type="QString" name="outline_color" value="255,0,127,255" />
            <Option type="QString" name="outline_style" value="solid" />
            <Option type="QString" name="outline_width" value="2" />
            <Option type="QString" name="outline_width_unit" value="MM" />
            <Option type="QString" name="style" value="no" />
          </Option>
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0" />
          <prop k="color" v="211,142,21,255" />
          <prop k="joinstyle" v="bevel" />
          <prop k="offset" v="0,0" />
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0" />
          <prop k="offset_unit" v="MM" />
          <prop k="outline_color" v="255,0,127,255" />
          <prop k="outline_style" v="solid" />
          <prop k="outline_width" v="2" />
          <prop k="outline_width_unit" v="MM" />
          <prop k="style" v="no" />
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value="" />
              <Option name="properties" />
              <Option type="QString" name="type" value="collection" />
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="simple">
    <settings calloutType="simple">
      <text-style fieldName="'Differenz:  '   ||   tostring(  round((0.01*(toint( (&quot;flaechenmass&quot; - &quot;flaeche&quot;)*100))), 2)) || &#10;'\nFlaechenmass:  '   ||   round(&quot;flaechenmass&quot;, 2)  || '\nberechnete Flaeche: '   ||   tostring(  round((0.01*(toint( (&quot;flaeche&quot;)*100))), 2)) &#10;" fontUnderline="0" allowHtml="0" fontWordSpacing="0" namedStyle="Normal" fontSizeUnit="Point" useSubstitutions="0" fontLetterSpacing="0" multilineHeight="1" blendMode="0" capitalization="0" textOrientation="horizontal" fontWeight="50" fontFamily="Sans Serif" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0" previewBkgrdColor="255,255,255,255" isExpression="1" fontItalic="0" fontKerning="1" legendString="Aa" textOpacity="1" textColor="0,0,0,255" fontSize="11">
        <families />
        <text-buffer bufferSizeUnits="MM" bufferColor="255,255,255,255" bufferSize="3" bufferNoFill="0" bufferBlendMode="0" bufferDraw="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferJoinStyle="64" bufferOpacity="1" />
        <text-mask maskEnabled="0" maskedSymbolLayers="" maskType="0" maskSize="0" maskOpacity="1" maskSizeUnits="MM" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" />
        <background shapeSVGFile="" shapeOpacity="1" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeFillColor="255,255,255,255" shapeRadiiUnit="MM" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeOffsetUnit="MM" shapeBlendMode="0" shapeDraw="0" shapeSizeY="0" shapeBorderWidthUnit="MM" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeOffsetY="0" shapeSizeUnit="MM" shapeType="0" shapeRadiiY="0" shapeOffsetX="0" shapeSizeType="0" shapeRadiiX="0" shapeBorderColor="128,128,128,255" shapeJoinStyle="64" shapeSizeX="0" shapeRotationType="0">
          <symbol clip_to_extent="1" alpha="1" type="fill" force_rhr="0" name="fillSymbol">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" name="name" value="" />
                <Option name="properties" />
                <Option type="QString" name="type" value="collection" />
              </Option>
            </data_defined_properties>
            <layer enabled="1" locked="0" class="SimpleFill" pass="0">
              <Option type="Map">
                <Option type="QString" name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" />
                <Option type="QString" name="color" value="255,255,255,255" />
                <Option type="QString" name="joinstyle" value="bevel" />
                <Option type="QString" name="offset" value="0,0" />
                <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" />
                <Option type="QString" name="offset_unit" value="MM" />
                <Option type="QString" name="outline_color" value="128,128,128,255" />
                <Option type="QString" name="outline_style" value="no" />
                <Option type="QString" name="outline_width" value="0" />
                <Option type="QString" name="outline_width_unit" value="MM" />
                <Option type="QString" name="style" value="solid" />
              </Option>
              <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0" />
              <prop k="color" v="255,255,255,255" />
              <prop k="joinstyle" v="bevel" />
              <prop k="offset" v="0,0" />
              <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0" />
              <prop k="offset_unit" v="MM" />
              <prop k="outline_color" v="128,128,128,255" />
              <prop k="outline_style" v="no" />
              <prop k="outline_width" v="0" />
              <prop k="outline_width_unit" v="MM" />
              <prop k="style" v="solid" />
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" name="name" value="" />
                  <Option name="properties" />
                  <Option type="QString" name="type" value="collection" />
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </background>
        <shadow shadowOffsetGlobal="1" shadowBlendMode="6" shadowDraw="0" shadowColor="0,0,0,255" shadowUnder="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOpacity="0.69999999999999996" shadowRadius="1.5" shadowRadiusUnit="MM" shadowRadiusAlphaOnly="0" shadowScale="100" shadowOffsetAngle="135" shadowOffsetDist="1" shadowOffsetUnit="MM" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" />
        <dd_properties>
          <Option type="Map">
            <Option type="QString" name="name" value="" />
            <Option name="properties" />
            <Option type="QString" name="type" value="collection" />
          </Option>
        </dd_properties>
        <substitutions />
      </text-style>
      <text-format plussign="1" formatNumbers="0" decimals="18" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" wrapChar="" autoWrapLength="0" reverseDirectionSymbol="0" useMaxLineLengthForAutoWrap="1" rightDirectionSymbol="&gt;" multilineAlign="0" addDirectionSymbol="0" />
      <placement offsetType="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorType="0" quadOffset="4" placementFlags="10" fitInPolygonOnly="0" geometryGeneratorEnabled="0" overrunDistance="0" centroidWhole="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" rotationUnit="AngleDegrees" preserveRotation="1" repeatDistanceUnits="MM" polygonPlacementFlags="2" overrunDistanceUnit="MM" yOffset="0" dist="0" priority="5" distUnits="MM" placement="1" maxCurvedCharAngleIn="25" repeatDistance="0" geometryGenerator="" xOffset="0" lineAnchorPercent="0.5" offsetUnits="MapUnit" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" distMapUnitScale="3x:0,0,0,0,0,0" centroidInside="0" rotationAngle="0" layerType="UnknownGeometry" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" maxCurvedCharAngleOut="-25" lineAnchorClipping="0" geometryGeneratorType="PointGeometry" />
      <rendering drawLabels="1" scaleVisibility="0" displayAll="1" obstacle="1" scaleMin="0" upsidedownLabels="0" obstacleType="0" fontLimitPixelSize="0" obstacleFactor="1" maxNumLabels="2000" scaleMax="0" unplacedVisibility="0" fontMinPixelSize="3" labelPerPart="0" mergeLines="0" limitNumLabels="0" zIndex="0" minFeatureSize="0" fontMaxPixelSize="10000" />
      <dd_properties>
        <Option type="Map">
          <Option type="QString" name="name" value="" />
          <Option name="properties" />
          <Option type="QString" name="type" value="collection" />
        </Option>
      </dd_properties>
      <callout type="simple">
        <Option type="Map">
          <Option type="QString" name="anchorPoint" value="pole_of_inaccessibility" />
          <Option type="int" name="blendMode" value="0" />
          <Option type="Map" name="ddProperties">
            <Option type="QString" name="name" value="" />
            <Option name="properties" />
            <Option type="QString" name="type" value="collection" />
          </Option>
          <Option type="bool" name="drawToAllParts" value="false" />
          <Option type="QString" name="enabled" value="0" />
          <Option type="QString" name="labelAnchorPoint" value="point_on_exterior" />
          <Option type="QString" name="lineSymbol" value="&lt;symbol clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; type=&quot;line&quot; force_rhr=&quot;0&quot; name=&quot;symbol&quot;&gt;&lt;data_defined_properties&gt;&lt;Option type=&quot;Map&quot;&gt;&lt;Option type=&quot;QString&quot; name=&quot;name&quot; value=&quot;&quot;/&gt;&lt;Option name=&quot;properties&quot;/&gt;&lt;Option type=&quot;QString&quot; name=&quot;type&quot; value=&quot;collection&quot;/&gt;&lt;/Option&gt;&lt;/data_defined_properties&gt;&lt;layer enabled=&quot;1&quot; locked=&quot;0&quot; class=&quot;SimpleLine&quot; pass=&quot;0&quot;&gt;&lt;Option type=&quot;Map&quot;&gt;&lt;Option type=&quot;QString&quot; name=&quot;align_dash_pattern&quot; value=&quot;0&quot;/&gt;&lt;Option type=&quot;QString&quot; name=&quot;capstyle&quot; value=&quot;square&quot;/&gt;&lt;Option type=&quot;QString&quot; name=&quot;customdash&quot; value=&quot;5;2&quot;/&gt;&lt;Option type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/&gt;&lt;Option type=&quot;QString&quot; name=&quot;customdash_unit&quot; value=&quot;MM&quot;/&gt;&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot; value=&quot;0&quot;/&gt;&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/&gt;&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot;/&gt;&lt;Option type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot; value=&quot;0&quot;/&gt;&lt;Option type=&quot;QString&quot; name=&quot;joinstyle&quot; value=&quot;bevel&quot;/&gt;&lt;Option type=&quot;QString&quot; name=&quot;line_color&quot; value=&quot;60,60,60,255&quot;/&gt;&lt;Option type=&quot;QString&quot; name=&quot;line_style&quot; value=&quot;solid&quot;/&gt;&lt;Option type=&quot;QString&quot; name=&quot;line_width&quot; value=&quot;0.3&quot;/&gt;&lt;Option type=&quot;QString&quot; name=&quot;line_width_unit&quot; value=&quot;MM&quot;/&gt;&lt;Option type=&quot;QString&quot; name=&quot;offset&quot; value=&quot;0&quot;/&gt;&lt;Option type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/&gt;&lt;Option type=&quot;QString&quot; name=&quot;offset_unit&quot; value=&quot;MM&quot;/&gt;&lt;Option type=&quot;QString&quot; name=&quot;ring_filter&quot; value=&quot;0&quot;/&gt;&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end&quot; value=&quot;0&quot;/&gt;&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/&gt;&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot;/&gt;&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start&quot; value=&quot;0&quot;/&gt;&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/&gt;&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot;/&gt;&lt;Option type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot;/&gt;&lt;Option type=&quot;QString&quot; name=&quot;use_custom_dash&quot; value=&quot;0&quot;/&gt;&lt;Option type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/&gt;&lt;/Option&gt;&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/&gt;&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/&gt;&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/&gt;&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/&gt;&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/&gt;&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/&gt;&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/&gt;&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/&gt;&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/&gt;&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/&gt;&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/&gt;&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/&gt;&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/&gt;&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/&gt;&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/&gt;&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/&gt;&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/&gt;&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/&gt;&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/&gt;&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/&gt;&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/&gt;&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/&gt;&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/&gt;&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/&gt;&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/&gt;&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/&gt;&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/&gt;&lt;data_defined_properties&gt;&lt;Option type=&quot;Map&quot;&gt;&lt;Option type=&quot;QString&quot; name=&quot;name&quot; value=&quot;&quot;/&gt;&lt;Option name=&quot;properties&quot;/&gt;&lt;Option type=&quot;QString&quot; name=&quot;type&quot; value=&quot;collection&quot;/&gt;&lt;/Option&gt;&lt;/data_defined_properties&gt;&lt;/layer&gt;&lt;/symbol&gt;" />
          <Option type="double" name="minLength" value="0" />
          <Option type="QString" name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0" />
          <Option type="QString" name="minLengthUnit" value="MM" />
          <Option type="double" name="offsetFromAnchor" value="0" />
          <Option type="QString" name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0" />
          <Option type="QString" name="offsetFromAnchorUnit" value="MM" />
          <Option type="double" name="offsetFromLabel" value="0" />
          <Option type="QString" name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0" />
          <Option type="QString" name="offsetFromLabelUnit" value="MM" />
        </Option>
      </callout>
    </settings>
  </labeling>
  <customproperties>
    <Option type="Map">
      <Option type="StringList" name="dualview/previewExpressions">
        <Option type="QString" value="ogc_fid" />
      </Option>
      <Option type="QString" name="embeddedWidgets/count" value="0" />
      <Option type="QString" name="labeling" value="pal" />
      <Option type="QString" name="labeling/addDirectionSymbol" value="false" />
      <Option type="QString" name="labeling/angleOffset" value="0" />
      <Option type="QString" name="labeling/blendMode" value="0" />
      <Option type="QString" name="labeling/bufferBlendMode" value="0" />
      <Option type="QString" name="labeling/bufferColorA" value="255" />
      <Option type="QString" name="labeling/bufferColorB" value="255" />
      <Option type="QString" name="labeling/bufferColorG" value="255" />
      <Option type="QString" name="labeling/bufferColorR" value="255" />
      <Option type="QString" name="labeling/bufferDraw" value="true" />
      <Option type="QString" name="labeling/bufferJoinStyle" value="64" />
      <Option type="QString" name="labeling/bufferNoFill" value="false" />
      <Option type="QString" name="labeling/bufferSize" value="3" />
      <Option type="QString" name="labeling/bufferSizeInMapUnits" value="false" />
      <Option type="QString" name="labeling/bufferSizeMapUnitMaxScale" value="0" />
      <Option type="QString" name="labeling/bufferSizeMapUnitMinScale" value="0" />
      <Option type="QString" name="labeling/bufferTransp" value="0" />
      <Option type="QString" name="labeling/centroidInside" value="false" />
      <Option type="QString" name="labeling/centroidWhole" value="false" />
      <Option type="QString" name="labeling/decimals" value="2" />
      <Option type="QString" name="labeling/displayAll" value="false" />
      <Option type="QString" name="labeling/dist" value="0" />
      <Option type="QString" name="labeling/distInMapUnits" value="false" />
      <Option type="QString" name="labeling/distMapUnitMaxScale" value="0" />
      <Option type="QString" name="labeling/distMapUnitMinScale" value="0" />
      <Option type="QString" name="labeling/enabled" value="true" />
      <Option type="QString" name="labeling/fieldName" value="'Differenz:  '   ||   tostring(  (0.01*(toint( (&quot;flaechenmass&quot; - &quot;flaeche&quot;)*100)))) || &#10;'\nFlaechenmass:  '   ||   &quot;flaechenmass&quot;  || '\nberechnete Flaeche: '   ||   tostring(  (0.01*(toint( (&quot;flaeche&quot;)*100)))) &#10;" />
      <Option type="QString" name="labeling/fontBold" value="false" />
      <Option type="QString" name="labeling/fontCapitals" value="0" />
      <Option type="QString" name="labeling/fontFamily" value="Cantarell" />
      <Option type="QString" name="labeling/fontItalic" value="false" />
      <Option type="QString" name="labeling/fontLetterSpacing" value="0" />
      <Option type="QString" name="labeling/fontLimitPixelSize" value="false" />
      <Option type="QString" name="labeling/fontMaxPixelSize" value="10000" />
      <Option type="QString" name="labeling/fontMinPixelSize" value="3" />
      <Option type="QString" name="labeling/fontSize" value="11" />
      <Option type="QString" name="labeling/fontSizeInMapUnits" value="false" />
      <Option type="QString" name="labeling/fontSizeMapUnitMaxScale" value="0" />
      <Option type="QString" name="labeling/fontSizeMapUnitMinScale" value="0" />
      <Option type="QString" name="labeling/fontStrikeout" value="false" />
      <Option type="QString" name="labeling/fontUnderline" value="false" />
      <Option type="QString" name="labeling/fontWeight" value="50" />
      <Option type="QString" name="labeling/fontWordSpacing" value="0" />
      <Option type="QString" name="labeling/formatNumbers" value="true" />
      <Option type="QString" name="labeling/isExpression" value="true" />
      <Option type="QString" name="labeling/labelOffsetInMapUnits" value="true" />
      <Option type="QString" name="labeling/labelOffsetMapUnitMaxScale" value="0" />
      <Option type="QString" name="labeling/labelOffsetMapUnitMinScale" value="0" />
      <Option type="QString" name="labeling/labelPerPart" value="false" />
      <Option type="QString" name="labeling/leftDirectionSymbol" value="&lt;" />
      <Option type="QString" name="labeling/limitNumLabels" value="false" />
      <Option type="QString" name="labeling/maxCurvedCharAngleIn" value="20" />
      <Option type="QString" name="labeling/maxCurvedCharAngleOut" value="-20" />
      <Option type="QString" name="labeling/maxNumLabels" value="2000" />
      <Option type="QString" name="labeling/mergeLines" value="false" />
      <Option type="QString" name="labeling/minFeatureSize" value="0" />
      <Option type="QString" name="labeling/multilineAlign" value="0" />
      <Option type="QString" name="labeling/multilineHeight" value="1" />
      <Option type="QString" name="labeling/namedStyle" value="Regular" />
      <Option type="QString" name="labeling/obstacle" value="true" />
      <Option type="QString" name="labeling/placeDirectionSymbol" value="0" />
      <Option type="QString" name="labeling/placement" value="1" />
      <Option type="QString" name="labeling/placementFlags" value="0" />
      <Option type="QString" name="labeling/plussign" value="false" />
      <Option type="QString" name="labeling/preserveRotation" value="true" />
      <Option type="QString" name="labeling/previewBkgrdColor" value="#ffffff" />
      <Option type="QString" name="labeling/priority" value="5" />
      <Option type="QString" name="labeling/quadOffset" value="4" />
      <Option type="QString" name="labeling/repeatDistance" value="0" />
      <Option type="QString" name="labeling/repeatDistanceMapUnitMaxScale" value="0" />
      <Option type="QString" name="labeling/repeatDistanceMapUnitMinScale" value="0" />
      <Option type="QString" name="labeling/repeatDistanceUnit" value="1" />
      <Option type="QString" name="labeling/reverseDirectionSymbol" value="false" />
      <Option type="QString" name="labeling/rightDirectionSymbol" value="&gt;" />
      <Option type="QString" name="labeling/scaleMax" value="10000000" />
      <Option type="QString" name="labeling/scaleMin" value="1" />
      <Option type="QString" name="labeling/scaleVisibility" value="false" />
      <Option type="QString" name="labeling/shadowBlendMode" value="6" />
      <Option type="QString" name="labeling/shadowColorB" value="0" />
      <Option type="QString" name="labeling/shadowColorG" value="0" />
      <Option type="QString" name="labeling/shadowColorR" value="0" />
      <Option type="QString" name="labeling/shadowDraw" value="false" />
      <Option type="QString" name="labeling/shadowOffsetAngle" value="135" />
      <Option type="QString" name="labeling/shadowOffsetDist" value="1" />
      <Option type="QString" name="labeling/shadowOffsetGlobal" value="true" />
      <Option type="QString" name="labeling/shadowOffsetMapUnitMaxScale" value="0" />
      <Option type="QString" name="labeling/shadowOffsetMapUnitMinScale" value="0" />
      <Option type="QString" name="labeling/shadowOffsetUnits" value="1" />
      <Option type="QString" name="labeling/shadowRadius" value="1.5" />
      <Option type="QString" name="labeling/shadowRadiusAlphaOnly" value="false" />
      <Option type="QString" name="labeling/shadowRadiusMapUnitMaxScale" value="0" />
      <Option type="QString" name="labeling/shadowRadiusMapUnitMinScale" value="0" />
      <Option type="QString" name="labeling/shadowRadiusUnits" value="1" />
      <Option type="QString" name="labeling/shadowScale" value="100" />
      <Option type="QString" name="labeling/shadowTransparency" value="30" />
      <Option type="QString" name="labeling/shadowUnder" value="0" />
      <Option type="QString" name="labeling/shapeBlendMode" value="0" />
      <Option type="QString" name="labeling/shapeBorderColorA" value="255" />
      <Option type="QString" name="labeling/shapeBorderColorB" value="128" />
      <Option type="QString" name="labeling/shapeBorderColorG" value="128" />
      <Option type="QString" name="labeling/shapeBorderColorR" value="128" />
      <Option type="QString" name="labeling/shapeBorderWidth" value="0" />
      <Option type="QString" name="labeling/shapeBorderWidthMapUnitMaxScale" value="0" />
      <Option type="QString" name="labeling/shapeBorderWidthMapUnitMinScale" value="0" />
      <Option type="QString" name="labeling/shapeBorderWidthUnits" value="1" />
      <Option type="QString" name="labeling/shapeDraw" value="false" />
      <Option type="QString" name="labeling/shapeFillColorA" value="255" />
      <Option type="QString" name="labeling/shapeFillColorB" value="255" />
      <Option type="QString" name="labeling/shapeFillColorG" value="255" />
      <Option type="QString" name="labeling/shapeFillColorR" value="255" />
      <Option type="QString" name="labeling/shapeJoinStyle" value="64" />
      <Option type="QString" name="labeling/shapeOffsetMapUnitMaxScale" value="0" />
      <Option type="QString" name="labeling/shapeOffsetMapUnitMinScale" value="0" />
      <Option type="QString" name="labeling/shapeOffsetUnits" value="1" />
      <Option type="QString" name="labeling/shapeOffsetX" value="0" />
      <Option type="QString" name="labeling/shapeOffsetY" value="0" />
      <Option type="QString" name="labeling/shapeRadiiMapUnitMaxScale" value="0" />
      <Option type="QString" name="labeling/shapeRadiiMapUnitMinScale" value="0" />
      <Option type="QString" name="labeling/shapeRadiiUnits" value="1" />
      <Option type="QString" name="labeling/shapeRadiiX" value="0" />
      <Option type="QString" name="labeling/shapeRadiiY" value="0" />
      <Option type="QString" name="labeling/shapeRotation" value="0" />
      <Option type="QString" name="labeling/shapeRotationType" value="0" />
      <Option type="QString" name="labeling/shapeSVGFile" value="" />
      <Option type="QString" name="labeling/shapeSizeMapUnitMaxScale" value="0" />
      <Option type="QString" name="labeling/shapeSizeMapUnitMinScale" value="0" />
      <Option type="QString" name="labeling/shapeSizeType" value="0" />
      <Option type="QString" name="labeling/shapeSizeUnits" value="1" />
      <Option type="QString" name="labeling/shapeSizeX" value="0" />
      <Option type="QString" name="labeling/shapeSizeY" value="0" />
      <Option type="QString" name="labeling/shapeTransparency" value="0" />
      <Option type="QString" name="labeling/shapeType" value="0" />
      <Option type="QString" name="labeling/textColorA" value="255" />
      <Option type="QString" name="labeling/textColorB" value="0" />
      <Option type="QString" name="labeling/textColorG" value="0" />
      <Option type="QString" name="labeling/textColorR" value="0" />
      <Option type="QString" name="labeling/textTransp" value="0" />
      <Option type="QString" name="labeling/upsidedownLabels" value="0" />
      <Option type="QString" name="labeling/wrapChar" value="" />
      <Option type="QString" name="labeling/xOffset" value="0" />
      <Option type="QString" name="labeling/yOffset" value="0" />
      <Option type="invalid" name="variableNames" />
      <Option type="invalid" name="variableValues" />
    </Option>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Histogram">
    <DiagramCategory minScaleDenominator="0" opacity="1" barWidth="5" showAxis="0" backgroundColor="#ffffff" penWidth="0" lineSizeScale="3x:0,0,0,0,0,0" diagramOrientation="Up" minimumSize="0" sizeScale="3x:0,0,0,0,0,0" enabled="0" height="15" spacingUnitScale="3x:0,0,0,0,0,0" spacing="0" direction="1" backgroundAlpha="255" labelPlacementMethod="XHeight" penAlpha="255" sizeType="MM" rotationOffset="270" width="15" maxScaleDenominator="1e+08" lineSizeType="MM" spacingUnit="MM" scaleBasedVisibility="0" scaleDependency="Area" penColor="#000000">
      <fontProperties description="Sans Serif,9,-1,5,50,0,0,0,0,0" style="" />
      <attribute color="#000000" colorOpacity="1" label="" field="" />
      <axisSymbol>
        <symbol clip_to_extent="1" alpha="1" type="line" force_rhr="0" name="">
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value="" />
              <Option name="properties" />
              <Option type="QString" name="type" value="collection" />
            </Option>
          </data_defined_properties>
          <layer enabled="1" locked="0" class="SimpleLine" pass="0">
            <Option type="Map">
              <Option type="QString" name="align_dash_pattern" value="0" />
              <Option type="QString" name="capstyle" value="square" />
              <Option type="QString" name="customdash" value="5;2" />
              <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" />
              <Option type="QString" name="customdash_unit" value="MM" />
              <Option type="QString" name="dash_pattern_offset" value="0" />
              <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" />
              <Option type="QString" name="dash_pattern_offset_unit" value="MM" />
              <Option type="QString" name="draw_inside_polygon" value="0" />
              <Option type="QString" name="joinstyle" value="bevel" />
              <Option type="QString" name="line_color" value="35,35,35,255" />
              <Option type="QString" name="line_style" value="solid" />
              <Option type="QString" name="line_width" value="0.26" />
              <Option type="QString" name="line_width_unit" value="MM" />
              <Option type="QString" name="offset" value="0" />
              <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" />
              <Option type="QString" name="offset_unit" value="MM" />
              <Option type="QString" name="ring_filter" value="0" />
              <Option type="QString" name="trim_distance_end" value="0" />
              <Option type="QString" name="trim_distance_end_map_unit_scale" value="3x:0,0,0,0,0,0" />
              <Option type="QString" name="trim_distance_end_unit" value="MM" />
              <Option type="QString" name="trim_distance_start" value="0" />
              <Option type="QString" name="trim_distance_start_map_unit_scale" value="3x:0,0,0,0,0,0" />
              <Option type="QString" name="trim_distance_start_unit" value="MM" />
              <Option type="QString" name="tweak_dash_pattern_on_corners" value="0" />
              <Option type="QString" name="use_custom_dash" value="0" />
              <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0" />
            </Option>
            <prop k="align_dash_pattern" v="0" />
            <prop k="capstyle" v="square" />
            <prop k="customdash" v="5;2" />
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0" />
            <prop k="customdash_unit" v="MM" />
            <prop k="dash_pattern_offset" v="0" />
            <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0" />
            <prop k="dash_pattern_offset_unit" v="MM" />
            <prop k="draw_inside_polygon" v="0" />
            <prop k="joinstyle" v="bevel" />
            <prop k="line_color" v="35,35,35,255" />
            <prop k="line_style" v="solid" />
            <prop k="line_width" v="0.26" />
            <prop k="line_width_unit" v="MM" />
            <prop k="offset" v="0" />
            <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0" />
            <prop k="offset_unit" v="MM" />
            <prop k="ring_filter" v="0" />
            <prop k="trim_distance_end" v="0" />
            <prop k="trim_distance_end_map_unit_scale" v="3x:0,0,0,0,0,0" />
            <prop k="trim_distance_end_unit" v="MM" />
            <prop k="trim_distance_start" v="0" />
            <prop k="trim_distance_start_map_unit_scale" v="3x:0,0,0,0,0,0" />
            <prop k="trim_distance_start_unit" v="MM" />
            <prop k="tweak_dash_pattern_on_corners" v="0" />
            <prop k="use_custom_dash" v="0" />
            <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0" />
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" name="name" value="" />
                <Option name="properties" />
                <Option type="QString" name="type" value="collection" />
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </axisSymbol>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings obstacle="0" zIndex="0" priority="0" linePlacementFlags="18" dist="0" placement="1" showAll="1">
    <properties>
      <Option type="Map">
        <Option type="QString" name="name" value="" />
        <Option name="properties" />
        <Option type="QString" name="type" value="collection" />
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
    <activeChecks />
    <checkConfiguration />
  </geometryOptions>
  <legend type="default-vector" showLabelLegend="0" />
  <referencedLayers />
  <fieldConfiguration>
    <field configurationFlags="None" name="ogc_fid">
      <editWidget type="TextEdit">
        <config>
          <Option />
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="tid">
      <editWidget type="TextEdit">
        <config>
          <Option />
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="selbstrecht_von">
      <editWidget type="">
        <config>
          <Option />
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="nummerteilgrundstueck">
      <editWidget type="TextEdit">
        <config>
          <Option />
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="flaechenmass">
      <editWidget type="TextEdit">
        <config>
          <Option />
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="flaeche">
      <editWidget type="TextEdit">
        <config>
          <Option />
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="qualitaet">
      <editWidget type="Range">
        <config>
          <Option />
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="qualitaet_txt">
      <editWidget type="TextEdit">
        <config>
          <Option />
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="gem_bfs">
      <editWidget type="Range">
        <config>
          <Option />
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="los">
      <editWidget type="Range">
        <config>
          <Option />
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="lieferdatum">
      <editWidget type="DateTime">
        <config>
          <Option />
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="ogc_fid" name="" index="0" />
    <alias field="tid" name="" index="1" />
    <alias field="selbstrecht_von" name="SelbstRecht_von" index="2" />
    <alias field="nummerteilgrundstueck" name="NummerTeilGrundstueck" index="3" />
    <alias field="flaechenmass" name="Flaechenmass" index="4" />
    <alias field="flaeche" name="Flaeche" index="5" />
    <alias field="qualitaet" name="Qualitaet" index="6" />
    <alias field="qualitaet_txt" name="Qualitaet_txt" index="7" />
    <alias field="gem_bfs" name="" index="8" />
    <alias field="los" name="" index="9" />
    <alias field="lieferdatum" name="" index="10" />
  </aliases>
  <defaults>
    <default applyOnUpdate="0" field="ogc_fid" expression="" />
    <default applyOnUpdate="0" field="tid" expression="" />
    <default applyOnUpdate="0" field="selbstrecht_von" expression="" />
    <default applyOnUpdate="0" field="nummerteilgrundstueck" expression="" />
    <default applyOnUpdate="0" field="flaechenmass" expression="" />
    <default applyOnUpdate="0" field="flaeche" expression="" />
    <default applyOnUpdate="0" field="qualitaet" expression="" />
    <default applyOnUpdate="0" field="qualitaet_txt" expression="" />
    <default applyOnUpdate="0" field="gem_bfs" expression="" />
    <default applyOnUpdate="0" field="los" expression="" />
    <default applyOnUpdate="0" field="lieferdatum" expression="" />
  </defaults>
  <constraints>
    <constraint unique_strength="1" notnull_strength="1" field="ogc_fid" constraints="3" exp_strength="0" />
    <constraint unique_strength="0" notnull_strength="0" field="tid" constraints="0" exp_strength="0" />
    <constraint unique_strength="0" notnull_strength="0" field="selbstrecht_von" constraints="0" exp_strength="0" />
    <constraint unique_strength="0" notnull_strength="0" field="nummerteilgrundstueck" constraints="0" exp_strength="0" />
    <constraint unique_strength="0" notnull_strength="0" field="flaechenmass" constraints="0" exp_strength="0" />
    <constraint unique_strength="0" notnull_strength="0" field="flaeche" constraints="0" exp_strength="0" />
    <constraint unique_strength="0" notnull_strength="0" field="qualitaet" constraints="0" exp_strength="0" />
    <constraint unique_strength="0" notnull_strength="0" field="qualitaet_txt" constraints="0" exp_strength="0" />
    <constraint unique_strength="0" notnull_strength="0" field="gem_bfs" constraints="0" exp_strength="0" />
    <constraint unique_strength="0" notnull_strength="0" field="los" constraints="0" exp_strength="0" />
    <constraint unique_strength="0" notnull_strength="0" field="lieferdatum" constraints="0" exp_strength="0" />
  </constraints>
  <constraintExpressions>
    <constraint exp="" desc="" field="ogc_fid" />
    <constraint exp="" desc="" field="tid" />
    <constraint exp="" desc="" field="selbstrecht_von" />
    <constraint exp="" desc="" field="nummerteilgrundstueck" />
    <constraint exp="" desc="" field="flaechenmass" />
    <constraint exp="" desc="" field="flaeche" />
    <constraint exp="" desc="" field="qualitaet" />
    <constraint exp="" desc="" field="qualitaet_txt" />
    <constraint exp="" desc="" field="gem_bfs" />
    <constraint exp="" desc="" field="los" />
    <constraint exp="" desc="" field="lieferdatum" />
  </constraintExpressions>
  <expressionfields />
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas" />
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="" sortOrder="0">
    <columns>
      <column width="-1" hidden="0" type="field" name="ogc_fid" />
      <column width="39" hidden="0" type="field" name="tid" />
      <column width="23" hidden="0" type="field" name="nummerteilgrundstueck" />
      <column width="-1" hidden="0" type="field" name="flaechenmass" />
      <column width="23" hidden="0" type="field" name="flaeche" />
      <column width="23" hidden="0" type="field" name="qualitaet" />
      <column width="23" hidden="0" type="field" name="qualitaet_txt" />
      <column width="23" hidden="0" type="field" name="gem_bfs" />
      <column width="23" hidden="0" type="field" name="los" />
      <column width="23" hidden="0" type="field" name="lieferdatum" />
      <column width="-1" hidden="1" type="actions" />
      <column width="23" hidden="0" type="field" name="liegenschaft_von" />
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles />
    <fieldstyles />
  </conditionalstyles>
  <storedexpressions />
  <editform tolerant="1" />
  <editforminit />
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath />
  <editforminitcode># -*- coding: utf-8 -*-
"""
QGIS forms can have a Python function that is called when the form is
opened.

Use this function to add extra logic to your forms.

Enter the name of the function in the "Python Init function"
field.
An example follows:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
	geom = feature.geometry()
	control = dialog.findChild(QWidget, "MyLineEdit")
</editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field editable="1" name="flaeche" />
    <field editable="1" name="flaechenmass" />
    <field editable="1" name="gem_bfs" />
    <field editable="1" name="lieferdatum" />
    <field editable="1" name="liegenschaft_von" />
    <field editable="1" name="los" />
    <field editable="1" name="nummerteilgrundstueck" />
    <field editable="1" name="ogc_fid" />
    <field editable="1" name="qualitaet" />
    <field editable="1" name="qualitaet_txt" />
    <field editable="1" name="selbstrecht_von" />
    <field editable="1" name="tid" />
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="flaeche" />
    <field labelOnTop="0" name="flaechenmass" />
    <field labelOnTop="0" name="gem_bfs" />
    <field labelOnTop="0" name="lieferdatum" />
    <field labelOnTop="0" name="liegenschaft_von" />
    <field labelOnTop="0" name="los" />
    <field labelOnTop="0" name="nummerteilgrundstueck" />
    <field labelOnTop="0" name="ogc_fid" />
    <field labelOnTop="0" name="qualitaet" />
    <field labelOnTop="0" name="qualitaet_txt" />
    <field labelOnTop="0" name="selbstrecht_von" />
    <field labelOnTop="0" name="tid" />
  </labelOnTop>
  <reuseLastValue />
  <dataDefinedFieldProperties />
  <widgets />
  <previewExpression>ogc_fid</previewExpression>
  <mapTip />
  <layerGeometryType>2</layerGeometryType>
</qgis>