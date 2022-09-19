<qgis labelsEnabled="1" simplifyDrawingHints="1" maxScale="0" minScale="100000000" simplifyLocal="1" hasScaleBasedVisibilityFlag="0" simplifyMaxScale="1" styleCategories="AllStyleCategories" simplifyAlgorithm="0" symbologyReferenceScale="-1" readOnly="0" simplifyDrawingTol="1" version="3.22.10-Bia&#322;owie&#380;a">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal mode="0" startField="" endExpression="" durationUnit="min" startExpression="" fixedDuration="0" durationField="" accumulate="0" endField="" limitMode="0" enabled="0">
    <fixedRange>
      <start />
      <end />
    </fixedRange>
  </temporal>
  <renderer-v2 type="singleSymbol" forceraster="0" referencescale="-1" symbollevels="0" enableorderby="0">
    <symbols>
      <symbol type="fill" alpha="1" clip_to_extent="1" name="0" force_rhr="0">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name" />
            <Option name="properties" />
            <Option type="QString" value="collection" name="type" />
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" pass="0" enabled="1" locked="0">
          <Option type="Map">
            <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" />
            <Option type="QString" value="255,255,127,255" name="color" />
            <Option type="QString" value="bevel" name="joinstyle" />
            <Option type="QString" value="0,0" name="offset" />
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" />
            <Option type="QString" value="MM" name="offset_unit" />
            <Option type="QString" value="255,0,0,255" name="outline_color" />
            <Option type="QString" value="solid" name="outline_style" />
            <Option type="QString" value="0.71" name="outline_width" />
            <Option type="QString" value="MM" name="outline_width_unit" />
            <Option type="QString" value="no" name="style" />
          </Option>
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale" />
          <prop v="255,255,127,255" k="color" />
          <prop v="bevel" k="joinstyle" />
          <prop v="0,0" k="offset" />
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale" />
          <prop v="MM" k="offset_unit" />
          <prop v="255,0,0,255" k="outline_color" />
          <prop v="solid" k="outline_style" />
          <prop v="0.71" k="outline_width" />
          <prop v="MM" k="outline_width_unit" />
          <prop v="no" k="style" />
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name" />
              <Option name="properties" />
              <Option type="QString" value="collection" name="type" />
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <rotation />
    <sizescale />
  </renderer-v2>
  <customproperties>
    <Option />
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
    <activeChecks />
    <checkConfiguration />
  </geometryOptions>
  <legend type="default-vector" showLabelLegend="0" />
  <referencedLayers />
  <fieldConfiguration>
    <field configurationFlags="None" name="ogc_fid">
      <editWidget type="">
        <config>
          <Option />
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="t_ili_tid">
      <editWidget type="">
        <config>
          <Option />
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="entstehung">
      <editWidget type="">
        <config>
          <Option />
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="gemeindegrenze_von">
      <editWidget type="">
        <config>
          <Option />
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="ogc_fid" index="0" name="" />
    <alias field="t_ili_tid" index="1" name="" />
    <alias field="entstehung" index="2" name="Origine" />
    <alias field="gemeindegrenze_von" index="3" name="Limite_commune_de" />
  </aliases>
  <defaults>
    <default field="ogc_fid" expression="" applyOnUpdate="0" />
    <default field="t_ili_tid" expression="" applyOnUpdate="0" />
    <default field="entstehung" expression="" applyOnUpdate="0" />
    <default field="gemeindegrenze_von" expression="" applyOnUpdate="0" />
  </defaults>
  <constraints>
    <constraint field="ogc_fid" exp_strength="0" constraints="3" unique_strength="1" notnull_strength="1" />
    <constraint field="t_ili_tid" exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0" />
    <constraint field="entstehung" exp_strength="0" constraints="1" unique_strength="0" notnull_strength="1" />
    <constraint field="gemeindegrenze_von" exp_strength="0" constraints="1" unique_strength="0" notnull_strength="1" />
  </constraints>
  <constraintExpressions>
    <constraint field="ogc_fid" exp="" desc="" />
    <constraint field="t_ili_tid" exp="" desc="" />
    <constraint field="entstehung" exp="" desc="" />
    <constraint field="gemeindegrenze_von" exp="" desc="" />
  </constraintExpressions>
  <expressionfields />
  <attributeactions />
  <attributetableconfig sortOrder="0" actionWidgetStyle="dropDown" sortExpression="">
    <columns />
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
  <editforminitcode />
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable />
  <labelOnTop />
  <reuseLastValue />
  <dataDefinedFieldProperties />
  <widgets />
  <previewExpression>"ogc_fid"</previewExpression>
  <mapTip />
  <layerGeometryType>2</layerGeometryType>
</qgis>