<qgis hasScaleBasedVisibilityFlag="0" maxLabelScale="1e+08" maximumScale="1e+08" minLabelScale="1" minimumScale="0" readOnly="0" scaleBasedLabelVisibilityFlag="0" simplifyAlgorithm="0" simplifyDrawingHints="0" simplifyDrawingTol="1" simplifyLocal="1" simplifyMaxScale="1" version="2.18.6">
  <edittypes>
    <edittype name="ogc_fid" widgetv2type="TextEdit">
      <widgetv2config IsMultiline="0" UseHtml="0" constraint="" constraintDescription="" fieldEditable="1" labelOnTop="0" notNull="0" />
    </edittype>
    <edittype name="t_ili_tid" widgetv2type="TextEdit">
      <widgetv2config IsMultiline="0" UseHtml="0" constraint="" constraintDescription="" fieldEditable="1" labelOnTop="0" notNull="0" />
    </edittype>
    <edittype name="punktelement_von" widgetv2type="TextEdit">
      <widgetv2config IsMultiline="0" UseHtml="0" constraint="" constraintDescription="" fieldEditable="1" labelOnTop="0" notNull="0" />
    </edittype>
    <edittype name="art" widgetv2type="TextEdit">
      <widgetv2config IsMultiline="0" UseHtml="0" constraint="" constraintDescription="" fieldEditable="1" labelOnTop="0" notNull="0" />
    </edittype>
    <edittype name="art_txt" widgetv2type="TextEdit">
      <widgetv2config IsMultiline="0" UseHtml="0" constraint="" constraintDescription="" fieldEditable="1" labelOnTop="0" notNull="0" />
    </edittype>
    <edittype name="qualitaet_txt" widgetv2type="TextEdit">
      <widgetv2config IsMultiline="0" UseHtml="0" constraint="" constraintDescription="" fieldEditable="1" labelOnTop="0" notNull="0" />
    </edittype>
  </edittypes>
  <renderer-v2 attr="art_txt" enableorderby="0" forceraster="0" symbollevels="0" type="categorizedSymbol">
    <categories>
      <category label="autres genres OD" render="true" symbol="0" value="" />
      <category label="Monument" render="true" symbol="1" value="Denkmal" />
      <category label="Source" render="true" symbol="2" value="Quelle" />
      <category label="bloc_erratique" render="true" symbol="3" value="einzelner_Fels" />
      <category label="mat_antenne" render="true" symbol="4" value="Mast_Antenne" />
      <category label="Tour panoramique" render="true" symbol="5" value="tour_panoramique" />
      <category label="arbre_isole_important" render="true" symbol="6" value="wichtiger_Einzelbaum" />
      <category label="Point de reference" render="true" symbol="7" value="Bezugspunkt" />
      <category label="autre" render="true" symbol="8" value="weitere" />
    </categories>
    <symbols>
      <symbol alpha="1" clip_to_extent="1" name="0" type="marker">
        <layer class="SimpleMarker" locked="0" pass="0">
          <prop k="angle" v="0" />
          <prop k="color" v="255,0,127,255" />
          <prop k="horizontal_anchor_point" v="1" />
          <prop k="joinstyle" v="bevel" />
          <prop k="name" v="circle" />
          <prop k="offset" v="0,0" />
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0" />
          <prop k="offset_unit" v="MM" />
          <prop k="outline_color" v="255,0,0,255" />
          <prop k="outline_style" v="solid" />
          <prop k="outline_width" v="0" />
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0" />
          <prop k="outline_width_unit" v="MM" />
          <prop k="scale_method" v="area" />
          <prop k="size" v="2" />
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0" />
          <prop k="size_unit" v="MM" />
          <prop k="vertical_anchor_point" v="1" />
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" name="1" type="marker">
        <layer class="SvgMarker" locked="0" pass="0">
          <prop k="angle" v="0" />
          <prop k="color" v="0,0,0,255" />
          <prop k="horizontal_anchor_point" v="1" />
          <prop k="name" v="tourist/tourist_monument.svg" />
          <prop k="offset" v="0,0" />
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0" />
          <prop k="offset_unit" v="MM" />
          <prop k="outline_color" v="0,0,0,255" />
          <prop k="outline_width" v="5.55112e-17" />
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0" />
          <prop k="outline_width_unit" v="MM" />
          <prop k="scale_method" v="diameter" />
          <prop k="size" v="5" />
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0" />
          <prop k="size_unit" v="MM" />
          <prop k="vertical_anchor_point" v="1" />
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" name="2" type="marker">
        <layer class="SvgMarker" locked="0" pass="0">
          <prop k="angle" v="0" />
          <prop k="color" v="0,0,0,255" />
          <prop k="horizontal_anchor_point" v="1" />
          <prop k="name" v="food/food_drinkingtap.svg" />
          <prop k="offset" v="0,0" />
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0" />
          <prop k="offset_unit" v="MM" />
          <prop k="outline_color" v="0,0,0,255" />
          <prop k="outline_width" v="5.55112e-17" />
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0" />
          <prop k="outline_width_unit" v="MM" />
          <prop k="scale_method" v="diameter" />
          <prop k="size" v="5" />
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0" />
          <prop k="size_unit" v="MM" />
          <prop k="vertical_anchor_point" v="1" />
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" name="3" type="marker">
        <layer class="SvgMarker" locked="0" pass="0">
          <prop k="angle" v="0" />
          <prop k="color" v="0,0,0,255" />
          <prop k="horizontal_anchor_point" v="1" />
          <prop k="name" v="tourist/tourist_beach.svg" />
          <prop k="offset" v="0,0" />
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0" />
          <prop k="offset_unit" v="MM" />
          <prop k="outline_color" v="0,0,0,255" />
          <prop k="outline_width" v="5.55112e-17" />
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0" />
          <prop k="outline_width_unit" v="MM" />
          <prop k="scale_method" v="diameter" />
          <prop k="size" v="5" />
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0" />
          <prop k="size_unit" v="MM" />
          <prop k="vertical_anchor_point" v="1" />
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" name="4" type="marker">
        <layer class="SvgMarker" locked="0" pass="0">
          <prop k="angle" v="0" />
          <prop k="color" v="0,0,0,255" />
          <prop k="horizontal_anchor_point" v="1" />
          <prop k="name" v="symbol/poi_tower_communications.svg" />
          <prop k="offset" v="0,0" />
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0" />
          <prop k="offset_unit" v="MM" />
          <prop k="outline_color" v="0,0,0,255" />
          <prop k="outline_width" v="5.55112e-17" />
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0" />
          <prop k="outline_width_unit" v="MM" />
          <prop k="scale_method" v="diameter" />
          <prop k="size" v="5" />
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0" />
          <prop k="size_unit" v="MM" />
          <prop k="vertical_anchor_point" v="1" />
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" name="5" type="marker">
        <layer class="SvgMarker" locked="0" pass="0">
          <prop k="angle" v="0" />
          <prop k="color" v="0,0,0,255" />
          <prop k="horizontal_anchor_point" v="1" />
          <prop k="name" v="symbol/water_tower.svg" />
          <prop k="offset" v="0,0" />
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0" />
          <prop k="offset_unit" v="MM" />
          <prop k="outline_color" v="0,0,0,255" />
          <prop k="outline_width" v="5.55112e-17" />
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0" />
          <prop k="outline_width_unit" v="MM" />
          <prop k="scale_method" v="diameter" />
          <prop k="size" v="5" />
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0" />
          <prop k="size_unit" v="MM" />
          <prop k="vertical_anchor_point" v="1" />
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" name="6" type="marker">
        <layer class="SvgMarker" locked="0" pass="0">
          <prop k="angle" v="0" />
          <prop k="color" v="0,172,0,255" />
          <prop k="horizontal_anchor_point" v="1" />
          <prop k="name" v="gpsicons/tree.svg" />
          <prop k="offset" v="0,0" />
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0" />
          <prop k="offset_unit" v="MM" />
          <prop k="outline_color" v="255,255,255,255" />
          <prop k="outline_width" v="0" />
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0" />
          <prop k="outline_width_unit" v="MM" />
          <prop k="scale_method" v="diameter" />
          <prop k="size" v="5" />
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0" />
          <prop k="size_unit" v="MM" />
          <prop k="vertical_anchor_point" v="1" />
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" name="7" type="marker">
        <layer class="SvgMarker" locked="0" pass="0">
          <prop k="angle" v="0" />
          <prop k="color" v="0,0,0,255" />
          <prop k="horizontal_anchor_point" v="1" />
          <prop k="name" v="symbol/blue-marker.svg" />
          <prop k="offset" v="0,0" />
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0" />
          <prop k="offset_unit" v="MM" />
          <prop k="outline_color" v="0,0,0,255" />
          <prop k="outline_width" v="1" />
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0" />
          <prop k="outline_width_unit" v="MM" />
          <prop k="scale_method" v="diameter" />
          <prop k="size" v="5" />
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0" />
          <prop k="size_unit" v="MM" />
          <prop k="vertical_anchor_point" v="1" />
        </layer>
      </symbol>
      <symbol alpha="1" clip_to_extent="1" name="8" type="marker">
        <layer class="SimpleMarker" locked="0" pass="0">
          <prop k="angle" v="0" />
          <prop k="color" v="255,0,0,255" />
          <prop k="horizontal_anchor_point" v="1" />
          <prop k="joinstyle" v="bevel" />
          <prop k="name" v="circle" />
          <prop k="offset" v="0,0" />
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0" />
          <prop k="offset_unit" v="MM" />
          <prop k="outline_color" v="255,0,0,255" />
          <prop k="outline_style" v="solid" />
          <prop k="outline_width" v="0" />
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0" />
          <prop k="outline_width_unit" v="MM" />
          <prop k="scale_method" v="area" />
          <prop k="size" v="3" />
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0" />
          <prop k="size_unit" v="MM" />
          <prop k="vertical_anchor_point" v="1" />
        </layer>
      </symbol>
    </symbols>
    <source-symbol>
      <symbol alpha="1" clip_to_extent="1" name="0" type="marker">
        <layer class="SimpleMarker" locked="0" pass="0">
          <prop k="angle" v="0" />
          <prop k="color" v="86,59,184,255" />
          <prop k="horizontal_anchor_point" v="1" />
          <prop k="joinstyle" v="bevel" />
          <prop k="name" v="circle" />
          <prop k="offset" v="0,0" />
          <prop k="offset_map_unit_scale" v="0,0,0,0,0,0" />
          <prop k="offset_unit" v="MM" />
          <prop k="outline_color" v="0,0,0,255" />
          <prop k="outline_style" v="solid" />
          <prop k="outline_width" v="0" />
          <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0" />
          <prop k="outline_width_unit" v="MM" />
          <prop k="scale_method" v="area" />
          <prop k="size" v="2" />
          <prop k="size_map_unit_scale" v="0,0,0,0,0,0" />
          <prop k="size_unit" v="MM" />
          <prop k="vertical_anchor_point" v="1" />
        </layer>
      </symbol>
    </source-symbol>
    <colorramp name="[source]" type="gradient">
      <prop k="color1" v="247,251,255,255" />
      <prop k="color2" v="8,48,107,255" />
      <prop k="discrete" v="0" />
      <prop k="stops" v="0.13;222,235,247,255:0.26;198,219,239,255:0.39;158,202,225,255:0.52;107,174,214,255:0.65;66,146,198,255:0.78;33,113,181,255:0.9;8,81,156,255" />
    </colorramp>
    <invertedcolorramp value="0" />
    <rotation />
    <sizescale scalemethod="diameter" />
  </renderer-v2>
  <customproperties>
    <property key="embeddedWidgets/count" value="0" />
    <property key="labeling" value="pal" />
    <property key="labeling/addDirectionSymbol" value="false" />
    <property key="labeling/angleOffset" value="0" />
    <property key="labeling/blendMode" value="0" />
    <property key="labeling/bufferBlendMode" value="0" />
    <property key="labeling/bufferColorA" value="255" />
    <property key="labeling/bufferColorB" value="255" />
    <property key="labeling/bufferColorG" value="255" />
    <property key="labeling/bufferColorR" value="255" />
    <property key="labeling/bufferDraw" value="false" />
    <property key="labeling/bufferJoinStyle" value="64" />
    <property key="labeling/bufferNoFill" value="false" />
    <property key="labeling/bufferSize" value="1" />
    <property key="labeling/bufferSizeInMapUnits" value="false" />
    <property key="labeling/bufferSizeMapUnitMaxScale" value="0" />
    <property key="labeling/bufferSizeMapUnitMinScale" value="0" />
    <property key="labeling/bufferSizeMapUnitScale" value="0,0,0,0,0,0" />
    <property key="labeling/bufferTransp" value="0" />
    <property key="labeling/centroidInside" value="false" />
    <property key="labeling/centroidWhole" value="false" />
    <property key="labeling/decimals" value="3" />
    <property key="labeling/displayAll" value="true" />
    <property key="labeling/dist" value="0" />
    <property key="labeling/distInMapUnits" value="false" />
    <property key="labeling/distMapUnitMaxScale" value="0" />
    <property key="labeling/distMapUnitMinScale" value="0" />
    <property key="labeling/distMapUnitScale" value="0,0,0,0,0,0" />
    <property key="labeling/drawLabels" value="false" />
    <property key="labeling/enabled" value="false" />
    <property key="labeling/fieldName" value="" />
    <property key="labeling/fitInPolygonOnly" value="false" />
    <property key="labeling/fontBold" value="false" />
    <property key="labeling/fontCapitals" value="0" />
    <property key="labeling/fontFamily" value="Sans Serif" />
    <property key="labeling/fontItalic" value="false" />
    <property key="labeling/fontLetterSpacing" value="0" />
    <property key="labeling/fontLimitPixelSize" value="false" />
    <property key="labeling/fontMaxPixelSize" value="10000" />
    <property key="labeling/fontMinPixelSize" value="3" />
    <property key="labeling/fontSize" value="9" />
    <property key="labeling/fontSizeInMapUnits" value="false" />
    <property key="labeling/fontSizeMapUnitMaxScale" value="0" />
    <property key="labeling/fontSizeMapUnitMinScale" value="0" />
    <property key="labeling/fontSizeMapUnitScale" value="0,0,0,0,0,0" />
    <property key="labeling/fontStrikeout" value="false" />
    <property key="labeling/fontUnderline" value="false" />
    <property key="labeling/fontWeight" value="50" />
    <property key="labeling/fontWordSpacing" value="0" />
    <property key="labeling/formatNumbers" value="false" />
    <property key="labeling/isExpression" value="true" />
    <property key="labeling/labelOffsetInMapUnits" value="true" />
    <property key="labeling/labelOffsetMapUnitMaxScale" value="0" />
    <property key="labeling/labelOffsetMapUnitMinScale" value="0" />
    <property key="labeling/labelOffsetMapUnitScale" value="0,0,0,0,0,0" />
    <property key="labeling/labelPerPart" value="false" />
    <property key="labeling/leftDirectionSymbol" value="&lt;" />
    <property key="labeling/limitNumLabels" value="false" />
    <property key="labeling/maxCurvedCharAngleIn" value="20" />
    <property key="labeling/maxCurvedCharAngleOut" value="-20" />
    <property key="labeling/maxNumLabels" value="2000" />
    <property key="labeling/mergeLines" value="false" />
    <property key="labeling/minFeatureSize" value="0" />
    <property key="labeling/multilineAlign" value="0" />
    <property key="labeling/multilineHeight" value="1" />
    <property key="labeling/namedStyle" value="Normal" />
    <property key="labeling/obstacle" value="true" />
    <property key="labeling/obstacleFactor" value="1" />
    <property key="labeling/obstacleType" value="0" />
    <property key="labeling/offsetType" value="0" />
    <property key="labeling/placeDirectionSymbol" value="0" />
    <property key="labeling/placement" value="0" />
    <property key="labeling/placementFlags" value="0" />
    <property key="labeling/plussign" value="false" />
    <property key="labeling/predefinedPositionOrder" value="TR,TL,BR,BL,R,L,TSR,BSR" />
    <property key="labeling/preserveRotation" value="true" />
    <property key="labeling/previewBkgrdColor" value="#ffffff" />
    <property key="labeling/priority" value="5" />
    <property key="labeling/quadOffset" value="4" />
    <property key="labeling/repeatDistance" value="0" />
    <property key="labeling/repeatDistanceMapUnitMaxScale" value="0" />
    <property key="labeling/repeatDistanceMapUnitMinScale" value="0" />
    <property key="labeling/repeatDistanceMapUnitScale" value="0,0,0,0,0,0" />
    <property key="labeling/repeatDistanceUnit" value="1" />
    <property key="labeling/reverseDirectionSymbol" value="false" />
    <property key="labeling/rightDirectionSymbol" value="&gt;" />
    <property key="labeling/scaleMax" value="10000000" />
    <property key="labeling/scaleMin" value="1" />
    <property key="labeling/scaleVisibility" value="false" />
    <property key="labeling/shadowBlendMode" value="6" />
    <property key="labeling/shadowColorB" value="0" />
    <property key="labeling/shadowColorG" value="0" />
    <property key="labeling/shadowColorR" value="0" />
    <property key="labeling/shadowDraw" value="false" />
    <property key="labeling/shadowOffsetAngle" value="135" />
    <property key="labeling/shadowOffsetDist" value="1" />
    <property key="labeling/shadowOffsetGlobal" value="true" />
    <property key="labeling/shadowOffsetMapUnitMaxScale" value="0" />
    <property key="labeling/shadowOffsetMapUnitMinScale" value="0" />
    <property key="labeling/shadowOffsetMapUnitScale" value="0,0,0,0,0,0" />
    <property key="labeling/shadowOffsetUnits" value="1" />
    <property key="labeling/shadowRadius" value="1.5" />
    <property key="labeling/shadowRadiusAlphaOnly" value="false" />
    <property key="labeling/shadowRadiusMapUnitMaxScale" value="0" />
    <property key="labeling/shadowRadiusMapUnitMinScale" value="0" />
    <property key="labeling/shadowRadiusMapUnitScale" value="0,0,0,0,0,0" />
    <property key="labeling/shadowRadiusUnits" value="1" />
    <property key="labeling/shadowScale" value="100" />
    <property key="labeling/shadowTransparency" value="30" />
    <property key="labeling/shadowUnder" value="0" />
    <property key="labeling/shapeBlendMode" value="0" />
    <property key="labeling/shapeBorderColorA" value="255" />
    <property key="labeling/shapeBorderColorB" value="128" />
    <property key="labeling/shapeBorderColorG" value="128" />
    <property key="labeling/shapeBorderColorR" value="128" />
    <property key="labeling/shapeBorderWidth" value="0" />
    <property key="labeling/shapeBorderWidthMapUnitMaxScale" value="0" />
    <property key="labeling/shapeBorderWidthMapUnitMinScale" value="0" />
    <property key="labeling/shapeBorderWidthMapUnitScale" value="0,0,0,0,0,0" />
    <property key="labeling/shapeBorderWidthUnits" value="1" />
    <property key="labeling/shapeDraw" value="false" />
    <property key="labeling/shapeFillColorA" value="255" />
    <property key="labeling/shapeFillColorB" value="255" />
    <property key="labeling/shapeFillColorG" value="255" />
    <property key="labeling/shapeFillColorR" value="255" />
    <property key="labeling/shapeJoinStyle" value="64" />
    <property key="labeling/shapeOffsetMapUnitMaxScale" value="0" />
    <property key="labeling/shapeOffsetMapUnitMinScale" value="0" />
    <property key="labeling/shapeOffsetMapUnitScale" value="0,0,0,0,0,0" />
    <property key="labeling/shapeOffsetUnits" value="1" />
    <property key="labeling/shapeOffsetX" value="0" />
    <property key="labeling/shapeOffsetY" value="0" />
    <property key="labeling/shapeRadiiMapUnitMaxScale" value="0" />
    <property key="labeling/shapeRadiiMapUnitMinScale" value="0" />
    <property key="labeling/shapeRadiiMapUnitScale" value="0,0,0,0,0,0" />
    <property key="labeling/shapeRadiiUnits" value="1" />
    <property key="labeling/shapeRadiiX" value="0" />
    <property key="labeling/shapeRadiiY" value="0" />
    <property key="labeling/shapeRotation" value="0" />
    <property key="labeling/shapeRotationType" value="0" />
    <property key="labeling/shapeSVGFile" value="" />
    <property key="labeling/shapeSizeMapUnitMaxScale" value="0" />
    <property key="labeling/shapeSizeMapUnitMinScale" value="0" />
    <property key="labeling/shapeSizeMapUnitScale" value="0,0,0,0,0,0" />
    <property key="labeling/shapeSizeType" value="0" />
    <property key="labeling/shapeSizeUnits" value="1" />
    <property key="labeling/shapeSizeX" value="0" />
    <property key="labeling/shapeSizeY" value="0" />
    <property key="labeling/shapeTransparency" value="0" />
    <property key="labeling/shapeType" value="0" />
    <property key="labeling/substitutions" value="&lt;substitutions/&gt;" />
    <property key="labeling/textColorA" value="255" />
    <property key="labeling/textColorB" value="0" />
    <property key="labeling/textColorG" value="0" />
    <property key="labeling/textColorR" value="0" />
    <property key="labeling/textTransp" value="0" />
    <property key="labeling/upsidedownLabels" value="0" />
    <property key="labeling/useSubstitutions" value="false" />
    <property key="labeling/wrapChar" value="" />
    <property key="labeling/xOffset" value="0" />
    <property key="labeling/yOffset" value="0" />
    <property key="labeling/zIndex" value="0" />
    <property key="variableNames" />
    <property key="variableValues" />
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerTransparency>0</layerTransparency>
  <displayfield>ogc_fid</displayfield>
  <label>0</label>
  <labelattributes>
    <label fieldname="" text="Beschriftung" />
    <family fieldname="" name="Ubuntu" />
    <size fieldname="" units="pt" value="12" />
    <bold fieldname="" on="0" />
    <italic fieldname="" on="0" />
    <underline fieldname="" on="0" />
    <strikeout fieldname="" on="0" />
    <color blue="0" fieldname="" green="0" red="0" />
    <x fieldname="" />
    <y fieldname="" />
    <offset units="pt" x="0" xfieldname="" y="0" yfieldname="" />
    <angle auto="0" fieldname="" value="0" />
    <alignment fieldname="" value="center" />
    <buffercolor blue="255" fieldname="" green="255" red="255" />
    <buffersize fieldname="" units="pt" value="1" />
    <bufferenabled fieldname="" on="" />
    <multilineenabled fieldname="" on="" />
    <selectedonly on="" />
  </labelattributes>
  <SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Histogram" sizeLegend="0">
    <DiagramCategory angleOffset="1440" backgroundAlpha="255" backgroundColor="#ffffff" barWidth="5" diagramOrientation="Up" enabled="0" height="15" labelPlacementMethod="XHeight" lineSizeScale="0,0,0,0,0,0" lineSizeType="MM" maxScaleDenominator="1e+08" minScaleDenominator="0" minimumSize="0" penAlpha="255" penColor="#000000" penWidth="0" scaleBasedVisibility="0" scaleDependency="Area" sizeScale="0,0,0,0,0,0" sizeType="MM" transparency="0" width="15">
      <fontProperties description="Cantarell,11,-1,5,50,0,0,0,0,0" style="" />
    </DiagramCategory>
    <symbol alpha="1" clip_to_extent="1" name="sizeSymbol" type="marker">
      <layer class="SimpleMarker" locked="0" pass="0">
        <prop k="angle" v="0" />
        <prop k="color" v="255,0,0,255" />
        <prop k="horizontal_anchor_point" v="1" />
        <prop k="joinstyle" v="bevel" />
        <prop k="name" v="circle" />
        <prop k="offset" v="0,0" />
        <prop k="offset_map_unit_scale" v="0,0,0,0,0,0" />
        <prop k="offset_unit" v="MM" />
        <prop k="outline_color" v="0,0,0,255" />
        <prop k="outline_style" v="solid" />
        <prop k="outline_width" v="0" />
        <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0" />
        <prop k="outline_width_unit" v="MM" />
        <prop k="scale_method" v="diameter" />
        <prop k="size" v="2" />
        <prop k="size_map_unit_scale" v="0,0,0,0,0,0" />
        <prop k="size_unit" v="MM" />
        <prop k="vertical_anchor_point" v="1" />
      </layer>
    </symbol>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings dist="0" linePlacementFlags="10" obstacle="0" placement="0" priority="0" showAll="1" showColumn="-1" xPosColumn="-1" yPosColumn="-1" zIndex="0" />
  <annotationform />
  <aliases>
    <alias field="ogc_fid" index="0" name="" />
    <alias field="t_ili_tid" index="1" name="" />
    <alias field="punktelement_von" index="2" name="" />
    <alias field="art" index="3" name="" />
    <alias field="art_txt" index="4" name="" />
    <alias field="qualitaet_txt" index="5" name="" />
  </aliases>
  <excludeAttributesWMS />
  <excludeAttributesWFS />
  <attributeactions default="-1" />
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="" sortOrder="0">
    <columns>
      <column hidden="0" name="ogc_fid" type="field" width="-1" />
      <column hidden="0" name="t_ili_tid" type="field" width="-1" />
      <column hidden="0" name="punktelement_von" type="field" width="-1" />
      <column hidden="0" name="art" type="field" width="-1" />
      <column hidden="0" name="art_txt" type="field" width="-1" />
      <column hidden="0" name="qualitaet_txt" type="field" width="-1" />
      <column hidden="1" type="actions" width="-1" />
    </columns>
  </attributetableconfig>
  <editform />
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
  <widgets />
  <conditionalstyles>
    <rowstyles />
    <fieldstyles />
  </conditionalstyles>
  <defaults>
    <default expression="" field="ogc_fid" />
    <default expression="" field="t_ili_tid" />
    <default expression="" field="punktelement_von" />
    <default expression="" field="art" />
    <default expression="" field="art_txt" />
    <default expression="" field="qualitaet_txt" />
  </defaults>
  <previewExpression />
  <layerGeometryType>0</layerGeometryType>
