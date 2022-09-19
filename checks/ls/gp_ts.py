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
                "Error",
                _translate("VeriSO_EE_gp_ts",
                           "project_id not set", None), level=Qgis.Critical,
                duration=5)
            return

        QApplication.setOverrideCursor(Qt.WaitCursor)
        try:
            group = _translate("VeriSO_EE_gp_ts", "Grenzpunkte", None)
            group += " (" + str(project_id) + ")"
            layer = {}
            layer["type"] = "postgres"
            layer["title"] = _translate("VeriSO_EE_gp_ts", "GP unversichert",
                                        None)
            layer["readonly"] = True
            layer["featuretype"] = "liegenschaften_grenzpunkt"
            layer["geom"] = "geometrie"
            layer["key"] = "ogc_fid"
            layer["sql"] = "punktzeichen=6"
            layer["group"] = group
            layer["style"] = "liegenschaften/GP_unver.qml"
            vlayerunvGP = self.layer_loader.load(layer)
            unvGP = vlayerunvGP.featureCount()

            layer = {}
            layer["type"] = "postgres"
            layer["title"] = _translate("VeriSO_EE_gp_ts",
                                        "GP nicht exakt definiert", None)
            layer["readonly"] = True
            layer["featuretype"] = "liegenschaften_grenzpunkt"
            layer["geom"] = "geometrie"
            layer["key"] = "ogc_fid"
            layer["sql"] = "exaktdefiniert=1"
            layer["group"] = group
            layer["style"] = "liegenschaften/GP_exakt.qml"
            vlayerunex = self.layer_loader.load(layer)
            unex = vlayerunex.featureCount()

            layer = {}
            layer["type"] = "postgres"
            layer["title"] = _translate("VeriSO_EE_gp_ts",
                                        "GP Zuverlaessigkeit", None)
            layer["readonly"] = True
            layer["featuretype"] = "liegenschaften_grenzpunkt"
            layer["geom"] = "geometrie"
            layer["key"] = "ogc_fid"
            layer["sql"] = ""
            layer["group"] = group
            layer["style"] = "liegenschaften/GP_zuv.qml"
            vlayer = self.layer_loader.load(layer)

            layer = {}
            layer["type"] = "postgres"
            layer["title"] = _translate("VeriSO_EE_gp_ts", "GP Genauigkeit",
                                        None)
            layer["readonly"] = True
            layer["featuretype"] = "liegenschaften_grenzpunkt"
            layer["geom"] = "geometrie"
            layer["key"] = "ogc_fid"
            layer["sql"] = ""
            layer["group"] = group
            layer["style"] = "liegenschaften/GP_gen.qml"
            vlayergenGP = self.layer_loader.load(layer)
            genGP = vlayergenGP.featureCount()

            layer = {}
            layer["type"] = "postgres"
            layer["title"] = _translate("VeriSO_EE_gp_ts", "SDR Qualitaet",
                                        None)
            layer["readonly"] = True
            layer["featuretype"] = "liegenschaften_selbstrecht"
            layer["geom"] = "geometrie"
            layer["key"] = "ogc_fid"
            layer["sql"] = ""
            layer["group"] = group
            layer["style"] = "liegenschaften/sdr_quali.qml"
            vlayersdr = self.layer_loader.load(layer)

            layer = {}
            layer["type"] = "postgres"
            layer["title"] = _translate("VeriSO_EE_gp_ts",
                                        "Liegenschaften Qualitaet", None)
            layer["readonly"] = True
            layer["featuretype"] = "liegenschaften_liegenschaft"
            layer["geom"] = "geometrie"
            layer["key"] = "ogc_fid"
            layer["sql"] = ""
            layer["group"] = group
            layer["style"] = "liegenschaften/ls_quali.qml"
            vlayerLS = self.layer_loader.load(layer)

            layer = {}
            layer["type"] = "postgres"
            layer["title"] = _translate("VeriSO_EE_gp_ts",
                                        "proj SDR Qualitaet", None)
            layer["readonly"] = True
            layer["featuretype"] = "liegenschaften_projselbstrecht"
            layer["geom"] = "geometrie"
            layer["key"] = "ogc_fid"
            layer["sql"] = ""
            layer["group"] = group
            layer["style"] = "liegenschaften/q_proj_sdr.qml"
            vlayerprojsdr = self.layer_loader.load(layer)

            layer = {}
            layer["type"] = "postgres"
            layer["title"] = _translate("VeriSO_EE_gp_ts",
                                        "proj Liegenschaften Qualitaet", None)
            layer["readonly"] = True
            layer["featuretype"] = "liegenschaften_projliegenschaft"
            layer["geom"] = "geometrie"
            layer["key"] = "ogc_fid"
            layer["sql"] = ""
            layer["group"] = group
            layer["style"] = "liegenschaften/q_proj_ls.qml"
            vlayerprojLS = self.layer_loader.load(layer)

            layer = {}
            layer["type"] = "postgres"
            layer["title"] = _translate(
                "VeriSO_EE_gp_ts",
                "GP-Genauigkeiten schlechter AV93-Qalitaet", None)
            layer["readonly"] = True
            layer["featuretype"] = "z_v_gp_ts"
            layer["geom"] = "geometrie"
            layer["key"] = "ogc_fid"
            layer["sql"] = "(exaktdefiniert = 0 AND ((art <2  AND lagegen  > 5) OR (art = 2 AND lagegen > 7) OR (art = 3 AND lagegen > 15) OR (art = 4 AND lagegen > 35))) OR (exaktdefiniert = 1 AND ((art <2  AND lagegen  > 20) OR (art = 2 AND lagegen > 35) OR (art = 3 AND lagegen > 75) OR (art = 4 AND lagegen >  150)))"
            layer["group"] = group
            layer["style"] = "liegenschaften/GP_TS_Gen.qml"
            vlayerGP = self.layer_loader.load(layer)

            GP = vlayerGP.featureCount()

            QMessageBox.information(
                None,
                "Statistique points limites",
                "<b>Statistik Grenzpunkte:</b> <br>"
                + "<table>"
                + "<tr> <td>Anzahl GP's / Nombre PL: </td> <td>" + str(genGP) + "</td> </tr>"
                + "<tr> <td>Genauigkeit / precision < AV93 / MO93: </td> <td>" + str(GP) + "</td> </tr>"
                + "<tr> <td>unversicherte GP's / PL non materialises: </td> <td>" + str(unvGP) + "</td> </tr>"
                + "<tr> <td>GP nicht exakt definiert / PL pas defini exactement : </td> <td>" + str(unex) + "</td> </tr>"
                + "</table>")

        except Exception:
            QApplication.restoreOverrideCursor()
            exc_type, exc_value, exc_traceback = sys.exc_info()
            self.iface.messageBar().pushMessage(
                "Error", str(traceback.format_exc(exc_traceback)),
                level=Qgis.Critical, duration=5)
        QApplication.restoreOverrideCursor()
