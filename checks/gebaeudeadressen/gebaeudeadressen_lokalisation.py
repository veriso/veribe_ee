# -*- coding: utf-8 -*-
from qgis.PyQt.QtCore import *
from qgis.PyQt.QtGui import *
from qgis.PyQt.QtWidgets import *
from qgis.core import *
from qgis.gui import *

import sys
import traceback

from veriso.modules.complexcheck_base import ComplexCheckBase


def _translate(context, text, disambig):
    return QApplication.translate(context, text, disambig)


class ComplexCheck(ComplexCheckBase):

    def __init__(self, iface):
        super(ComplexCheck, self).__init__(iface)
        self.iface = iface
        self.canvas = self.iface.mapCanvas()

        self.root = QgsProject.instance().layerTreeRoot()

    def run(self):
        self.settings = QSettings("CatAIS", "VeriSO")
        project_id = self.settings.value("project/id")
        epsg = self.settings.value("project/epsg")

        locale = QSettings().value('locale/userLocale')[0:2]

        if not project_id:
            self.iface.messageBar().pushMessage(
                "Error", _translate("VeriSO_EE_gebaeudeadressen_lokalisation",
                                    "project_id not set", None),
                level=Qgis.Critical, duration=5)
            return

        QApplication.setOverrideCursor(Qt.WaitCursor)
        try:
            group = _translate("VeriSO_EE_gebaeudeadressen_lokalisation",
                               "Gebaeudeadressen - Lokalisationstest", None)
            group += " (" + str(project_id) + ")"

            # Layernamen hier definieren:
            lokalisation = _translate("VeriSO_EE_Geb_LokTest",
                                      "Lokalisation Lokalisationstest", None)
            strassenstueck_geometrie = _translate(
                "VeriSO_EE_Geb_LokTest",
                "Strassenstueck (geometrie) Lokalisationstest", None)
            strassenstueck_anfangspunkt = _translate(
                "VeriSO_EE_Geb_LokTest",
                "Strassenstueck (anfangspunkt) Lokalisationstest", None)
            benanntesgebiet = _translate(
                "VeriSO_EE_Geb_LokTest", "Benanntes Gebiet Lokalisationstest",
                None)
            gebaeudeeingang = _translate(
                "VeriSO_EE_Geb_LokTest", "Gebaeudeeingang Lokalisationstest",
                None)
            shortestline = _translate(
                "VeriSO_EE_Geb_LokTest", "Kuerzeste Linie Lokalisationstest",
                None)
            hausnummerpos = _translate(
                "VeriSO_EE_Geb_LokTest", "HausnummerPos Lokalisationstest",
                None)
            lokalisationsname = _translate(
                "VeriSO_EE_Geb_LokTest", "LokalisationsName", None)

            vlayer_lokalisation = self.getVectorLayerByName(lokalisation)
            if not vlayer_lokalisation:
                layer = {}
                layer["type"] = "postgres"
                layer["title"] = _translate(
                    "VeriSO_EE_gebaeudeadressen_lokalisation",
                    "Lokalisation Lokalisationstest", None)
                layer["featuretype"] = "gebaeudeadressen_lokalisation"
                layer["key"] = "ogc_fid"
                layer["sql"] = "ogc_fid = '-1'"
                layer["readonly"] = True
                layer["group"] = group
                vlayer_lokalisation = self.layer_loader.load(layer)

            vlayer_strassenstueck_geometrie = self.getVectorLayerByName(strassenstueck_geometrie)
            if not vlayer_strassenstueck_geometrie:
                layer = {}
                layer["type"] = "postgres"
                layer["title"] = _translate(
                    "VeriSO_EE_gebaeudeadressen_lokalisation",
                    "Strassenstueck (geometrie) Lokalisationstest", None)
                layer["featuretype"] = "gebaeudeadressen_strassenstueck"
                layer["geom"] = "geometrie"
                layer["key"] = "ogc_fid"
                layer["sql"] = "strassenstueck_von = '-1'"
                layer["readonly"] = True
                layer["group"] = group
                layer["style"] = "gebaeudeadressen/strassenachsen_rot.qml"
                vlayer_strassenstueck_geometrie = self.layer_loader.load(layer)

            vlayer_strassenstueck_anfangspunkt = self.getVectorLayerByName(
                strassenstueck_anfangspunkt)
            if not vlayer_strassenstueck_anfangspunkt:
                layer = {}
                layer["type"] = "postgres"
                layer["title"] = _translate(
                    "VeriSO_EE_gebaeudeadressen_lokalisation",
                    "Strassenstueck (anfangspunkt) Lokalisationstest", None)
                layer["featuretype"] = "gebaeudeadressen_strassenstueck"
                layer["geom"] = "anfangspunkt"
                layer["key"] = "ogc_fid"
                layer["sql"] = "strassenstueck_von = '-1'"
                layer["readonly"] = True
                layer["group"] = group
                layer["style"] = "gebaeudeadressen/anfangspunkt_rot.qml"
                vlayer_strassenstueck_anfangspunkt = self.layer_loader.load(
                    layer)

            vlayer_benanntesgebiet = self.getVectorLayerByName(benanntesgebiet)
            if not vlayer_benanntesgebiet:
                layer = {}
                layer["type"] = "postgres"
                layer["title"] = _translate(
                    "VeriSO_EE_gebaeudeadressen_lokalisation",
                    "Benanntes Gebiet Lokalisationstest", None)
                layer["featuretype"] = "gebaeudeadressen_benanntesgebiet"
                layer["geom"] = "flaeche"
                layer["key"] = "ogc_fid"
                layer["sql"] = "benanntesgebiet_von = '-1'"
                layer["readonly"] = True
                layer["group"] = group
                layer["style"] = "gebaeudeadressen/benanntesgebiet_rot.qml"
                vlayer_benanntesgebiet = self.layer_loader.load(layer)

            vlayer_gebaeudeeingang = self.getVectorLayerByName(gebaeudeeingang)
            if not vlayer_gebaeudeeingang:
                layer = {}
                layer["type"] = "postgres"
                layer["title"] = _translate(
                    "VeriSO_EE_gebaeudeadressen_lokalisation",
                    "Gebaeudeeingang Lokalisationstest", None)
                layer["featuretype"] = "gebaeudeadressen_gebaeudeeingang"
                layer["geom"] = "lage"
                layer["key"] = "ogc_fid"
                layer["sql"] = "gebaeudeeingang_von = '-1'"
                layer["readonly"] = True
                layer["group"] = group
                layer["style"] = "gebaeudeadressen/gebaeudeeingang_rot.qml"
                vlayer_gebaeudeeingang = self.layer_loader.load(layer)

            vlayer_shortestline = self.getVectorLayerByName(shortestline)
            if not vlayer_shortestline:
                layer = {}
                layer["type"] = "postgres"
                layer["title"] = _translate(
                    "VeriSO_EE_gebaeudeadressen_lokalisation",
                    "Kuerzeste Linie Lokalisationstest", None)
                layer["featuretype"] = "t_shortestline_hausnummerpos"
                layer["geom"] = "the_geom"
                layer["key"] = "ogc_fid"
                layer["sql"] = "lok_tid = '-1'"
                layer["readonly"] = True
                layer["group"] = group
                layer["style"] = "gebaeudeadressen/shortestline_linie_rot.qml"
                vlayer_shortestline = self.layer_loader.load(layer)

            vlayer_hausnummerpos = self.getVectorLayerByName(hausnummerpos)
            if not vlayer_hausnummerpos:
                layer = {}
                layer["type"] = "postgres"
                layer["title"] = _translate(
                    "VeriSO_EE_gebaeudeadressen_lokalisation",
                    "HausnummerPos Lokalisationstest", None)
                layer["featuretype"] = "v_gebaeudeadressen_hausnummerpos"
                layer["geom"] = "pos"
                layer["key"] = "ogc_fid"
                layer["sql"] = "lok_tid = '-1'"
                layer["readonly"] = True
                layer["group"] = group
                layer["style"] = "gebaeudeadressen/hausnummerpos_rot.qml"
                vlayer_hausnummerpos = self.layer_loader.load(layer)

            vlayer_lokalisationsname = self.getVectorLayerByName(
                lokalisationsname)
            if not vlayer_lokalisationsname:
                self.iface.messageBar().pushMessage(
                    "Error", _translate(
                        "VeriSO_EE_Geb_LokTest",
                        "Layer _LokalisationsName_ not found.", None),
                    level=Qgis.Critical, duration=10)
                QApplication.restoreOverrideCursor()
                return

            iter = vlayer_lokalisationsname.getFeatures()
            ids = []

            for feature in iter:
                ids.append(feature.id())

            if vlayer_lokalisationsname.selectedFeatureCount() < 1:
                self.iface.messageBar().pushMessage(
                    "Error", _translate(
                        "VeriSO_EE_Geb_LokTest",
                        "No _LokalisationsName_ selected.", None),
                    level=Qgis.Warning, duration=10)
                QApplication.restoreOverrideCursor()
                return

            if vlayer_lokalisationsname.selectedFeatureCount() > 1:
                self.iface.messageBar().pushMessage(
                    "Error", _translate(
                        "VeriSO_EE_Geb_LokTest",
                        "Please select only one (1) _LokalisationsName_.",
                        None), level=Qgis.Warning, duration=10)
                QApplication.restoreOverrideCursor()
                return

            feat = QgsFeature()
            id = vlayer_lokalisationsname.selectedFeatureIds()[0]
            feat = vlayer_lokalisationsname.selectedFeatures()[0]
            idx = ids.index(id)

            benannte_idx = vlayer_lokalisationsname.fields().indexFromName("benannte")
            text_idx = vlayer_lokalisationsname.fields().indexFromName("atext")

            if benannte_idx == -1 or text_idx == -1:
                self.iface.messageBar().pushMessage(
                    "Error",
                    _translate("VeriSO_EE_Geb_LokTest",
                               "Field _benannte_ or _text_ not found.", None),
                    level=Qgis.Critical, duration=10)
                QApplication.restoreOverrideCursor()
                return

            benannte = feat.attributes()[benannte_idx]
            lokalisationsname = feat.attributes()[text_idx]

            vlayer_strassenstueck_geometrie.setSubsetString(
                "(strassenstueck_von = '" + str(benannte) + "')")
            vlayer_strassenstueck_anfangspunkt.setSubsetString(
                "(strassenstueck_von = '" + str(benannte) + "')")
            vlayer_benanntesgebiet.setSubsetString(
                "(benanntesgebiet_von = '" + str(benannte) + "')")
            vlayer_gebaeudeeingang.setSubsetString(
                "(gebaeudeeingang_von = '" + str(benannte) + "')")
            vlayer_lokalisation.setSubsetString(
                "(ogc_fid = '" + str(benannte) + "')")
            vlayer_shortestline.setSubsetString(
                "(lok_tid = '" + str(benannte) + "')")
            vlayer_hausnummerpos.setSubsetString(
                "(lok_tid = '" + str(benannte) + "')")

            if vlayer_strassenstueck_geometrie.featureCount() > 0:
                xMin = vlayer_strassenstueck_geometrie.extent().xMinimum()
                yMin = vlayer_strassenstueck_geometrie.extent().yMinimum()
                xMax = vlayer_strassenstueck_geometrie.extent().xMaximum()
                yMax = vlayer_strassenstueck_geometrie.extent().yMaximum()

            if vlayer_benanntesgebiet.featureCount() > 0:
                xMin = vlayer_benanntesgebiet.extent().xMinimum()
                yMin = vlayer_benanntesgebiet.extent().yMinimum()
                xMax = vlayer_benanntesgebiet.extent().xMaximum()
                yMax = vlayer_benanntesgebiet.extent().yMaximum()

            try:
                if vlayer_gebaeudeeingang.featureCount() > 0:
                    if vlayer_gebaeudeeingang.extent().xMinimum() < xMin:
                        xMin = vlayer_gebaeudeeingang.extent().xMinimum()
                    if vlayer_gebaeudeeingang.extent().yMinimum() < yMin:
                        yMin = vlayer_gebaeudeeingang.extent().yMinimum()
                    if vlayer_gebaeudeeingang.extent().xMaximum() > xMax:
                        xMax = vlayer_gebaeudeeingang.extent().xMaximum()
                    if vlayer_gebaeudeeingang.extent().yMaximum() > yMax:
                        yMax = vlayer_gebaeudeeingang.extent().yMaximum()

                rect = QgsRectangle(xMin, yMin, xMax, yMax)
                rect.scale(1.3)

            except UnboundLocalError as e:
                vlayer_gemeindegrenze = self.getVectorLayerByName(
                    "Gemeindegrenze")
                if vlayer_gemeindegrenze is None:
                    rect = self.canvas.fullExtent()
                else:
                    rect = vlayer_gemeindegrenze.extent()

            self.iface.mapCanvas().setExtent(rect)
            self.iface.mapCanvas().refresh()

            iter = vlayer_lokalisation.getFeatures()
            prinzip, attributeprovisorisch, offiziell, status, inaenderung, art = "", "", "", "", "", ""

            # only one feature is selected
            for feature in iter:
                prinzip_idx = vlayer_lokalisation.fields().indexFromName(
                    "nummerierungsprinzip_txt")
                attributeprovisorisch_idx = vlayer_lokalisation.fields().indexFromName(
                    "attributeprovisorisch_txt")
                offiziell_idx = vlayer_lokalisation.fields().indexFromName(
                    "istoffiziellebezeichnung_txt")
                status_idx = vlayer_lokalisation.fields().indexFromName("status_txt")
                inaenderung_idx = vlayer_lokalisation.fields().indexFromName(
                    "inaenderung_txt")
                art_idx = vlayer_lokalisation.fields().indexFromName("art_txt")

                if prinzip_idx == -1 or attributeprovisorisch_idx == -1 or offiziell_idx == -1 or status_idx == -1 or inaenderung_idx == -1 or art_idx == -1:
                    self.iface.messageBar().pushMessage(
                        "Error",
                        _translate("VeriSO_EE_Geb_LokTest",
                                   "Field not found.", None),
                        level=Qgis.Critical, duration=10)
                    QApplication.restoreOverrideCursor()
                    return

                prinzip = feature.attributes()[prinzip_idx]
                attributeprovisorisch = feature.attributes()[
                    attributeprovisorisch_idx]
                offiziell = feature.attributes()[offiziell_idx]
                status = feature.attributes()[status_idx]
                inaenderung = feature.attributes()[inaenderung_idx]
                art = feature.attributes()[art_idx]

            text_item = QgsTextAnnotation()
            text_item.setHasFixedMapPosition(False)
            text_item.setMapLayer(vlayer_lokalisationsname)
            text_item.setFrameSize(QSizeF(250, 150))
            text_document = QTextDocument()
            text_document.setHtml(
                "<table style='font-size:12px;'><tr><td>Lok.Name: </td><td>" + lokalisationsname + "</td></tr><tr><td>T_ILI_TID: </td><td>" + str(benannte) + "</td></tr> <tr><td>Num.prinzip: </td><td>" + prinzip + "</td></tr> <tr><td>Attr. prov.: </td><td>" + attributeprovisorisch + "</td></tr> <tr><td>ist offiziell: </td><td>" + offiziell + "</td></tr> <tr><td>Status: </td><td>" + status + "</td></tr> <tr><td>in Aenderung: </td><td>" + inaenderung + "</td></tr> <tr><td>Art: </td><td>" + art + "</td></tr>  </table>")
            text_item.setDocument(text_document)

            QgsMapCanvasAnnotationItem(text_item, self.canvas)

            self.iface.mapCanvas().refresh()

            try:
                vlayer_lokalisationsname.selectByIds([ids[idx + 1]])
            except IndexError:
                self.iface.messageBar().pushMessage(
                    "Information",
                    _translate("VeriSO_EE_Geb_LokTest", "End of table.", None),
                    level=Qgis.Info, duration=10)

        except Exception as e:
            QApplication.restoreOverrideCursor()
            exc_type, exc_value, exc_traceback = sys.exc_info()
            self.iface.messageBar().pushMessage(
                "Error", str(traceback.format_exc(exc_traceback)),
                level=Qgis.Critical, duration=5)
        QApplication.restoreOverrideCursor()

    # Return QgsVectorLayer from a layer name ( as string )
    # (c) Carson Farmer / fTools
    def getVectorLayerByName(self, myName):
        layermap = QgsProject.instance().mapLayers()
        for layer in layermap.values():
            if layer.type() == QgsMapLayer.VectorLayer and layer.name() == myName:
                if layer.isValid():
                    return layer
                else:
                    return None