<labeling type="simple">
  <settings>
    <text-style blendMode="0" fieldName="" fontCapitals="0" fontFamily="Ubuntu" fontItalic="0" fontLetterSpacing="0" fontSize="12" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontSizeUnit="Point" fontStrikeout="0" fontUnderline="0" fontWeight="50" fontWordSpacing="0" isExpression="0" multilineHeight="1" namedStyle="Book" previewBkgrdColor="#ffffff" textColor="0,0,0" textOpacity="1" useSubstitutions="0">
      <text-buffer bufferBlendMode="0" bufferColor="255,255,255" bufferDraw="1" bufferJoinStyle="128" bufferNoFill="1" bufferOpacity="1" bufferSize="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSizeUnits="Point" />
      <background shapeBlendMode="0" shapeBorderColor="128,128,128,255" shapeBorderWidth="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthUnit="MM" shapeDraw="0" shapeFillColor="255,255,255,255" shapeJoinStyle="64" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetUnit="MM" shapeOffsetX="0" shapeOffsetY="0" shapeOpacity="1" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeRadiiX="0" shapeRadiiY="0" shapeRotation="0" shapeRotationType="0" shapeSVGFile="" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeSizeUnit="MM" shapeSizeX="0" shapeSizeY="0" shapeType="0" />
      <shadow shadowBlendMode="6" shadowColor="0,0,0,255" shadowDraw="0" shadowOffsetAngle="135" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetUnit="MM" shadowOpacity="0.7" shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowScale="100" shadowUnder="0" />
      <substitutions />
    </text-style>
    <text-format addDirectionSymbol="0" autoWrapLength="0" decimals="3" formatNumbers="0" leftDirectionSymbol="&lt;" multilineAlign="3" placeDirectionSymbol="0" plussign="0" reverseDirectionSymbol="0" rightDirectionSymbol="&gt;" useMaxLineLengthForAutoWrap="1" wrapChar="" />
    <placement centroidInside="0" centroidWhole="0" dist="0" distMapUnitScale="3x:0,0,0,0,0,0" distUnits="MM" fitInPolygonOnly="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleIn="25" maxCurvedCharAngleOut="-25" offsetType="0" offsetUnits="MM" placement="1" placementFlags="10" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" preserveRotation="1" priority="5" quadOffset="4" repeatDistance="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" repeatDistanceUnits="MM" rotationAngle="0" xOffset="0" yOffset="0" />
    <rendering displayAll="1" drawLabels="1" fontLimitPixelSize="0" fontMaxPixelSize="10000" fontMinPixelSize="3" labelPerPart="0" limitNumLabels="0" maxNumLabels="2000" mergeLines="0" minFeatureSize="0" obstacle="1" obstacleFactor="1" obstacleType="0" scaleMax="0" scaleMin="0" scaleVisibility="0" upsidedownLabels="0" zIndex="0" />
    <dd_properties>
      <Option type="Map">
        <Option name="name" type="QString" value="" />
        <Option name="properties" />
        <Option name="type" type="QString" value="collection" />
      </Option>
    </dd_properties>
  </settings>
  </labeling>
  </qgis>