<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="AllStyleCategories" simplifyAlgorithm="0" simplifyLocal="1" maxScale="0" simplifyDrawingHints="1" simplifyMaxScale="1" version="3.4.4-Madeira" labelsEnabled="1" simplifyDrawingTol="1" readOnly="0" hasScaleBasedVisibilityFlag="0" minScale="1e+8">
 <flags>
  <Identifiable>1</Identifiable>
  <Removable>1</Removable>
  <Searchable>1</Searchable>
 </flags>
 <renderer-v2 enableorderby="0" symbollevels="0" type="RuleRenderer" forceraster="0">
  <rules key="{2cdbefb9-b625-48d7-bf4b-3e45fd704aeb}">
   <rule filter="qualitaet_txt = 'AV93' and (( $area -0.55>&quot;flaechenmass&quot; ) or ( $area +0.55&lt; &quot;flaechenmass&quot; ) )" label="AV93 / MO93" key="{0029f964-6608-478a-8284-7c0964a0e7c6}" symbol="0"/>
   <rule filter="qualitaet_txt &lt;> 'AV93' and (( $area -0.55> &quot;flaechenmass&quot; ) or ( $area +0.55&lt; &quot;flaechenmass&quot; ) )" label="andere Qualität / autres de qualité" key="{12bb080d-e08d-44b2-a172-424a8f28755b}" symbol="1"/>
  </rules>
  <symbols>
   <symbol name="0" type="fill" clip_to_extent="1" force_rhr="0" alpha="1">
    <layer class="LinePatternFill" enabled="1" pass="0" locked="0">
     <prop v="45" k="angle"/>
     <prop v="164,87,208,255" k="color"/>
     <prop v="5" k="distance"/>
     <prop v="3x:0,0,0,0,0,0" k="distance_map_unit_scale"/>
     <prop v="MM" k="distance_unit"/>
     <prop v="2" k="line_width"/>
     <prop v="3x:0,0,0,0,0,0" k="line_width_map_unit_scale"/>
     <prop v="MM" k="line_width_unit"/>
     <prop v="0" k="offset"/>
     <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
     <prop v="MM" k="offset_unit"/>
     <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
     <prop v="MM" k="outline_width_unit"/>
     <data_defined_properties>
      <Option type="Map">
       <Option name="name" type="QString" value=""/>
       <Option name="properties"/>
       <Option name="type" type="QString" value="collection"/>
      </Option>
     </data_defined_properties>
     <symbol name="@0@0" type="line" clip_to_extent="1" force_rhr="0" alpha="1">
      <layer class="SimpleLine" enabled="1" pass="0" locked="0">
       <prop v="square" k="capstyle"/>
       <prop v="5;2" k="customdash"/>
       <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
       <prop v="MM" k="customdash_unit"/>
       <prop v="0" k="draw_inside_polygon"/>
       <prop v="bevel" k="joinstyle"/>
       <prop v="164,87,208,255" k="line_color"/>
       <prop v="solid" k="line_style"/>
       <prop v="2" k="line_width"/>
       <prop v="MM" k="line_width_unit"/>
       <prop v="0" k="offset"/>
       <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
       <prop v="MM" k="offset_unit"/>
       <prop v="0" k="ring_filter"/>
       <prop v="0" k="use_custom_dash"/>
       <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
       <data_defined_properties>
        <Option type="Map">
         <Option name="name" type="QString" value=""/>
         <Option name="properties"/>
         <Option name="type" type="QString" value="collection"/>
        </Option>
       </data_defined_properties>
      </layer>
     </symbol>
    </layer>
    <layer class="SimpleFill" enabled="1" pass="0" locked="0">
     <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
     <prop v="0,0,255,255" k="color"/>
     <prop v="bevel" k="joinstyle"/>
     <prop v="0,0" k="offset"/>
     <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
     <prop v="MM" k="offset_unit"/>
     <prop v="252,0,0,255" k="outline_color"/>
     <prop v="solid" k="outline_style"/>
     <prop v="2.06" k="outline_width"/>
     <prop v="MM" k="outline_width_unit"/>
     <prop v="no" k="style"/>
     <data_defined_properties>
      <Option type="Map">
       <Option name="name" type="QString" value=""/>
       <Option name="properties"/>
       <Option name="type" type="QString" value="collection"/>
      </Option>
     </data_defined_properties>
    </layer>
   </symbol>
   <symbol name="1" type="fill" clip_to_extent="1" force_rhr="0" alpha="1">
    <layer class="SimpleFill" enabled="1" pass="0" locked="0">
     <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
     <prop v="211,142,21,255" k="color"/>
     <prop v="bevel" k="joinstyle"/>
     <prop v="0,0" k="offset"/>
     <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
     <prop v="MM" k="offset_unit"/>
     <prop v="255,0,127,255" k="outline_color"/>
     <prop v="solid" k="outline_style"/>
     <prop v="2" k="outline_width"/>
     <prop v="MM" k="outline_width_unit"/>
     <prop v="no" k="style"/>
     <data_defined_properties>
      <Option type="Map">
       <Option name="name" type="QString" value=""/>
       <Option name="properties"/>
       <Option name="type" type="QString" value="collection"/>
      </Option>
     </data_defined_properties>
    </layer>
   </symbol>
  </symbols>
 </renderer-v2>
 <labeling type="simple">
  <settings>
   <text-style blendMode="0" fontWeight="50" fontUnderline="0" fontFamily="Sans Serif" fontCapitals="0" fontItalic="0" fontSizeUnit="Point" isExpression="1" fontLetterSpacing="0" fieldName="'Differenz:  '   ||   tostring(  round((0.01*(toint( (&quot;flaechenmass&quot; - &quot;flaeche&quot;)*100))), 2)) || &#xa;'\nFlaechenmass:  '   ||   round(&quot;flaechenmass&quot;, 2)  || '\nberechnete Flaeche: '   ||   tostring(  round((0.01*(toint( (&quot;flaeche&quot;)*100))), 2)) &#xa;" namedStyle="Normal" fontSize="11" fontWordSpacing="0" previewBkgrdColor="#ffffff" fontSizeMapUnitScale="3x:0,0,0,0,0,0" multilineHeight="1" textColor="0,0,0,255" fontStrikeout="0" useSubstitutions="0" textOpacity="1">
    <text-buffer bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSizeUnits="MM" bufferSize="3" bufferOpacity="1" bufferJoinStyle="64" bufferColor="255,255,255,255" bufferDraw="1" bufferBlendMode="0" bufferNoFill="0"/>
    <background shapeRadiiX="0" shapeBlendMode="0" shapeRotation="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeOffsetUnit="MM" shapeBorderWidthUnit="MM" shapeSizeX="0" shapeBorderColor="128,128,128,255" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeType="0" shapeSizeType="0" shapeDraw="0" shapeOffsetX="0" shapeSizeUnit="MM" shapeRadiiY="0" shapeBorderWidth="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeSVGFile="" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetY="0" shapeSizeY="0" shapeFillColor="255,255,255,255" shapeOpacity="1"/>
    <shadow shadowOffsetAngle="135" shadowBlendMode="6" shadowUnder="0" shadowOffsetGlobal="1" shadowRadius="1.5" shadowRadiusUnit="MM" shadowDraw="0" shadowOpacity="0.7" shadowScale="100" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowColor="0,0,0,255" shadowOffsetUnit="MM" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetDist="1"/>
    <substitutions/>
   </text-style>
   <text-format wrapChar="" multilineAlign="0" formatNumbers="0" autoWrapLength="0" leftDirectionSymbol="&lt;" useMaxLineLengthForAutoWrap="1" plussign="1" placeDirectionSymbol="0" decimals="18" rightDirectionSymbol=">" addDirectionSymbol="0" reverseDirectionSymbol="0"/>
   <placement maxCurvedCharAngleOut="-25" preserveRotation="1" maxCurvedCharAngleIn="25" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" centroidInside="0" yOffset="0" centroidWhole="0" distUnits="MM" offsetType="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" dist="0" priority="5" repeatDistanceUnits="MM" distMapUnitScale="3x:0,0,0,0,0,0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" placementFlags="10" xOffset="0" placement="1" rotationAngle="0" fitInPolygonOnly="0" quadOffset="4" offsetUnits="MapUnit" repeatDistance="0"/>
   <rendering minFeatureSize="0" obstacleType="0" scaleVisibility="0" drawLabels="1" zIndex="0" obstacle="1" scaleMin="0" fontLimitPixelSize="0" maxNumLabels="2000" fontMaxPixelSize="10000" displayAll="0" fontMinPixelSize="3" labelPerPart="0" limitNumLabels="0" upsidedownLabels="0" obstacleFactor="1" scaleMax="0" mergeLines="0"/>
   <dd_properties>
    <Option type="Map">
     <Option name="name" type="QString" value=""/>
     <Option name="properties"/>
     <Option name="type" type="QString" value="collection"/>
    </Option>
   </dd_properties>
  </settings>
 </labeling>
 <customproperties>
  <property key="dualview/previewExpressions" value="ogc_fid"/>
  <property key="embeddedWidgets/count" value="0"/>
  <property key="labeling" value="pal"/>
  <property key="labeling/addDirectionSymbol" value="false"/>
  <property key="labeling/angleOffset" value="0"/>
  <property key="labeling/blendMode" value="0"/>
  <property key="labeling/bufferBlendMode" value="0"/>
  <property key="labeling/bufferColorA" value="255"/>
  <property key="labeling/bufferColorB" value="255"/>
  <property key="labeling/bufferColorG" value="255"/>
  <property key="labeling/bufferColorR" value="255"/>
  <property key="labeling/bufferDraw" value="true"/>
  <property key="labeling/bufferJoinStyle" value="64"/>
  <property key="labeling/bufferNoFill" value="false"/>
  <property key="labeling/bufferSize" value="3"/>
  <property key="labeling/bufferSizeInMapUnits" value="false"/>
  <property key="labeling/bufferSizeMapUnitMaxScale" value="0"/>
  <property key="labeling/bufferSizeMapUnitMinScale" value="0"/>
  <property key="labeling/bufferTransp" value="0"/>
  <property key="labeling/centroidInside" value="false"/>
  <property key="labeling/centroidWhole" value="false"/>
  <property key="labeling/decimals" value="2"/>
  <property key="labeling/displayAll" value="false"/>
  <property key="labeling/dist" value="0"/>
  <property key="labeling/distInMapUnits" value="false"/>
  <property key="labeling/distMapUnitMaxScale" value="0"/>
  <property key="labeling/distMapUnitMinScale" value="0"/>
  <property key="labeling/enabled" value="true"/>
  <property key="labeling/fieldName" value="'Differenz:  '   ||   tostring(  (0.01*(toint( (&quot;flaechenmass&quot; - &quot;flaeche&quot;)*100)))) || &#xa;'\nFlaechenmass:  '   ||   &quot;flaechenmass&quot;  || '\nberechnete Flaeche: '   ||   tostring(  (0.01*(toint( (&quot;flaeche&quot;)*100)))) &#xa;"/>
  <property key="labeling/fontBold" value="false"/>
  <property key="labeling/fontCapitals" value="0"/>
  <property key="labeling/fontFamily" value="Cantarell"/>
  <property key="labeling/fontItalic" value="false"/>
  <property key="labeling/fontLetterSpacing" value="0"/>
  <property key="labeling/fontLimitPixelSize" value="false"/>
  <property key="labeling/fontMaxPixelSize" value="10000"/>
  <property key="labeling/fontMinPixelSize" value="3"/>
  <property key="labeling/fontSize" value="11"/>
  <property key="labeling/fontSizeInMapUnits" value="false"/>
  <property key="labeling/fontSizeMapUnitMaxScale" value="0"/>
  <property key="labeling/fontSizeMapUnitMinScale" value="0"/>
  <property key="labeling/fontStrikeout" value="false"/>
  <property key="labeling/fontUnderline" value="false"/>
  <property key="labeling/fontWeight" value="50"/>
  <property key="labeling/fontWordSpacing" value="0"/>
  <property key="labeling/formatNumbers" value="true"/>
  <property key="labeling/isExpression" value="true"/>
  <property key="labeling/labelOffsetInMapUnits" value="true"/>
  <property key="labeling/labelOffsetMapUnitMaxScale" value="0"/>
  <property key="labeling/labelOffsetMapUnitMinScale" value="0"/>
  <property key="labeling/labelPerPart" value="false"/>
  <property key="labeling/leftDirectionSymbol" value="&lt;"/>
  <property key="labeling/limitNumLabels" value="false"/>
  <property key="labeling/maxCurvedCharAngleIn" value="20"/>
  <property key="labeling/maxCurvedCharAngleOut" value="-20"/>
  <property key="labeling/maxNumLabels" value="2000"/>
  <property key="labeling/mergeLines" value="false"/>
  <property key="labeling/minFeatureSize" value="0"/>
  <property key="labeling/multilineAlign" value="0"/>
  <property key="labeling/multilineHeight" value="1"/>
  <property key="labeling/namedStyle" value="Regular"/>
  <property key="labeling/obstacle" value="true"/>
  <property key="labeling/placeDirectionSymbol" value="0"/>
  <property key="labeling/placement" value="1"/>
  <property key="labeling/placementFlags" value="0"/>
  <property key="labeling/plussign" value="false"/>
  <property key="labeling/preserveRotation" value="true"/>
  <property key="labeling/previewBkgrdColor" value="#ffffff"/>
  <property key="labeling/priority" value="5"/>
  <property key="labeling/quadOffset" value="4"/>
  <property key="labeling/repeatDistance" value="0"/>
  <property key="labeling/repeatDistanceMapUnitMaxScale" value="0"/>
  <property key="labeling/repeatDistanceMapUnitMinScale" value="0"/>
  <property key="labeling/repeatDistanceUnit" value="1"/>
  <property key="labeling/reverseDirectionSymbol" value="false"/>
  <property key="labeling/rightDirectionSymbol" value=">"/>
  <property key="labeling/scaleMax" value="10000000"/>
  <property key="labeling/scaleMin" value="1"/>
  <property key="labeling/scaleVisibility" value="false"/>
  <property key="labeling/shadowBlendMode" value="6"/>
  <property key="labeling/shadowColorB" value="0"/>
  <property key="labeling/shadowColorG" value="0"/>
  <property key="labeling/shadowColorR" value="0"/>
  <property key="labeling/shadowDraw" value="false"/>
  <property key="labeling/shadowOffsetAngle" value="135"/>
  <property key="labeling/shadowOffsetDist" value="1"/>
  <property key="labeling/shadowOffsetGlobal" value="true"/>
  <property key="labeling/shadowOffsetMapUnitMaxScale" value="0"/>
  <property key="labeling/shadowOffsetMapUnitMinScale" value="0"/>
  <property key="labeling/shadowOffsetUnits" value="1"/>
  <property key="labeling/shadowRadius" value="1.5"/>
  <property key="labeling/shadowRadiusAlphaOnly" value="false"/>
  <property key="labeling/shadowRadiusMapUnitMaxScale" value="0"/>
  <property key="labeling/shadowRadiusMapUnitMinScale" value="0"/>
  <property key="labeling/shadowRadiusUnits" value="1"/>
  <property key="labeling/shadowScale" value="100"/>
  <property key="labeling/shadowTransparency" value="30"/>
  <property key="labeling/shadowUnder" value="0"/>
  <property key="labeling/shapeBlendMode" value="0"/>
  <property key="labeling/shapeBorderColorA" value="255"/>
  <property key="labeling/shapeBorderColorB" value="128"/>
  <property key="labeling/shapeBorderColorG" value="128"/>
  <property key="labeling/shapeBorderColorR" value="128"/>
  <property key="labeling/shapeBorderWidth" value="0"/>
  <property key="labeling/shapeBorderWidthMapUnitMaxScale" value="0"/>
  <property key="labeling/shapeBorderWidthMapUnitMinScale" value="0"/>
  <property key="labeling/shapeBorderWidthUnits" value="1"/>
  <property key="labeling/shapeDraw" value="false"/>
  <property key="labeling/shapeFillColorA" value="255"/>
  <property key="labeling/shapeFillColorB" value="255"/>
  <property key="labeling/shapeFillColorG" value="255"/>
  <property key="labeling/shapeFillColorR" value="255"/>
  <property key="labeling/shapeJoinStyle" value="64"/>
  <property key="labeling/shapeOffsetMapUnitMaxScale" value="0"/>
  <property key="labeling/shapeOffsetMapUnitMinScale" value="0"/>
  <property key="labeling/shapeOffsetUnits" value="1"/>
  <property key="labeling/shapeOffsetX" value="0"/>
  <property key="labeling/shapeOffsetY" value="0"/>
  <property key="labeling/shapeRadiiMapUnitMaxScale" value="0"/>
  <property key="labeling/shapeRadiiMapUnitMinScale" value="0"/>
  <property key="labeling/shapeRadiiUnits" value="1"/>
  <property key="labeling/shapeRadiiX" value="0"/>
  <property key="labeling/shapeRadiiY" value="0"/>
  <property key="labeling/shapeRotation" value="0"/>
  <property key="labeling/shapeRotationType" value="0"/>
  <property key="labeling/shapeSVGFile" value=""/>
  <property key="labeling/shapeSizeMapUnitMaxScale" value="0"/>
  <property key="labeling/shapeSizeMapUnitMinScale" value="0"/>
  <property key="labeling/shapeSizeType" value="0"/>
  <property key="labeling/shapeSizeUnits" value="1"/>
  <property key="labeling/shapeSizeX" value="0"/>
  <property key="labeling/shapeSizeY" value="0"/>
  <property key="labeling/shapeTransparency" value="0"/>
  <property key="labeling/shapeType" value="0"/>
  <property key="labeling/textColorA" value="255"/>
  <property key="labeling/textColorB" value="0"/>
  <property key="labeling/textColorG" value="0"/>
  <property key="labeling/textColorR" value="0"/>
  <property key="labeling/textTransp" value="0"/>
  <property key="labeling/upsidedownLabels" value="0"/>
  <property key="labeling/wrapChar" value=""/>
  <property key="labeling/xOffset" value="0"/>
  <property key="labeling/yOffset" value="0"/>
  <property key="variableNames"/>
  <property key="variableValues"/>
 </customproperties>
 <blendMode>0</blendMode>
 <featureBlendMode>0</featureBlendMode>
 <layerOpacity>1</layerOpacity>
 <SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Histogram">
  <DiagramCategory minimumSize="0" opacity="1" minScaleDenominator="0" scaleBasedVisibility="0" sizeScale="3x:0,0,0,0,0,0" scaleDependency="Area" backgroundColor="#ffffff" lineSizeType="MM" rotationOffset="270" penAlpha="255" backgroundAlpha="255" penColor="#000000" maxScaleDenominator="1e+8" enabled="0" width="15" labelPlacementMethod="XHeight" diagramOrientation="Up" lineSizeScale="3x:0,0,0,0,0,0" height="15" penWidth="0" sizeType="MM" barWidth="5">
   <fontProperties style="" description="Sans Serif,9,-1,5,50,0,0,0,0,0"/>
   <attribute color="#000000" label="" field=""/>
  </DiagramCategory>
 </SingleCategoryDiagramRenderer>
 <DiagramLayerSettings zIndex="0" linePlacementFlags="18" priority="0" obstacle="0" dist="0" placement="1" showAll="1">
  <properties>
   <Option type="Map">
    <Option name="name" type="QString" value=""/>
    <Option name="properties"/>
    <Option name="type" type="QString" value="collection"/>
   </Option>
  </properties>
 </DiagramLayerSettings>
 <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
  <activeChecks/>
  <checkConfiguration/>
 </geometryOptions>
 <fieldConfiguration>
  <field name="ogc_fid">
   <editWidget type="TextEdit">
    <config>
     <Option/>
    </config>
   </editWidget>
  </field>
  <field name="tid">
   <editWidget type="TextEdit">
    <config>
     <Option/>
    </config>
   </editWidget>
  </field>
  <field name="liegenschaft_von">
   <editWidget type="TextEdit">
    <config>
     <Option/>
    </config>
   </editWidget>
  </field>
  <field name="nummerteilgrundstueck">
   <editWidget type="TextEdit">
    <config>
     <Option/>
    </config>
   </editWidget>
  </field>
  <field name="flaechenmass">
   <editWidget type="TextEdit">
    <config>
     <Option/>
    </config>
   </editWidget>
  </field>
  <field name="flaeche">
   <editWidget type="TextEdit">
    <config>
     <Option/>
    </config>
   </editWidget>
  </field>
  <field name="qualitaet">
   <editWidget type="Range">
    <config>
     <Option/>
    </config>
   </editWidget>
  </field>
  <field name="qualitaet_txt">
   <editWidget type="TextEdit">
    <config>
     <Option/>
    </config>
   </editWidget>
  </field>
  <field name="gem_bfs">
   <editWidget type="Range">
    <config>
     <Option/>
    </config>
   </editWidget>
  </field>
  <field name="los">
   <editWidget type="Range">
    <config>
     <Option/>
    </config>
   </editWidget>
  </field>
  <field name="lieferdatum">
   <editWidget type="DateTime">
    <config>
     <Option/>
    </config>
   </editWidget>
  </field>
 </fieldConfiguration>
 <aliases>
  <alias index="0" name="" field="ogc_fid"/>
  <alias index="1" name="" field="tid"/>
  <alias index="2" name="" field="liegenschaft_von"/>
  <alias index="3" name="" field="nummerteilgrundstueck"/>
  <alias index="4" name="" field="flaechenmass"/>
  <alias index="5" name="" field="flaeche"/>
  <alias index="6" name="" field="qualitaet"/>
  <alias index="7" name="" field="qualitaet_txt"/>
  <alias index="8" name="" field="gem_bfs"/>
  <alias index="9" name="" field="los"/>
  <alias index="10" name="" field="lieferdatum"/>
 </aliases>
 <excludeAttributesWMS/>
 <excludeAttributesWFS/>
 <defaults>
  <default applyOnUpdate="0" expression="" field="ogc_fid"/>
  <default applyOnUpdate="0" expression="" field="tid"/>
  <default applyOnUpdate="0" expression="" field="liegenschaft_von"/>
  <default applyOnUpdate="0" expression="" field="nummerteilgrundstueck"/>
  <default applyOnUpdate="0" expression="" field="flaechenmass"/>
  <default applyOnUpdate="0" expression="" field="flaeche"/>
  <default applyOnUpdate="0" expression="" field="qualitaet"/>
  <default applyOnUpdate="0" expression="" field="qualitaet_txt"/>
  <default applyOnUpdate="0" expression="" field="gem_bfs"/>
  <default applyOnUpdate="0" expression="" field="los"/>
  <default applyOnUpdate="0" expression="" field="lieferdatum"/>
 </defaults>
 <constraints>
  <constraint notnull_strength="1" constraints="3" unique_strength="1" field="ogc_fid" exp_strength="0"/>
  <constraint notnull_strength="0" constraints="0" unique_strength="0" field="tid" exp_strength="0"/>
  <constraint notnull_strength="0" constraints="0" unique_strength="0" field="liegenschaft_von" exp_strength="0"/>
  <constraint notnull_strength="0" constraints="0" unique_strength="0" field="nummerteilgrundstueck" exp_strength="0"/>
  <constraint notnull_strength="0" constraints="0" unique_strength="0" field="flaechenmass" exp_strength="0"/>
  <constraint notnull_strength="0" constraints="0" unique_strength="0" field="flaeche" exp_strength="0"/>
  <constraint notnull_strength="0" constraints="0" unique_strength="0" field="qualitaet" exp_strength="0"/>
  <constraint notnull_strength="0" constraints="0" unique_strength="0" field="qualitaet_txt" exp_strength="0"/>
  <constraint notnull_strength="0" constraints="0" unique_strength="0" field="gem_bfs" exp_strength="0"/>
  <constraint notnull_strength="0" constraints="0" unique_strength="0" field="los" exp_strength="0"/>
  <constraint notnull_strength="0" constraints="0" unique_strength="0" field="lieferdatum" exp_strength="0"/>
 </constraints>
 <constraintExpressions>
  <constraint exp="" desc="" field="ogc_fid"/>
  <constraint exp="" desc="" field="tid"/>
  <constraint exp="" desc="" field="liegenschaft_von"/>
  <constraint exp="" desc="" field="nummerteilgrundstueck"/>
  <constraint exp="" desc="" field="flaechenmass"/>
  <constraint exp="" desc="" field="flaeche"/>
  <constraint exp="" desc="" field="qualitaet"/>
  <constraint exp="" desc="" field="qualitaet_txt"/>
  <constraint exp="" desc="" field="gem_bfs"/>
  <constraint exp="" desc="" field="los"/>
  <constraint exp="" desc="" field="lieferdatum"/>
 </constraintExpressions>
 <expressionfields/>
 <attributeactions>
  <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
 </attributeactions>
 <attributetableconfig sortOrder="0" sortExpression="" actionWidgetStyle="dropDown">
  <columns>
   <column width="-1" name="ogc_fid" hidden="0" type="field"/>
   <column width="-1" name="tid" hidden="0" type="field"/>
   <column width="-1" name="nummerteilgrundstueck" hidden="0" type="field"/>
   <column width="-1" name="flaechenmass" hidden="0" type="field"/>
   <column width="-1" name="flaeche" hidden="0" type="field"/>
   <column width="-1" name="qualitaet" hidden="0" type="field"/>
   <column width="-1" name="qualitaet_txt" hidden="0" type="field"/>
   <column width="-1" name="gem_bfs" hidden="0" type="field"/>
   <column width="-1" name="los" hidden="0" type="field"/>
   <column width="-1" name="lieferdatum" hidden="0" type="field"/>
   <column width="-1" hidden="1" type="actions"/>
   <column width="-1" name="liegenschaft_von" hidden="0" type="field"/>
  </columns>
 </attributetableconfig>
 <conditionalstyles>
  <rowstyles/>
  <fieldstyles/>
 </conditionalstyles>
 <editform tolerant="1"></editform>
 <editforminit/>
 <editforminitcodesource>0</editforminitcodesource>
 <editforminitfilepath></editforminitfilepath>
 <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
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
]]></editforminitcode>
 <featformsuppress>0</featformsuppress>
 <editorlayout>generatedlayout</editorlayout>
 <editable>
  <field name="flaeche" editable="1"/>
  <field name="flaechenmass" editable="1"/>
  <field name="gem_bfs" editable="1"/>
  <field name="lieferdatum" editable="1"/>
  <field name="liegenschaft_von" editable="1"/>
  <field name="los" editable="1"/>
  <field name="nummerteilgrundstueck" editable="1"/>
  <field name="ogc_fid" editable="1"/>
  <field name="qualitaet" editable="1"/>
  <field name="qualitaet_txt" editable="1"/>
  <field name="selbstrecht_von" editable="1"/>
  <field name="tid" editable="1"/>
 </editable>
 <labelOnTop>
  <field name="flaeche" labelOnTop="0"/>
  <field name="flaechenmass" labelOnTop="0"/>
  <field name="gem_bfs" labelOnTop="0"/>
  <field name="lieferdatum" labelOnTop="0"/>
  <field name="liegenschaft_von" labelOnTop="0"/>
  <field name="los" labelOnTop="0"/>
  <field name="nummerteilgrundstueck" labelOnTop="0"/>
  <field name="ogc_fid" labelOnTop="0"/>
  <field name="qualitaet" labelOnTop="0"/>
  <field name="qualitaet_txt" labelOnTop="0"/>
  <field name="selbstrecht_von" labelOnTop="0"/>
  <field name="tid" labelOnTop="0"/>
 </labelOnTop>
 <widgets/>
 <previewExpression>ogc_fid</previewExpression>
 <mapTip></mapTip>
 <layerGeometryType>2</layerGeometryType>
</qgis>
