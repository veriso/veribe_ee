<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="2.18.16" simplifyAlgorithm="0" minimumScale="0" maximumScale="1e+08" simplifyDrawingHints="1" minLabelScale="0" maxLabelScale="1e+08" simplifyDrawingTol="1" readOnly="0" simplifyMaxScale="1" hasScaleBasedVisibilityFlag="0" simplifyLocal="1" scaleBasedLabelVisibilityFlag="0">
 <edittypes>
  <edittype widgetv2type="TextEdit" name="ogc_fid">
   <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
  </edittype>
  <edittype widgetv2type="TextEdit" name="t_ili_tid">
   <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
  </edittype>
  <edittype widgetv2type="TextEdit" name="entstehung">
   <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
  </edittype>
  <edittype widgetv2type="TextEdit" name="gemeindegrenze_von">
   <widgetv2config IsMultiline="0" fieldEditable="1" constraint="" UseHtml="0" labelOnTop="0" constraintDescription="" notNull="0"/>
  </edittype>
 </edittypes>
 <renderer-v2 forceraster="0" symbollevels="0" type="singleSymbol" enableorderby="0">
  <symbols>
   <symbol alpha="1" clip_to_extent="1" type="fill" name="0">
    <layer pass="0" class="SimpleFill" locked="0">
     <prop k="border_width_map_unit_scale" v="0,0,0,0,0,0"/>
     <prop k="color" v="255,255,127,255"/>
     <prop k="joinstyle" v="bevel"/>
     <prop k="offset" v="0,0"/>
     <prop k="offset_map_unit_scale" v="0,0,0,0,0,0"/>
     <prop k="offset_unit" v="MM"/>
     <prop k="outline_color" v="255,0,0,255"/>
     <prop k="outline_style" v="solid"/>
     <prop k="outline_width" v="0.71"/>
     <prop k="outline_width_unit" v="MM"/>
     <prop k="style" v="no"/>
    </layer>
   </symbol>
  </symbols>
  <rotation/>
  <sizescale scalemethod="diameter"/>
 </renderer-v2>
 <labeling type="simple"/>
 <customproperties/>
 <blendMode>0</blendMode>
 <featureBlendMode>0</featureBlendMode>
 <layerTransparency>0</layerTransparency>
 <displayfield>ogc_fid</displayfield>
 <label>0</label>
 <labelattributes>
  <label fieldname="" text="Beschriftung"/>
  <family fieldname="" name="Ubuntu"/>
  <size fieldname="" units="pt" value="12"/>
  <bold fieldname="" on="0"/>
  <italic fieldname="" on="0"/>
  <underline fieldname="" on="0"/>
  <strikeout fieldname="" on="0"/>
  <color fieldname="" red="0" blue="0" green="0"/>
  <x fieldname=""/>
  <y fieldname=""/>
  <offset x="0" y="0" units="pt" yfieldname="" xfieldname=""/>
  <angle fieldname="" value="0" auto="0"/>
  <alignment fieldname="" value="center"/>
  <buffercolor fieldname="" red="255" blue="255" green="255"/>
  <buffersize fieldname="" units="pt" value="1"/>
  <bufferenabled fieldname="" on=""/>
  <multilineenabled fieldname="" on=""/>
  <selectedonly on=""/>
 </labelattributes>
 <annotationform></annotationform>
 <aliases>
  <alias field="ogc_fid" index="0" name=""/>
  <alias field="t_ili_tid" index="1" name=""/>
  <alias field="entstehung" index="2" name=""/>
  <alias field="gemeindegrenze_von" index="3" name=""/>
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
  <default field="t_ili_tid" expression=""/>
  <default field="entstehung" expression=""/>
  <default field="gemeindegrenze_von" expression=""/>
 </defaults>
 <previewExpression></previewExpression>
 <layerGeometryType>2</layerGeometryType>
</qgis>
