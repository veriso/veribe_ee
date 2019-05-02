<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.4.4-Madeira" readOnly="0" styleCategories="AllStyleCategories" simplifyDrawingHints="1" maxScale="0" simplifyMaxScale="1" minScale="1e+8" simplifyDrawingTol="1" labelsEnabled="1" simplifyAlgorithm="0" simplifyLocal="1" hasScaleBasedVisibilityFlag="0">
 <flags>
  <Identifiable>1</Identifiable>
  <Removable>1</Removable>
  <Searchable>1</Searchable>
 </flags>
 <renderer-v2 enableorderby="0" type="RuleRenderer" symbollevels="0" forceraster="0">
  <rules key="{2cdbefb9-b625-48d7-bf4b-3e45fd704aeb}">
   <rule filter="qualitaet_txt = 'AV93' and (( $area -0.55>&quot;flaechenmass&quot; ) or ( $area +0.55&lt; &quot;flaechenmass&quot; ) )" label="AV93 / MO93" key="{0029f964-6608-478a-8284-7c0964a0e7c6}" symbol="0"/>
   <rule filter="qualitaet_txt &lt;> 'AV93' and (( $area -0.55> &quot;flaechenmass&quot; ) or ( $area +0.55&lt; &quot;flaechenmass&quot; ) )" label="andere Qualität / autres de qualité" key="{12bb080d-e08d-44b2-a172-424a8f28755b}" symbol="1"/>
  </rules>
  <symbols>
   <symbol alpha="1" force_rhr="0" name="0" type="fill" clip_to_extent="1">
    <layer locked="0" pass="0" enabled="1" class="LinePatternFill">
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
       <Option name="name" value="" type="QString"/>
       <Option name="properties"/>
       <Option name="type" value="collection" type="QString"/>
      </Option>
     </data_defined_properties>
     <symbol alpha="1" force_rhr="0" name="@0@0" type="line" clip_to_extent="1">
      <layer locked="0" pass="0" enabled="1" class="SimpleLine">
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
         <Option name="name" value="" type="QString"/>
         <Option name="properties"/>
         <Option name="type" value="collection" type="QString"/>
        </Option>
       </data_defined_properties>
      </layer>
     </symbol>
    </layer>
    <layer locked="0" pass="0" enabled="1" class="SimpleFill">
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
       <Option name="name" value="" type="QString"/>
       <Option name="properties"/>
       <Option name="type" value="collection" type="QString"/>
      </Option>
     </data_defined_properties>
    </layer>
   </symbol>
   <symbol alpha="1" force_rhr="0" name="1" type="fill" clip_to_extent="1">
    <layer locked="0" pass="0" enabled="1" class="SimpleFill">
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
       <Option name="name" value="" type="QString"/>
       <Option name="properties"/>
       <Option name="type" value="collection" type="QString"/>
      </Option>
     </data_defined_properties>
    </layer>
   </symbol>
  </symbols>
 </renderer-v2>
 <labeling type="simple">
  <settings>
   <text-style useSubstitutions="0" textColor="255,0,0,255" fontStrikeout="0" multilineHeight="1" fontWordSpacing="0" fontLetterSpacing="0" fontWeight="50" fontSizeMapUnitScale="3x:0,0,0,0,0,0" isExpression="1" fieldName="'Differenz:  '   ||   tostring(  (0.01*(toint( (&quot;flaechenmass&quot; - &quot;flaeche&quot;)*100)))) || &#xa;'\nFlaechenmass:  '   ||   &quot;flaechenmass&quot;  || '\nberechnete Flaeche: '   ||   tostring(  (0.01*(toint( (&quot;flaeche&quot;)*100)))) &#xa;" fontSize="11" fontFamily="Sans Serif" blendMode="0" fontCapitals="0" fontSizeUnit="Point" fontUnderline="0" namedStyle="Normal" fontItalic="0" previewBkgrdColor="#ffffff" textOpacity="1">
    <text-buffer bufferDraw="1" bufferNoFill="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0" bufferSizeUnits="MM" bufferColor="255,255,255,255" bufferOpacity="1" bufferJoinStyle="64" bufferSize="3"/>
    <background shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeDraw="0" shapeOffsetY="0" shapeRadiiX="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeSizeType="0" shapeOpacity="1" shapeRadiiY="0" shapeRotation="0" shapeBorderColor="128,128,128,255" shapeRadiiUnit="MM" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeFillColor="255,255,255,255" shapeJoinStyle="64" shapeOffsetUnit="MM" shapeBorderWidth="0" shapeBorderWidthUnit="MM" shapeBlendMode="0" shapeSVGFile="" shapeType="0" shapeSizeX="0" shapeOffsetX="0" shapeSizeY="0"/>
    <shadow shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetDist="1" shadowRadius="1.5" shadowColor="0,0,0,255" shadowUnder="0" shadowDraw="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowScale="100" shadowOpacity="0.7" shadowRadiusAlphaOnly="0" shadowOffsetGlobal="1" shadowRadiusUnit="MM" shadowBlendMode="6" shadowOffsetUnit="MM"/>
    <substitutions/>
   </text-style>
   <text-format rightDirectionSymbol=">" decimals="3" leftDirectionSymbol="&lt;" reverseDirectionSymbol="0" multilineAlign="4294967295" wrapChar="" plussign="0" formatNumbers="0" placeDirectionSymbol="0" addDirectionSymbol="0" autoWrapLength="0" useMaxLineLengthForAutoWrap="1"/>
   <placement labelOffsetMapUnitScale="3x:0,0,0,0,0,0" placement="1" centroidInside="0" repeatDistance="0" maxCurvedCharAngleOut="-25" distUnits="MM" repeatDistanceUnits="MM" offsetType="0" distMapUnitScale="3x:0,0,0,0,0,0" dist="0" centroidWhole="0" preserveRotation="1" xOffset="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" placementFlags="10" priority="5" yOffset="0" quadOffset="4" maxCurvedCharAngleIn="25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" offsetUnits="MapUnit" rotationAngle="0"/>
   <rendering obstacleFactor="1" maxNumLabels="2000" fontMaxPixelSize="10000" upsidedownLabels="0" zIndex="0" labelPerPart="0" minFeatureSize="0" scaleMin="0" displayAll="0" scaleMax="0" obstacle="1" obstacleType="0" drawLabels="1" mergeLines="0" fontLimitPixelSize="0" scaleVisibility="0" fontMinPixelSize="3" limitNumLabels="0"/>
   <dd_properties>
    <Option type="Map">
     <Option name="name" value="" type="QString"/>
     <Option name="properties"/>
     <Option name="type" value="collection" type="QString"/>
    </Option>
   </dd_properties>
  </settings>
 </labeling>
 <customproperties>
  <property key="dualview/previewExpressions">
   <value>ogc_fid</value>
  </property>
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
 <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
  <DiagramCategory maxScaleDenominator="1e+8" sizeScale="3x:0,0,0,0,0,0" diagramOrientation="Up" enabled="0" width="15" scaleBasedVisibility="0" lineSizeType="MM" rotationOffset="270" backgroundAlpha="255" penColor="#000000" barWidth="5" scaleDependency="Area" lineSizeScale="3x:0,0,0,0,0,0" sizeType="MM" backgroundColor="#ffffff" minimumSize="0" labelPlacementMethod="XHeight" penAlpha="255" height="15" minScaleDenominator="0" penWidth="0" opacity="1">
   <fontProperties description="Sans Serif,9,-1,5,50,0,0,0,0,0" style=""/>
  </DiagramCategory>
 </SingleCategoryDiagramRenderer>
 <DiagramLayerSettings linePlacementFlags="18" zIndex="0" placement="1" showAll="1" priority="0" dist="0" obstacle="0">
  <properties>
   <Option type="Map">
    <Option name="name" value="" type="QString"/>
    <Option name="properties"/>
    <Option name="type" value="collection" type="QString"/>
   </Option>
  </properties>
 </DiagramLayerSettings>
 <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
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
  <field name="selbstrecht_von">
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
  <alias field="ogc_fid" index="0" name=""/>
  <alias field="tid" index="1" name=""/>
  <alias field="selbstrecht_von" index="2" name=""/>
  <alias field="nummerteilgrundstueck" index="3" name=""/>
  <alias field="flaechenmass" index="4" name=""/>
  <alias field="flaeche" index="5" name=""/>
  <alias field="qualitaet" index="6" name=""/>
  <alias field="qualitaet_txt" index="7" name=""/>
  <alias field="gem_bfs" index="8" name=""/>
  <alias field="los" index="9" name=""/>
  <alias field="lieferdatum" index="10" name=""/>
 </aliases>
 <excludeAttributesWMS/>
 <excludeAttributesWFS/>
 <defaults>
  <default field="ogc_fid" applyOnUpdate="0" expression=""/>
  <default field="tid" applyOnUpdate="0" expression=""/>
  <default field="selbstrecht_von" applyOnUpdate="0" expression=""/>
  <default field="nummerteilgrundstueck" applyOnUpdate="0" expression=""/>
  <default field="flaechenmass" applyOnUpdate="0" expression=""/>
  <default field="flaeche" applyOnUpdate="0" expression=""/>
  <default field="qualitaet" applyOnUpdate="0" expression=""/>
  <default field="qualitaet_txt" applyOnUpdate="0" expression=""/>
  <default field="gem_bfs" applyOnUpdate="0" expression=""/>
  <default field="los" applyOnUpdate="0" expression=""/>
  <default field="lieferdatum" applyOnUpdate="0" expression=""/>
 </defaults>
 <constraints>
  <constraint field="ogc_fid" exp_strength="0" unique_strength="1" notnull_strength="1" constraints="3"/>
  <constraint field="tid" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
  <constraint field="selbstrecht_von" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
  <constraint field="nummerteilgrundstueck" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
  <constraint field="flaechenmass" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
  <constraint field="flaeche" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
  <constraint field="qualitaet" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
  <constraint field="qualitaet_txt" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
  <constraint field="gem_bfs" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
  <constraint field="los" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
  <constraint field="lieferdatum" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
 </constraints>
 <constraintExpressions>
  <constraint field="ogc_fid" exp="" desc=""/>
  <constraint field="tid" exp="" desc=""/>
  <constraint field="selbstrecht_von" exp="" desc=""/>
  <constraint field="nummerteilgrundstueck" exp="" desc=""/>
  <constraint field="flaechenmass" exp="" desc=""/>
  <constraint field="flaeche" exp="" desc=""/>
  <constraint field="qualitaet" exp="" desc=""/>
  <constraint field="qualitaet_txt" exp="" desc=""/>
  <constraint field="gem_bfs" exp="" desc=""/>
  <constraint field="los" exp="" desc=""/>
  <constraint field="lieferdatum" exp="" desc=""/>
 </constraintExpressions>
 <expressionfields/>
 <attributeactions>
  <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
 </attributeactions>
 <attributetableconfig sortOrder="0" actionWidgetStyle="dropDown" sortExpression="">
  <columns>
   <column width="-1" name="ogc_fid" type="field" hidden="0"/>
   <column width="-1" name="tid" type="field" hidden="0"/>
   <column width="-1" name="selbstrecht_von" type="field" hidden="0"/>
   <column width="-1" name="nummerteilgrundstueck" type="field" hidden="0"/>
   <column width="-1" name="flaechenmass" type="field" hidden="0"/>
   <column width="-1" name="flaeche" type="field" hidden="0"/>
   <column width="-1" name="qualitaet" type="field" hidden="0"/>
   <column width="-1" name="qualitaet_txt" type="field" hidden="0"/>
   <column width="-1" name="gem_bfs" type="field" hidden="0"/>
   <column width="-1" name="los" type="field" hidden="0"/>
   <column width="-1" name="lieferdatum" type="field" hidden="0"/>
   <column width="-1" type="actions" hidden="1"/>
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
  <field editable="1" name="flaeche"/>
  <field editable="1" name="flaechenmass"/>
  <field editable="1" name="gem_bfs"/>
  <field editable="1" name="lieferdatum"/>
  <field editable="1" name="los"/>
  <field editable="1" name="nummerteilgrundstueck"/>
  <field editable="1" name="ogc_fid"/>
  <field editable="1" name="qualitaet"/>
  <field editable="1" name="qualitaet_txt"/>
  <field editable="1" name="selbstrecht_von"/>
  <field editable="1" name="tid"/>
 </editable>
 <labelOnTop>
  <field labelOnTop="0" name="flaeche"/>
  <field labelOnTop="0" name="flaechenmass"/>
  <field labelOnTop="0" name="gem_bfs"/>
  <field labelOnTop="0" name="lieferdatum"/>
  <field labelOnTop="0" name="los"/>
  <field labelOnTop="0" name="nummerteilgrundstueck"/>
  <field labelOnTop="0" name="ogc_fid"/>
  <field labelOnTop="0" name="qualitaet"/>
  <field labelOnTop="0" name="qualitaet_txt"/>
  <field labelOnTop="0" name="selbstrecht_von"/>
  <field labelOnTop="0" name="tid"/>
 </labelOnTop>
 <widgets/>
 <previewExpression>ogc_fid</previewExpression>
 <mapTip></mapTip>
 <layerGeometryType>2</layerGeometryType>
</qgis>
