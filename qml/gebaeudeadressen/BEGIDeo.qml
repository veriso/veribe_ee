<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="2.18.16" simplifyAlgorithm="0" minimumScale="0" maximumScale="1e+08" simplifyDrawingHints="1" minLabelScale="1" maxLabelScale="1e+08" simplifyDrawingTol="1" readOnly="0" simplifyMaxScale="1" hasScaleBasedVisibilityFlag="0" simplifyLocal="1" scaleBasedLabelVisibilityFlag="0">
 <edittypes>
  <edittype widgetv2type="TextEdit" name="ogc_fid">
   <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
  </edittype>
  <edittype widgetv2type="TextEdit" name="tid">
   <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
  </edittype>
  <edittype widgetv2type="TextEdit" name="objektnummer_von">
   <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
  </edittype>
  <edittype widgetv2type="TextEdit" name="nummer">
   <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
  </edittype>
  <edittype widgetv2type="TextEdit" name="gwr_egid">
   <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
  </edittype>
  <edittype widgetv2type="TextEdit" name="nbident">
   <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
  </edittype>
  <edittype widgetv2type="TextEdit" name="ori">
   <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
  </edittype>
  <edittype widgetv2type="TextEdit" name="hali">
   <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
  </edittype>
  <edittype widgetv2type="TextEdit" name="hali_txt">
   <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
  </edittype>
  <edittype widgetv2type="TextEdit" name="vali">
   <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
  </edittype>
  <edittype widgetv2type="TextEdit" name="vali_txt">
   <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
  </edittype>
  <edittype widgetv2type="TextEdit" name="groesse">
   <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
  </edittype>
  <edittype widgetv2type="TextEdit" name="groesse_txt">
   <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
  </edittype>
  <edittype widgetv2type="TextEdit" name="gem_bfs">
   <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
  </edittype>
  <edittype widgetv2type="TextEdit" name="los">
   <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
  </edittype>
  <edittype widgetv2type="TextEdit" name="lieferdatum">
   <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
  </edittype>
 </edittypes>
 <renderer-v2 forceraster="0" symbollevels="0" type="singleSymbol" enableorderby="0">
  <symbols>
   <symbol alpha="1" clip_to_extent="1" type="marker" name="0">
    <layer pass="0" class="SimpleMarker" locked="0">
     <prop k="angle" v="0"/>
     <prop k="color" v="255,0,0,255"/>
     <prop k="horizontal_anchor_point" v="1"/>
     <prop k="joinstyle" v="bevel"/>
     <prop k="name" v="circle"/>
     <prop k="offset" v="0,0"/>
     <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
     <prop k="offset_unit" v="MM"/>
     <prop k="outline_color" v="255,0,0,255"/>
     <prop k="outline_style" v="solid"/>
     <prop k="outline_width" v="0"/>
     <prop k="outline_width_map_unit_scale" v="0,0,0,0,0,0"/>
     <prop k="outline_width_unit" v="MM"/>
     <prop k="scale_method" v="diameter"/>
     <prop k="size" v="0.75"/>
     <prop k="size_map_unit_scale" v="0,0,0,0,0,0"/>
     <prop k="size_unit" v="MM"/>
     <prop k="vertical_anchor_point" v="1"/>
    </layer>
   </symbol>
  </symbols>
  <rotation/>
  <sizescale scalemethod="diameter"/>
 </renderer-v2>
 <labeling type="simple"/>
 <customproperties>
  <property key="labeling" value="pal"/>
  <property key="labeling/addDirectionSymbol" value="false"/>
  <property key="labeling/bufferColorB" value="255"/>
  <property key="labeling/bufferColorG" value="255"/>
  <property key="labeling/bufferColorR" value="255"/>
  <property key="labeling/bufferSize" value="2"/>
  <property key="labeling/decimals" value="0"/>
  <property key="labeling/dist" value="0"/>
  <property key="labeling/distInMapUnits" value="false"/>
  <property key="labeling/enabled" value="true"/>
  <property key="labeling/fieldName" value="'BE-GID:  ' || &quot;nummer&quot;  || '\nEGID: '|| CASE WHEN (&quot;gwr_egid&quot; IS NULL) THEN '-' ELSE  &quot;gwr_egid&quot; END"/>
  <property key="labeling/fontFamily" value="Cantarell"/>
  <property key="labeling/fontItalic" value="false"/>
  <property key="labeling/fontSize" value="10"/>
  <property key="labeling/fontSizeInMapUnits" value="false"/>
  <property key="labeling/fontStrikeout" value="false"/>
  <property key="labeling/fontUnderline" value="false"/>
  <property key="labeling/fontWeight" value="50"/>
  <property key="labeling/formatNumbers" value="false"/>
  <property key="labeling/isExpression" value="true"/>
  <property key="labeling/labelPerPart" value="false"/>
  <property key="labeling/mergeLines" value="false"/>
  <property key="labeling/minFeatureSize" value="0"/>
  <property key="labeling/obstacle" value="true"/>
  <property key="labeling/placement" value="0"/>
  <property key="labeling/placementFlags" value="0"/>
  <property key="labeling/plussign" value="true"/>
  <property key="labeling/priority" value="5"/>
  <property key="labeling/scaleMax" value="5000"/>
  <property key="labeling/scaleMin" value="1"/>
  <property key="labeling/textColorB" value="0"/>
  <property key="labeling/textColorG" value="70"/>
  <property key="labeling/textColorR" value="212"/>
  <property key="labeling/wrapChar" value=""/>
 </customproperties>
 <blendMode>0</blendMode>
 <featureBlendMode>0</featureBlendMode>
 <layerTransparency>0</layerTransparency>
 <displayfield>ogc_fid</displayfield>
 <label>0</label>
 <labelfield>nummer</labelfield>
 <labelattributes>
  <label fieldname="nummer" text="Beschriftung"/>
  <family fieldname="" name="Cantarell"/>
  <size fieldname="" units="pt" value="10"/>
  <bold fieldname="" on="0"/>
  <italic fieldname="" on="0"/>
  <underline fieldname="" on="0"/>
  <strikeout fieldname="" on="0"/>
  <color fieldname="" red="255" blue="0" green="85"/>
  <x fieldname=""/>
  <y fieldname=""/>
  <offset x="5" y="0" units="pt" yfieldname="" xfieldname=""/>
  <angle fieldname="" value="0" auto="0"/>
  <alignment fieldname="" value="right"/>
  <buffercolor fieldname="" red="255" blue="255" green="255"/>
  <buffersize fieldname="" units="pt" value="4"/>
  <bufferenabled fieldname="" on="1"/>
  <multilineenabled fieldname="" on=""/>
  <selectedonly on=""/>
 </labelattributes>
 <annotationform></annotationform>
 <aliases>
  <alias field="ogc_fid" index="0" name=""/>
  <alias field="tid" index="1" name=""/>
  <alias field="objektnummer_von" index="2" name=""/>
  <alias field="nummer" index="3" name=""/>
  <alias field="gwr_egid" index="4" name=""/>
  <alias field="nbident" index="5" name=""/>
  <alias field="ori" index="6" name=""/>
  <alias field="hali" index="7" name=""/>
  <alias field="hali_txt" index="8" name=""/>
  <alias field="vali" index="9" name=""/>
  <alias field="vali_txt" index="10" name=""/>
  <alias field="groesse" index="11" name=""/>
  <alias field="groesse_txt" index="12" name=""/>
  <alias field="gem_bfs" index="13" name=""/>
  <alias field="los" index="14" name=""/>
  <alias field="lieferdatum" index="15" name=""/>
 </aliases>
 <excludeAttributesWMS/>
 <excludeAttributesWFS/>
 <attributeactions default="-1"/>
 <attributetableconfig actionWidgetStyle="dropDown" sortExpression="" sortOrder="0">
  <columns/>
 </attributetableconfig>
 <editform></editform>
 <editforminit/>
 <editforminitcodesource>0</editforminitcodesource>
 <editforminitfilepath></editforminitfilepath>
 <editforminitcode><![CDATA[]]></editforminitcode>
 <featformsuppress>0</featformsuppress>
 <editorlayout>generatedlayout</editorlayout>
 <widgets/>
 <conditionalstyles>
  <rowstyles/>
  <fieldstyles/>
 </conditionalstyles>
 <defaults>
  <default field="ogc_fid" expression=""/>
  <default field="tid" expression=""/>
  <default field="objektnummer_von" expression=""/>
  <default field="nummer" expression=""/>
  <default field="gwr_egid" expression=""/>
  <default field="nbident" expression=""/>
  <default field="ori" expression=""/>
  <default field="hali" expression=""/>
  <default field="hali_txt" expression=""/>
  <default field="vali" expression=""/>
  <default field="vali_txt" expression=""/>
  <default field="groesse" expression=""/>
  <default field="groesse_txt" expression=""/>
  <default field="gem_bfs" expression=""/>
  <default field="los" expression=""/>
  <default field="lieferdatum" expression=""/>
 </defaults>
 <previewExpression></previewExpression>
 <layerGeometryType>0</layerGeometryType>
</qgis>
