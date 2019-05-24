<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyDrawingHints="1" styleCategories="AllStyleCategories" minScale="1e+8" simplifyAlgorithm="0" hasScaleBasedVisibilityFlag="0" labelsEnabled="1" simplifyDrawingTol="1" simplifyMaxScale="1" maxScale="0" readOnly="0" version="3.6.3-Noosa" simplifyLocal="1">
 <flags>
  <Identifiable>1</Identifiable>
  <Removable>1</Removable>
  <Searchable>1</Searchable>
 </flags>
 <renderer-v2 symbollevels="0" forceraster="0" type="RuleRenderer" enableorderby="0">
  <rules key="{2cdbefb9-b625-48d7-bf4b-3e45fd704aeb}">
   <rule label="AV93 / MO93" key="{0029f964-6608-478a-8284-7c0964a0e7c6}" filter="qualitaet_txt = 'AV93' and (( round(area(  $geometry )) -0.55>&quot;flaechenmass&quot; ) or ( round(area(  $geometry )) +0.55&lt; &quot;flaechenmass&quot; ) )" symbol="0"/>
   <rule label="andere Qualität / autres de qualité" key="{12bb080d-e08d-44b2-a172-424a8f28755b}" filter="qualitaet_txt &lt;> 'AV93' and (( round(area(  $geometry )) -0.55> &quot;flaechenmass&quot; ) or ( round(area(  $geometry )) +0.55&lt; &quot;flaechenmass&quot; ) )" symbol="1"/>
  </rules>
  <symbols>
   <symbol name="0" alpha="1" type="fill" clip_to_extent="1" force_rhr="0">
    <layer pass="0" enabled="1" locked="0" class="LinePatternFill">
     <prop k="angle" v="45"/>
     <prop k="color" v="164,87,208,255"/>
     <prop k="distance" v="5"/>
     <prop k="distance_map_unit_scale" v="3x:0,0,0,0,0,0"/>
     <prop k="distance_unit" v="MM"/>
     <prop k="line_width" v="2"/>
     <prop k="line_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
     <prop k="line_width_unit" v="MM"/>
     <prop k="offset" v="0"/>
     <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
     <prop k="offset_unit" v="MM"/>
     <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
     <prop k="outline_width_unit" v="MM"/>
     <data_defined_properties>
      <Option type="Map">
       <Option value="" name="name" type="QString"/>
       <Option name="properties"/>
       <Option value="collection" name="type" type="QString"/>
      </Option>
     </data_defined_properties>
     <symbol name="@0@0" alpha="1" type="line" clip_to_extent="1" force_rhr="0">
      <layer pass="0" enabled="1" locked="0" class="SimpleLine">
       <prop k="capstyle" v="square"/>
       <prop k="customdash" v="5;2"/>
       <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
       <prop k="customdash_unit" v="MM"/>
       <prop k="draw_inside_polygon" v="0"/>
       <prop k="joinstyle" v="bevel"/>
       <prop k="line_color" v="164,87,208,255"/>
       <prop k="line_style" v="solid"/>
       <prop k="line_width" v="2"/>
       <prop k="line_width_unit" v="MM"/>
       <prop k="offset" v="0"/>
       <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
       <prop k="offset_unit" v="MM"/>
       <prop k="ring_filter" v="0"/>
       <prop k="use_custom_dash" v="0"/>
       <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
       <data_defined_properties>
        <Option type="Map">
         <Option value="" name="name" type="QString"/>
         <Option name="properties"/>
         <Option value="collection" name="type" type="QString"/>
        </Option>
       </data_defined_properties>
      </layer>
     </symbol>
    </layer>
    <layer pass="0" enabled="1" locked="0" class="SimpleFill">
     <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
     <prop k="color" v="0,0,255,255"/>
     <prop k="joinstyle" v="bevel"/>
     <prop k="offset" v="0,0"/>
     <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
     <prop k="offset_unit" v="MM"/>
     <prop k="outline_color" v="252,0,0,255"/>
     <prop k="outline_style" v="solid"/>
     <prop k="outline_width" v="2.06"/>
     <prop k="outline_width_unit" v="MM"/>
     <prop k="style" v="no"/>
     <data_defined_properties>
      <Option type="Map">
       <Option value="" name="name" type="QString"/>
       <Option name="properties"/>
       <Option value="collection" name="type" type="QString"/>
      </Option>
     </data_defined_properties>
    </layer>
   </symbol>
   <symbol name="1" alpha="1" type="fill" clip_to_extent="1" force_rhr="0">
    <layer pass="0" enabled="1" locked="0" class="SimpleFill">
     <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
     <prop k="color" v="211,142,21,255"/>
     <prop k="joinstyle" v="bevel"/>
     <prop k="offset" v="0,0"/>
     <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
     <prop k="offset_unit" v="MM"/>
     <prop k="outline_color" v="255,0,127,255"/>
     <prop k="outline_style" v="solid"/>
     <prop k="outline_width" v="2"/>
     <prop k="outline_width_unit" v="MM"/>
     <prop k="style" v="no"/>
     <data_defined_properties>
      <Option type="Map">
       <Option value="" name="name" type="QString"/>
       <Option name="properties"/>
       <Option value="collection" name="type" type="QString"/>
      </Option>
     </data_defined_properties>
    </layer>
   </symbol>
  </symbols>
 </renderer-v2>
 <labeling type="simple">
  <settings>
   <text-style fontWordSpacing="0" blendMode="0" textOpacity="1" isExpression="1" fieldName="'Differenz:  '   ||   tostring(  round((0.01*(toint( (&quot;flaechenmass&quot; - &quot;flaeche&quot;)*100))), 2)) || &#xa;'\nFlaechenmass:  '   ||   round(&quot;flaechenmass&quot;, 2)  || '\nberechnete Flaeche: '   ||   tostring(  round((0.01*(toint( (&quot;flaeche&quot;)*100))), 2)) &#xa;" multilineHeight="1" fontCapitals="0" fontLetterSpacing="0" previewBkgrdColor="#ffffff" fontWeight="50" textColor="0,0,0,255" fontStrikeout="0" fontSizeUnit="Point" namedStyle="Normal" fontUnderline="0" fontFamily="Sans Serif" fontItalic="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontSize="11" useSubstitutions="0">
    <text-buffer bufferBlendMode="0" bufferSizeUnits="MM" bufferSize="3" bufferOpacity="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferColor="255,255,255,255" bufferNoFill="0" bufferJoinStyle="64" bufferDraw="1"/>
    <background shapeOpacity="1" shapeBlendMode="0" shapeSizeX="0" shapeOffsetUnit="MM" shapeRotation="0" shapeBorderWidth="0" shapeBorderWidthUnit="MM" shapeSizeUnit="MM" shapeSizeY="0" shapeOffsetY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeDraw="0" shapeRadiiY="0" shapeRotationType="0" shapeRadiiX="0" shapeRadiiUnit="MM" shapeBorderColor="128,128,128,255" shapeType="0" shapeSizeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeFillColor="255,255,255,255" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSVGFile=""/>
    <shadow shadowOffsetUnit="MM" shadowOpacity="0.7" shadowOffsetGlobal="1" shadowBlendMode="6" shadowRadiusUnit="MM" shadowScale="100" shadowRadiusAlphaOnly="0" shadowRadius="1.5" shadowColor="0,0,0,255" shadowUnder="0" shadowOffsetDist="1" shadowDraw="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetAngle="135"/>
    <substitutions/>
   </text-style>
   <text-format leftDirectionSymbol="&lt;" wrapChar="" formatNumbers="0" autoWrapLength="0" decimals="18" addDirectionSymbol="0" plussign="1" placeDirectionSymbol="0" useMaxLineLengthForAutoWrap="1" multilineAlign="0" reverseDirectionSymbol="0" rightDirectionSymbol=">"/>
   <placement placement="1" yOffset="0" dist="0" maxCurvedCharAngleIn="25" rotationAngle="0" repeatDistanceUnits="MM" quadOffset="4" xOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleOut="-25" fitInPolygonOnly="0" repeatDistance="0" offsetUnits="MapUnit" preserveRotation="1" centroidWhole="0" offsetType="0" centroidInside="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" distUnits="MM" placementFlags="10" priority="5" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR"/>
   <rendering fontMaxPixelSize="10000" obstacleType="0" fontMinPixelSize="3" scaleMin="0" maxNumLabels="2000" minFeatureSize="0" obstacleFactor="1" displayAll="0" fontLimitPixelSize="0" scaleMax="0" limitNumLabels="0" mergeLines="0" zIndex="0" scaleVisibility="0" labelPerPart="0" upsidedownLabels="0" obstacle="1" drawLabels="1"/>
   <dd_properties>
    <Option type="Map">
     <Option value="" name="name" type="QString"/>
     <Option name="properties"/>
     <Option value="collection" name="type" type="QString"/>
    </Option>
   </dd_properties>
  </settings>
 </labeling>
 <customproperties>
  <property key="dualview/previewExpressions">
   <value>ogc_fid</value>
  </property>
  <property value="0" key="embeddedWidgets/count"/>
  <property value="pal" key="labeling"/>
  <property value="false" key="labeling/addDirectionSymbol"/>
  <property value="0" key="labeling/angleOffset"/>
  <property value="0" key="labeling/blendMode"/>
  <property value="0" key="labeling/bufferBlendMode"/>
  <property value="255" key="labeling/bufferColorA"/>
  <property value="255" key="labeling/bufferColorB"/>
  <property value="255" key="labeling/bufferColorG"/>
  <property value="255" key="labeling/bufferColorR"/>
  <property value="true" key="labeling/bufferDraw"/>
  <property value="64" key="labeling/bufferJoinStyle"/>
  <property value="false" key="labeling/bufferNoFill"/>
  <property value="3" key="labeling/bufferSize"/>
  <property value="false" key="labeling/bufferSizeInMapUnits"/>
  <property value="0" key="labeling/bufferSizeMapUnitMaxScale"/>
  <property value="0" key="labeling/bufferSizeMapUnitMinScale"/>
  <property value="0" key="labeling/bufferTransp"/>
  <property value="false" key="labeling/centroidInside"/>
  <property value="false" key="labeling/centroidWhole"/>
  <property value="2" key="labeling/decimals"/>
  <property value="false" key="labeling/displayAll"/>
  <property value="0" key="labeling/dist"/>
  <property value="false" key="labeling/distInMapUnits"/>
  <property value="0" key="labeling/distMapUnitMaxScale"/>
  <property value="0" key="labeling/distMapUnitMinScale"/>
  <property value="true" key="labeling/enabled"/>
  <property value="'Differenz:  '   ||   tostring(  (0.01*(toint( (&quot;flaechenmass&quot; - &quot;flaeche&quot;)*100)))) || &#xa;'\nFlaechenmass:  '   ||   &quot;flaechenmass&quot;  || '\nberechnete Flaeche: '   ||   tostring(  (0.01*(toint( (&quot;flaeche&quot;)*100)))) &#xa;" key="labeling/fieldName"/>
  <property value="false" key="labeling/fontBold"/>
  <property value="0" key="labeling/fontCapitals"/>
  <property value="Cantarell" key="labeling/fontFamily"/>
  <property value="false" key="labeling/fontItalic"/>
  <property value="0" key="labeling/fontLetterSpacing"/>
  <property value="false" key="labeling/fontLimitPixelSize"/>
  <property value="10000" key="labeling/fontMaxPixelSize"/>
  <property value="3" key="labeling/fontMinPixelSize"/>
  <property value="11" key="labeling/fontSize"/>
  <property value="false" key="labeling/fontSizeInMapUnits"/>
  <property value="0" key="labeling/fontSizeMapUnitMaxScale"/>
  <property value="0" key="labeling/fontSizeMapUnitMinScale"/>
  <property value="false" key="labeling/fontStrikeout"/>
  <property value="false" key="labeling/fontUnderline"/>
  <property value="50" key="labeling/fontWeight"/>
  <property value="0" key="labeling/fontWordSpacing"/>
  <property value="true" key="labeling/formatNumbers"/>
  <property value="true" key="labeling/isExpression"/>
  <property value="true" key="labeling/labelOffsetInMapUnits"/>
  <property value="0" key="labeling/labelOffsetMapUnitMaxScale"/>
  <property value="0" key="labeling/labelOffsetMapUnitMinScale"/>
  <property value="false" key="labeling/labelPerPart"/>
  <property value="&lt;" key="labeling/leftDirectionSymbol"/>
  <property value="false" key="labeling/limitNumLabels"/>
  <property value="20" key="labeling/maxCurvedCharAngleIn"/>
  <property value="-20" key="labeling/maxCurvedCharAngleOut"/>
  <property value="2000" key="labeling/maxNumLabels"/>
  <property value="false" key="labeling/mergeLines"/>
  <property value="0" key="labeling/minFeatureSize"/>
  <property value="0" key="labeling/multilineAlign"/>
  <property value="1" key="labeling/multilineHeight"/>
  <property value="Regular" key="labeling/namedStyle"/>
  <property value="true" key="labeling/obstacle"/>
  <property value="0" key="labeling/placeDirectionSymbol"/>
  <property value="1" key="labeling/placement"/>
  <property value="0" key="labeling/placementFlags"/>
  <property value="false" key="labeling/plussign"/>
  <property value="true" key="labeling/preserveRotation"/>
  <property value="#ffffff" key="labeling/previewBkgrdColor"/>
  <property value="5" key="labeling/priority"/>
  <property value="4" key="labeling/quadOffset"/>
  <property value="0" key="labeling/repeatDistance"/>
  <property value="0" key="labeling/repeatDistanceMapUnitMaxScale"/>
  <property value="0" key="labeling/repeatDistanceMapUnitMinScale"/>
  <property value="1" key="labeling/repeatDistanceUnit"/>
  <property value="false" key="labeling/reverseDirectionSymbol"/>
  <property value=">" key="labeling/rightDirectionSymbol"/>
  <property value="10000000" key="labeling/scaleMax"/>
  <property value="1" key="labeling/scaleMin"/>
  <property value="false" key="labeling/scaleVisibility"/>
  <property value="6" key="labeling/shadowBlendMode"/>
  <property value="0" key="labeling/shadowColorB"/>
  <property value="0" key="labeling/shadowColorG"/>
  <property value="0" key="labeling/shadowColorR"/>
  <property value="false" key="labeling/shadowDraw"/>
  <property value="135" key="labeling/shadowOffsetAngle"/>
  <property value="1" key="labeling/shadowOffsetDist"/>
  <property value="true" key="labeling/shadowOffsetGlobal"/>
  <property value="0" key="labeling/shadowOffsetMapUnitMaxScale"/>
  <property value="0" key="labeling/shadowOffsetMapUnitMinScale"/>
  <property value="1" key="labeling/shadowOffsetUnits"/>
  <property value="1.5" key="labeling/shadowRadius"/>
  <property value="false" key="labeling/shadowRadiusAlphaOnly"/>
  <property value="0" key="labeling/shadowRadiusMapUnitMaxScale"/>
  <property value="0" key="labeling/shadowRadiusMapUnitMinScale"/>
  <property value="1" key="labeling/shadowRadiusUnits"/>
  <property value="100" key="labeling/shadowScale"/>
  <property value="30" key="labeling/shadowTransparency"/>
  <property value="0" key="labeling/shadowUnder"/>
  <property value="0" key="labeling/shapeBlendMode"/>
  <property value="255" key="labeling/shapeBorderColorA"/>
  <property value="128" key="labeling/shapeBorderColorB"/>
  <property value="128" key="labeling/shapeBorderColorG"/>
  <property value="128" key="labeling/shapeBorderColorR"/>
  <property value="0" key="labeling/shapeBorderWidth"/>
  <property value="0" key="labeling/shapeBorderWidthMapUnitMaxScale"/>
  <property value="0" key="labeling/shapeBorderWidthMapUnitMinScale"/>
  <property value="1" key="labeling/shapeBorderWidthUnits"/>
  <property value="false" key="labeling/shapeDraw"/>
  <property value="255" key="labeling/shapeFillColorA"/>
  <property value="255" key="labeling/shapeFillColorB"/>
  <property value="255" key="labeling/shapeFillColorG"/>
  <property value="255" key="labeling/shapeFillColorR"/>
  <property value="64" key="labeling/shapeJoinStyle"/>
  <property value="0" key="labeling/shapeOffsetMapUnitMaxScale"/>
  <property value="0" key="labeling/shapeOffsetMapUnitMinScale"/>
  <property value="1" key="labeling/shapeOffsetUnits"/>
  <property value="0" key="labeling/shapeOffsetX"/>
  <property value="0" key="labeling/shapeOffsetY"/>
  <property value="0" key="labeling/shapeRadiiMapUnitMaxScale"/>
  <property value="0" key="labeling/shapeRadiiMapUnitMinScale"/>
  <property value="1" key="labeling/shapeRadiiUnits"/>
  <property value="0" key="labeling/shapeRadiiX"/>
  <property value="0" key="labeling/shapeRadiiY"/>
  <property value="0" key="labeling/shapeRotation"/>
  <property value="0" key="labeling/shapeRotationType"/>
  <property value="" key="labeling/shapeSVGFile"/>
  <property value="0" key="labeling/shapeSizeMapUnitMaxScale"/>
  <property value="0" key="labeling/shapeSizeMapUnitMinScale"/>
  <property value="0" key="labeling/shapeSizeType"/>
  <property value="1" key="labeling/shapeSizeUnits"/>
  <property value="0" key="labeling/shapeSizeX"/>
  <property value="0" key="labeling/shapeSizeY"/>
  <property value="0" key="labeling/shapeTransparency"/>
  <property value="0" key="labeling/shapeType"/>
  <property value="255" key="labeling/textColorA"/>
  <property value="0" key="labeling/textColorB"/>
  <property value="0" key="labeling/textColorG"/>
  <property value="0" key="labeling/textColorR"/>
  <property value="0" key="labeling/textTransp"/>
  <property value="0" key="labeling/upsidedownLabels"/>
  <property value="" key="labeling/wrapChar"/>
  <property value="0" key="labeling/xOffset"/>
  <property value="0" key="labeling/yOffset"/>
  <property key="variableNames"/>
  <property key="variableValues"/>
 </customproperties>
 <blendMode>0</blendMode>
 <featureBlendMode>0</featureBlendMode>
 <layerOpacity>1</layerOpacity>
 <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
  <DiagramCategory barWidth="5" rotationOffset="270" maxScaleDenominator="1e+8" lineSizeScale="3x:0,0,0,0,0,0" enabled="0" penColor="#000000" sizeType="MM" scaleBasedVisibility="0" lineSizeType="MM" penWidth="0" labelPlacementMethod="XHeight" scaleDependency="Area" width="15" height="15" opacity="1" minScaleDenominator="0" penAlpha="255" backgroundAlpha="255" backgroundColor="#ffffff" diagramOrientation="Up" minimumSize="0" sizeScale="3x:0,0,0,0,0,0">
   <fontProperties style="" description="Sans Serif,9,-1,5,50,0,0,0,0,0"/>
   <attribute label="" color="#000000" field=""/>
  </DiagramCategory>
 </SingleCategoryDiagramRenderer>
 <DiagramLayerSettings placement="1" obstacle="0" priority="0" showAll="1" linePlacementFlags="18" zIndex="0" dist="0">
  <properties>
   <Option type="Map">
    <Option value="" name="name" type="QString"/>
    <Option name="properties"/>
    <Option value="collection" name="type" type="QString"/>
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
  <default expression="" applyOnUpdate="0" field="ogc_fid"/>
  <default expression="" applyOnUpdate="0" field="tid"/>
  <default expression="" applyOnUpdate="0" field="liegenschaft_von"/>
  <default expression="" applyOnUpdate="0" field="nummerteilgrundstueck"/>
  <default expression="" applyOnUpdate="0" field="flaechenmass"/>
  <default expression="" applyOnUpdate="0" field="flaeche"/>
  <default expression="" applyOnUpdate="0" field="qualitaet"/>
  <default expression="" applyOnUpdate="0" field="qualitaet_txt"/>
  <default expression="" applyOnUpdate="0" field="gem_bfs"/>
  <default expression="" applyOnUpdate="0" field="los"/>
  <default expression="" applyOnUpdate="0" field="lieferdatum"/>
 </defaults>
 <constraints>
  <constraint notnull_strength="1" exp_strength="0" constraints="3" unique_strength="1" field="ogc_fid"/>
  <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="tid"/>
  <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="liegenschaft_von"/>
  <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="nummerteilgrundstueck"/>
  <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="flaechenmass"/>
  <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="flaeche"/>
  <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="qualitaet"/>
  <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="qualitaet_txt"/>
  <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="gem_bfs"/>
  <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="los"/>
  <constraint notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0" field="lieferdatum"/>
 </constraints>
 <constraintExpressions>
  <constraint desc="" exp="" field="ogc_fid"/>
  <constraint desc="" exp="" field="tid"/>
  <constraint desc="" exp="" field="liegenschaft_von"/>
  <constraint desc="" exp="" field="nummerteilgrundstueck"/>
  <constraint desc="" exp="" field="flaechenmass"/>
  <constraint desc="" exp="" field="flaeche"/>
  <constraint desc="" exp="" field="qualitaet"/>
  <constraint desc="" exp="" field="qualitaet_txt"/>
  <constraint desc="" exp="" field="gem_bfs"/>
  <constraint desc="" exp="" field="los"/>
  <constraint desc="" exp="" field="lieferdatum"/>
 </constraintExpressions>
 <expressionfields/>
 <attributeactions>
  <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
 </attributeactions>
 <attributetableconfig sortExpression="" sortOrder="0" actionWidgetStyle="dropDown">
  <columns>
   <column name="ogc_fid" width="-1" type="field" hidden="0"/>
   <column name="tid" width="39" type="field" hidden="0"/>
   <column name="nummerteilgrundstueck" width="23" type="field" hidden="0"/>
   <column name="flaechenmass" width="-1" type="field" hidden="0"/>
   <column name="flaeche" width="23" type="field" hidden="0"/>
   <column name="qualitaet" width="23" type="field" hidden="0"/>
   <column name="qualitaet_txt" width="23" type="field" hidden="0"/>
   <column name="gem_bfs" width="23" type="field" hidden="0"/>
   <column name="los" width="23" type="field" hidden="0"/>
   <column name="lieferdatum" width="23" type="field" hidden="0"/>
   <column width="-1" type="actions" hidden="1"/>
   <column name="liegenschaft_von" width="23" type="field" hidden="0"/>
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
  <field editable="1" name="liegenschaft_von"/>
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
  <field labelOnTop="0" name="liegenschaft_von"/>
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
