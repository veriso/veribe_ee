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

        self.root = QgsProject.instance().layerTreeRoot()

    def run(self):
        self.settings = QSettings("CatAIS", "VeriSO")
        project_id = self.settings.value("project/id")
        epsg = self.settings.value("project/epsg")

        locale = QSettings().value('locale/userLocale')[0:2]  # Für Multilingual-Legenden.

        if not project_id:
            self.iface.messageBar().pushMessage(
                "Error", _translate("VeriSO_EE_FP12", "project_id not set",
                                    None), level=Qgis.Critical, duration=5)
            return

        QApplication.setOverrideCursor(Qt.WaitCursor)

        try:
            group = _translate("VeriSO_EE_FP3", "FixpunkteKategorie12", None)
            group += " (" + str(project_id) + ")"

            layer = {}
            layer["type"] = "postgres"
            layer["title"] = _translate("VeriSO_EE_FP12", "Toleranzstufen",
                                        None)
            layer["featuretype"] = "tseinteilung_toleranzstufe"
            layer["geom"] = "geometrie"
            layer["key"] = "ogc_fid"
            layer["sql"] = ""
            layer["readonly"] = True
            layer["group"] = group
            layer["style"] = "tseinteilung/toleranzstufe_" + locale + ".qml"
            vlayer = self.layer_loader.load(layer, False, True)

            layer = {}
            layer["type"] = "postgres"
            layer["title"] = _translate("VeriSO_EE_FP12", "Gemeindegrenze",
                                         None)
            layer["featuretype"] = "gemeindegrenzen_gemeindegrenze"
            layer["geom"] = "geometrie"
            layer["key"] = "ogc_fid"
            layer["sql"] = ""
            layer["group"] = group
            layer["style"] = "gemeindegrenze/gemeindegrenze.qml"
            vlayer = self.layer_loader.load(layer)

            layer = {}
            layer["type"] = "postgres"
            layer["title"] = _translate("VeriSO_EE_FP12", "HFP2", None)
            layer["featuretype"] = "fixpunktekatgrie2_hfp2"
            layer["geom"] = "geometrie"
            layer["key"] = "ogc_fid"
            layer["sql"] = ""
            layer["readonly"] = True
            layer["group"] = group
            layer["style"] = "fixpunkte/hfp2.qml"
            vlayerHFP2 = self.layer_loader.load(layer, False, True)

            layer = {}
            layer["type"] = "postgres"
            layer["title"] = _translate("VeriSO_EE_FP12", "LFP2", None)
            layer["featuretype"] = "fixpunktekatgrie2_lfp2"
            layer["geom"] = "geometrie"
            layer["key"] = "ogc_fid"
            layer["sql"] = ""
            layer["readonly"] = True
            layer["group"] = group
            layer["style"] = "fixpunkte/lfp2.qml"
            vlayerLFP2 = self.layer_loader.load(layer, False, True)

            layer = {}
            layer["type"] = "postgres"
            layer["title"] = _translate("VeriSO_EE_FP12", "HFP1", None)
            layer["featuretype"] = "fixpunktekatgrie1_hfp1"
            layer["geom"] = "geometrie"
            layer["key"] = "ogc_fid"
            layer["sql"] = ""
            layer["readonly"] = True
            layer["group"] = group
            layer["style"] = "fixpunkte/hfp1.qml"
            vlayerHFP1 = self.layer_loader.load(layer, False, True)

            layer = {}
            layer["type"] = "postgres"
            layer["title"] = _translate("VeriSO_EE_FP12", "LFP1", None)
            layer["featuretype"] = "fixpunktekatgrie1_lfp1"
            layer["geom"] = "geometrie"
            layer["key"] = "ogc_fid"
            layer["sql"] = ""
            layer["readonly"] = True
            layer["group"] = group
            layer["style"] = "fixpunkte/lfp1.qml"
            vlayerLFP1 = self.layer_loader.load(layer, False, True)

            layer = {}
            layer["type"] = "wms"
            layer["url"] = "https://wms.geo.admin.ch/?"
            layer["layers"] = "ch.swisstopo.fixpunkte-hfp1"
#            layer["crs"] = "EPSG:21781"
            layer["format"] = "image/png"
            layer["title"] = _translate("VeriSO_EE_FP12", "Hoehenfixpunkte 1",
                                        None)
            layer["group"] = group
            vlayer = self.layer_loader.load(layer, False, True)

            layer = {}
            layer["type"] = "wms"
            layer["url"] = "https://wms.geo.admin.ch/?"
            layer["layers"] = "ch.swisstopo.fixpunkte-hfp2"
#            layer["crs"] = "EPSG:21781"
            layer["format"] = "image/png"
            layer["title"] = _translate("VeriSO_EE_FP12", "Hoehenfixpunkte 2",
                                        None)
            layer["group"] = group
            vlayer = self.layer_loader.load(layer, False, True)

            layer = {}
            layer["type"] = "wms"
            layer["url"] = "https://wms.geo.admin.ch/?"
            layer["layers"] = "ch.swisstopo.fixpunkte-lfp1"
#            layer["crs"] = "EPSG:21781"
            layer["format"] = "image/png"
            layer["title"] = _translate("VeriSO_EE_FP12", "Lagefixpunkte 1",
                                        None)
            layer["group"] = group
            vlayer = self.layer_loader.load(layer, False, True)

            layer = {}
            layer["type"] = "wms"
            layer["url"] = "https://wms.geo.admin.ch/?"
            layer["layers"] = "ch.swisstopo.fixpunkte-lfp2"
#            layer["crs"] = "EPSG:21781"
            layer["format"] = "image/png"
            layer["title"] = _translate("VeriSO_EE_FP12", "Lagefixpunkte 2",
                                        None)
            layer["group"] = group
            vlayer = self.layer_loader.load(layer, False, True)

            QApplication.restoreOverrideCursor()

            hfp1 = vlayerHFP1.featureCount()
            lfp1 = vlayerLFP1.featureCount()
            hfp2 = vlayerHFP2.featureCount()
            lfp2 = vlayerLFP2.featureCount()

            if locale == "fr":
                QMessageBox.information(
                    None, "Statistique points fixes",
                    "<b>Statistique points fixes 1/2:</b> <br>"
                    + "<table>"
                    + "<tr> <td>PFA1: </td> <td>" + str(hfp1) + "</td> </tr>"
                    + "<tr> <td>PFP1: </td> <td>" + str(lfp1) + "</td> </tr>"
                    + "<tr> <td>PFA2: </td> <td>" + str(hfp2) + "</td> </tr>"
                    + "<tr> <td>PFP2: </td> <td>" + str(lfp2) + "</td> </tr>"
                    + "</table>")
            else:
                QMessageBox.information(
                    None, "Statistik Fixpunkte",
                    "<b>Statistik Fixpunkte 1/2:</b> <br>"
                    + "<table>"
                    + "<tr> <td>HFP1: </td> <td>" + str(hfp1) + "</td> </tr>"
                    + "<tr> <td>LFP1: </td> <td>" + str(lfp1) + "</td> </tr>"
                    + "<tr> <td>HFP2: </td> <td>" + str(hfp2) + "</td> </tr>"
                    + "<tr> <td>LFP2: </td> <td>" + str(lfp2) + "</td> </tr>"
                    + "</table>")

        except Exception:
            QApplication.restoreOverrideCursor()
            exc_type, exc_value, exc_traceback = sys.exc_info()
            self.iface.messageBar().pushMessage(
                "Error", str(traceback.format_exc(exc_traceback)),
                level=Qgis.Critical, duration=5)
        QApplication.restoreOverrideCursor()
