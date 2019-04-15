<qgis hasScaleBasedVisibilityFlag="0" maximumScale="1e+08" minimumScale="0" version="1.8.0-Lisboa">
  <transparencyLevelInt>255</transparencyLevelInt>
  <renderer-v2 symbollevels="0" type="singleSymbol">
    <symbols>
      <symbol alpha="1" name="0" outputUnit="MM" type="marker">
        <layer class="SimpleMarker" locked="0" pass="0">
          <prop k="angle" v="0" />
          <prop k="color" v="255,85,28,255" />
          <prop k="color_border" v="255,0,127,255" />
          <prop k="name" v="circle" />
          <prop k="offset" v="0,0" />
          <prop k="size" v="3" />
        </layer>
      </symbol>
    </symbols>
    <rotation field="" />
    <sizescale field="" />
  </renderer-v2>
  <customproperties />
  <displayfield>gid</displayfield>
  <label>0</label>
  <labelattributes>
    <label fieldname="" text="Beschriftung" />
    <family fieldname="" name="Cantarell" />
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
  <edittypes>
    <edittype name="GEMEINDEN" type="0" />
    <edittype name="OBJECTID" type="0" />
    <edittype name="PKT_NR" type="0" />
    <edittype name="URL" type="0" />
    <edittype name="X_KOORD" type="0" />
    <edittype name="Y_KOORD" type="0" />
    <edittype name="gemeinden" type="0" />
    <edittype name="gid" type="0" />
    <edittype name="objectid" type="0" />
    <edittype name="pkt_nr" type="0" />
    <edittype name="url" type="0" />
    <edittype name="x_koord" type="0" />
    <edittype name="y_koord" type="0" />
  </edittypes>
  <editform />
  <editforminit />
  <annotationform />
  <attributeactions>
    <actionsetting action="[% &quot;url&quot; %]" capture="0" name="Websuche nach dem Attributwert durchf&#252;hren" type="5" />
    <actionsetting action="http://www.google.it/?q=[% &quot;ATTRIBUTE&quot; %]" capture="0" name="Websuche nach dem Attributwert durchf&#252;hren" type="5" />
    <actionsetting action="echo &quot;[% &quot;MY_FIELD&quot; %]&quot;" capture="1" name="Attributwert anzeigen" type="0" />
    <actionsetting action="ogr2ogr -f &quot;ESRI Shapefile&quot; &quot;[% &quot;OUTPUT_PATH&quot; %]&quot; &quot;[% &quot;INPUT_FILE&quot; %]&quot;" capture="1" name="Eine Applikation ausf&#252;hren" type="0" />
    <actionsetting action="QtGui.QMessageBox.information(None, &quot;Feature id&quot;, &quot;feature id is [% $id %]&quot;)" capture="0" name="Objektkennung bestimmen" type="1" />
    <actionsetting action="QtGui.QMessageBox.information(None, &quot;Current field's value&quot;, &quot;[% $currentfield %]&quot;)" capture="0" name="Gew&#228;hlter Feldwert (Werkzeug &quot;Objekte abfragen&quot;)" type="1" />
    <actionsetting action="QtGui.QMessageBox.information(None, &quot;Clicked coords&quot;, &quot;layer: [% $layerid %]\ncoords: ([% $clickx %],[% $clickx %])&quot;)" capture="0" name="Angeklickte Koordinate (Werkzeug &quot;Objektaktion ausf&#252;hren&quot;)" type="1" />
    <actionsetting action="[% &quot;PATH&quot; %]" capture="0" name="Datei &#246;ffnen" type="5" />
  </attributeactions>
  <overlay display="false" type="diagram">
    <renderer item_interpretation="linear">
      <diagramitem size="0" value="0" />
      <diagramitem size="0" value="0" />
    </renderer>
    <factory sizeUnits="MM" type="Pie">
      <wellknownname>Pie</wellknownname>
      <classificationfield>0</classificationfield>
    </factory>
    <scalingAttribute>0</scalingAttribute>
  </overlay>
<labeling type="simple">
  <settings>
    <text-style blendMode="0" fieldName="" fontCapitals="0" fontFamily="Cantarell" fontItalic="0" fontLetterSpacing="0" fontSize="12" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontSizeUnit="Point" fontStrikeout="0" fontUnderline="0" fontWeight="50" fontWordSpacing="0" isExpression="0" multilineHeight="1" namedStyle="Book" previewBkgrdColor="#ffffff" textColor="0,0,0" textOpacity="1" useSubstitutions="0">
      <text-buffer bufferBlendMode="0" bufferColor="255,255,255" bufferDraw="1" bufferJoinStyle="128" bufferNoFill="1" bufferOpacity="1" bufferSize="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSizeUnits="Point" />
      <background shapeBlendMode="0" shapeBorderColor="128,128,128,255" shapeBorderWidth="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthUnit="MM" shapeDraw="0" shapeFillColor="255,255,255,255" shapeJoinStyle="64" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetUnit="MM" shapeOffsetX="0" shapeOffsetY="0" shapeOpacity="1" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeRadiiX="0" shapeRadiiY="0" shapeRotation="0" shapeRotationType="0" shapeSVGFile="" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeSizeUnit="MM" shapeSizeX="0" shapeSizeY="0" shapeType="0" />
      <shadow shadowBlendMode="6" shadowColor="0,0,0,255" shadowDraw="0" shadowOffsetAngle="135" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetUnit="MM" shadowOpacity="0.7" shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowScale="100" shadowUnder="0" />
      <substitutions />
    </text-style>
    <text-format addDirectionSymbol="0" autoWrapLength="0" decimals="3" formatNumbers="0" leftDirectionSymbol="&lt;" multilineAlign="3" placeDirectionSymbol="0" plussign="0" reverseDirectionSymbol="0" rightDirectionSymbol="&gt;" useMaxLineLengthForAutoWrap="1" wrapChar="" />
    <placement centroidInside="0" centroidWhole="0" dist="0" distMapUnitScale="3x:0,0,0,0,0,0" distUnits="MM" fitInPolygonOnly="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" maxCurvedCharAngleIn="25" maxCurvedCharAngleOut="-25" offsetType="0" offsetUnits="MM" placement="1" placementFlags="10" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" preserveRotation="1" priority="5" quadOffset="4" repeatDistance="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" repeatDistanceUnits="MM" rotationAngle="0" xOffset="0" yOffset="0" />
    <rendering displayAll="0" drawLabels="1" fontLimitPixelSize="0" fontMaxPixelSize="10000" fontMinPixelSize="3" labelPerPart="0" limitNumLabels="0" maxNumLabels="2000" mergeLines="0" minFeatureSize="0" obstacle="1" obstacleFactor="1" obstacleType="0" scaleMax="0" scaleMin="0" scaleVisibility="0" upsidedownLabels="0" zIndex="0" />
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