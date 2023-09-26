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
                layer["url"] = "https://www.geoservice.apps.be.ch/geoservice3/services/a42geo/of_environment01_fr_ms_wms/MapServer/WMSServer?"
            else:
                layer["url"] = "https://www.geoservice.apps.be.ch/geoservice3/services/a42geo/of_environment01_de_ms_wms/MapServer/WMSServer?"
            layer["layers"] = "GGO_GGOP_VW_20736"
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
                layer["url"] = "https://www.geoservice.apps.be.ch/geoservice3/services/a42geo/of_geoscientificinformation01_fr_ms_wms/MapServer/WMSServer?"
            else:
                layer["url"] = "https://www.geoservice.apps.be.ch/geoservice3/services/a42geo/of_geoscientificinformation01_de_ms_wms/MapServer/WMSServer?"
            layer["layers"] = "SCHBLAW_SBLAWP_VW_22446,SCHBLAW_SBLAW_VW_22447"
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
                layer["url"] = "https://www.geoservice.apps.be.ch/geoservice3/services/a42geo/of_environment01_fr_ms_wms/MapServer/WMSServer?"
            else:
                layer["url"] = "https://www.geoservice.apps.be.ch/geoservice3/services/a42geo/of_environment01_de_ms_wms/MapServer/WMSServer?"
            layer["layers"] = "GBO_GBOP_VW_19258,GBO_GBOF_VW_19259"
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
                layer["url"] = "https://www.geoservice.apps.be.ch/geoservice3/services/a42geo/of_inlandwaters01_fr_ms_wms/MapServer/WMSServer?"
            else:
                layer["url"] = "https://www.geoservice.apps.be.ch/geoservice3/services/a42geo/of_inlandwaters01_de_ms_wms/MapServer/WMSServer?"
            layer["layers"] = "GNBE_GNBELA_VW_8089,GNBE_GNBELA_VW_21952,GNBE_GNBEAB_VW_14692,GNBE_GNBEAB_VW_14295,GNBE_GNBEAB_VW_21946,GNBE_GNBEAB_VW_21947,GNBE_GNBEAB_VW_21948,GNBE_GNBEAB_VW_21951"
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
                layer["url"] = "https://www.geoservice.apps.be.ch/geoservice3/services/a42geo/of_planningcadastre01_fr_ms_wms/MapServer/WMSServer?"
            else:
                layer["url"] = "https://www.geoservice.apps.be.ch/geoservice3/services/a42geo/of_planningcadastre01_de_ms_wms/MapServer/WMSServer?"
            layer["layers"] = "WANDERNS_WEGE_VW_4588"
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
