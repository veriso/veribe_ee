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
                _translate("VeriSO_EE_wmsBBEO", "project_id not set", None),
                level=Qgis.Critical, duration=5)
            return

        QApplication.setOverrideCursor(Qt.WaitCursor)
        try:
            group = _translate("VeriSO_EE_wmsBBEO", "BBEOWMS", None)
            group += " (" + str(project_id) + ")"

            layer = {}
            layer["type"] = "wms"
            layer["group"] = group
            layer["title"] = _translate("VeriSO_EE_wmsBBEO",
                                        "gesch. geol. Objekte", None)
            if locale == "fr":
                layer["url"] = "https://www.geoservice.apps.be.ch/geoservice2/services/a42geo/a42geo_umweltwms_f_fk/MapServer/WMSServer?"
            else:
                layer["url"] = "https://www.geoservice.apps.be.ch/geoservice2/services/a42geo/a42geo_umweltwms_d_fk/MapServer/WMSServer?"
            layer["layers"] = "GEODB.GGO_GGOP_KMGDM1"
            layer["format"] = "image/png"
            # layer["crs"] ="EPSG:21781"
            layer["sql"] = ""
            # layer["style"] = ""
            vlayer = self.layer_loader.load(layer)
            layer = {}
            layer["type"] = "wms"
            layer["group"] = group
            layer["title"] = _translate("VeriSO_EE_wmsBBEO", "Lawinienverb.",
                                        None)
            if locale == "fr":
                layer["url"] = "https://www.geoservice.apps.be.ch/geoservice2/services/a42geo/a42geo_geologiewms_f_fk/MapServer/WMSServer?"
            else:
                layer["url"] = "https://www.geoservice.apps.be.ch/geoservice2/services/a42geo/a42geo_geologiewms_d_fk/MapServer/WMSServer?"
            layer["layers"] = "GEODB.SCHBLAW_SBLAWP_KMGDM1,GEODB.SCHBLAW_SBLAW_KMGDM1"
            layer["format"] = "image/png"
            # layer["crs"] ="EPSG:21781"
            layer["sql"] = ""
            # layer["style"] = ""
            vlayer = self.layer_loader.load(layer)
            layer = {}
            layer["type"] = "wms"
            layer["group"] = group
            layer["title"] = _translate("VeriSO_EE_wmsBBEO",
                                        "GBO (geschuetzte botanische...)",
                                        None)
            if locale == "fr":
                layer["url"] = "https://www.geoservice.apps.be.ch/geoservice2/services/a42geo/a42geo_umweltwms_f_fk/MapServer/WMSServer?"
            else:
                layer["url"] = "https://www.geoservice.apps.be.ch/geoservice2/services/a42geo/a42geo_umweltwms_d_fk/MapServer/WMSServer?"
            layer["layers"] = "GEODB.GBO_GBOP_KMGDM1,GEODB.GBO_GBOF_KMGDM1"
            layer["format"] = "image/png"
            # layer["crs"] ="EPSG:21781"
            layer["sql"] = ""
            # layer["style"] = ""
            vlayer = self.layer_loader.load(layer)
            layer = {}
            layer["type"] = "wms"
            layer["group"] = group
            layer["title"] = _translate("VeriSO_EE_wmsBBEO", "GNBE", None)
            if locale == "fr":
                layer["url"] = "https://www.geoservice.apps.be.ch/geoservice2/services/a42geo/a42geo_gewaesserwms_f_fk/MapServer/WMSServer?"
            else:
                layer["url"] = "https://www.geoservice.apps.be.ch/geoservice2/services/a42geo/a42geo_gewaesserwms_d_fk/MapServer/WMSServer?"
            layer["layers"] = "GEODB.GNBE_GNBELA_KMGDM1,GEODB.GNBE_GNBELA_KMGDM2,GEODB.GNBE_GNBEAB_KMGDM1,GEODB.GNBE_GNBEAB_KMGDM2,GEODB.GNBE_GNBEAB_KMGDM3,GEODB.GNBE_GNBEAB_KMGDM4,GEODB.GNBE_GNBEAB_KMGDM5,GEODB.GNBE_GNBEAB_KMGDM8_B"
            layer["format"] = "image/png"
            # layer["crs"] ="EPSG:21781"
            layer["sql"] = ""
            # layer["style"] = ""
            vlayer = self.layer_loader.load(layer)
            layer = {}
            layer["type"] = "wms"
            layer["group"] = group
            layer["title"] = _translate("VeriSO_EE_wmsBBEO", "Wanderwege",
                                        None)
            if locale == "fr":
                layer["url"] = "https://www.geoservice.apps.be.ch/geoservice2/services/a42geo/a42geo_planungwms_f_fk/MapServer/WMSServer?"
            else:
                layer["url"] = "https://www.geoservice.apps.be.ch/geoservice2/services/a42geo/a42geo_planungwms_d_fk/MapServer/WMSServer?"
            layer["layers"] = "GEODB.WANDERNS_WEGE_KMGDM1"
            layer["format"] = "image/png"
            # layer["crs"] ="EPSG:21781"
            layer["sql"] = ""
            # layer["style"] = ""
            vlayer = self.layer_loader.load(layer)

        except Exception:
            QApplication.restoreOverrideCursor()
            exc_type, exc_value, exc_traceback = sys.exc_info()
            self.iface.messageBar().pushMessage(
                "Error", str(traceback.format_exc(exc_traceback)),
                level=Qgis.Critical, duration=5)
        QApplication.restoreOverrideCursor()
