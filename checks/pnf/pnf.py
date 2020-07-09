# -*- coding: utf-8 -*-
from qgis.PyQt.QtCore import *
from qgis.PyQt.QtGui import *
from qgis.PyQt.QtWidgets import *
from qgis.core import *
from qgis.gui import *

import sys
import traceback
import os

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
                _translate("VeriSO_EE_PNF",
                           "project_id not set", None),
                level=Qgis.Critical, duration=5)
            return

        QApplication.setOverrideCursor(Qt.WaitCursor)
        try:
            group_eo_allgemein = _translate("VeriSO_EE_PNF", "EO Allgemein",
                                            None)
            group_eo_allgemein += " (" + str(project_id) + ")"

            group_av_allgemein = _translate("VeriSO_EE_PNF", "AV Allgemein",
                                            None)
            group_av_allgemein += " (" + str(project_id) + ")"

            group_bb_allgemein = _translate("VeriSO_EE_PNF", "BB Allgemein",
                                            None)
            group_bb_allgemein += " (" + str(project_id) + ")"

            # Mängel
            # Call the menu action.
            for child in self.iface.mainWindow().findChild(
                    QToolBar, "VeriSO.Main.ToolBar").children():
                if child.objectName() == 'VeriSO.Main.LoadDefectsMenuBar':
                    for action in child.children()[1].actions():
                        if action.objectName() == "VeriSOModule.LoadDefectsAction":
                            action.activate(QAction.Trigger)

            # Stand AVOR
            layer = {
                "type": "postgres",
                "title": _translate("VeriSO_EE_PNF", "Stand AVOR", None),
                "readonly": True,
                "featuretype": "t_status_avor",
                "geom": "the_geom",
                "key": "ogc_fid",
                "sql": "",
                "style": "pnf/pnfbe_stand_avor.qml"
                }
            vlayer = self.layer_loader.load(layer, True, True)

            # Arbeitsraster 500
            layer = {
                'type': 'ogr',
                'title': _translate('VeriSO_EE_PNF', 'Arbeitsraster 500',
                                    None),
                # specific file path defined by customer
                'url': '/share/Share/Baselayers/working_grid_500.shp',
                'style': 'pnf/arbeitsraster.qml'
                }
            vlayer = self.layer_loader.load(layer, True, True)

            # PNFBE HINWEISE Gebaeude
            layer = {
                'type': 'gdal',
                'title': _translate('VeriSO_EE_PNF', 'PNFBE_HINWEISE_Gebaeude', None),
                # specific file path defined by customer
                'url': '/share/Share/Baselayers/PNFBE_HINWEISE.tif',
                'style': 'pnf/pnfbe_hinweise_gebaeude.qml'
                }
            vlayer = self.layer_loader.load(layer, True, True)

            # PNFBE HINWEISE offen vegetationslos
            layer = {
                'type': 'gdal',
                'title': _translate('VeriSO_EE_PNF', 'PNFBE_HINWEISE_offen_vegetationslos', None),
                # specific file path defined by customer
                'url': '/share/Share/Baselayers/PNFBE_HINWEISE.tif',
                'style': 'pnf/pnfbe_hinweise_offen_vegetationslos.qml'
                }
            vlayer = self.layer_loader.load(layer, True, True)

            # PNFBE HINWEISE offen Vegetation
            layer = {
                'type': 'gdal',
                'title': _translate('VeriSO_EE_PNF', 'PNFBE_HINWEISE_offen_Vegetation', None),
                # specific file path defined by customer
                'url': '/share/Share/Baselayers/PNFBE_HINWEISE.tif',
                'style': 'pnf/pnfbe_hinweise_offen_vegetation.qml'
                }
            vlayer = self.layer_loader.load(layer, True, True)

            # PNFBE HINWEISE Gewaesser
            layer = {
                'type': 'gdal',
                'title': _translate('VeriSO_EE_PNF', 'PNFBE_HINWEISE_Gewaesser', None),
                # specific file path defined by customer
                'url': '/share/Share/Baselayers/PNFBE_HINWEISE.tif',
                'style': 'pnf/pnfbe_hinweise_gewaesser.qml'
                }
            vlayer = self.layer_loader.load(layer, True, True)

            # PNFBE HINWEISE bestockt
            layer = {
                'type': 'gdal',
                'title': _translate('VeriSO_EE_PNF', 'PNFBE_HINWEISE_bestockt', None),
                # specific file path defined by customer
                'url': '/share/Share/Baselayers/PNFBE_HINWEISE.tif',
                'style': 'pnf/pnfbe_hinweise_bestockt.qml'
                }
            vlayer = self.layer_loader.load(layer, True, True)

            # Wanderwege
            layer = {
                'type': 'wms',
                'title': _translate('VeriSO_EE_PNF', 'Wanderwege', None),
                'url': 'https://www.geoservice.apps.be.ch/geoservice2/services/a42geo/a42geo_transportwms_d_fk/MapServer/WMSServer?',
                'layers': 'GEODB.WANDERNS_WEGE',
                'format': 'image/png',
                'style': 'pnf/pnfbe_wanderwege.qml'
                }
            vlayer = self.layer_loader.load(layer, False, True)

            # Gewässer des Kantons Bern
            layer = {
                'type': 'wms',
                'title': _translate('VeriSO_EE_PNF', 'Gewässer des Kantons Bern', None),
                'url': 'https://www.geoservice.apps.be.ch/geoservice2/services/a42geo/a42geo_gewaesserwms_d_fk/MapServer/WMSServer?',
                'layers': 'GEODB.GNBE_GNBELA_STANDARD,GEODB.GNBE_GNBEAB_STANDARD',
                'format': 'image/png',
                'style': 'pnf/pnfbe_gewaesser.qml'
                }
            vlayer = self.layer_loader.load(layer, False, True)

            # BB Allgemein
            layer = {
                "type": "postgres",
                "title": _translate("VeriSO_EE_basis", "Proj. Gebaeude", None),
                "readonly": True,
                "featuretype": "bodenbedeckung_projboflaeche",
                "geom": "geometrie",
                "key": "ogc_fid",
                "sql": "art = 0",
                "group": group_bb_allgemein,
                "style": "basis/projGeb.qml"
                }
            vlayer = self.layer_loader.load(layer, True, True)

            layer = {
                "type": "postgres",
                "title": _translate("VeriSO_EE_basis", "HausnummerPos", None),
                "featuretype": "v_gebaeudeadressen_hausnummerpos",
                "geom": "pos",
                "key": "ogc_fid",
                "sql": "",
                "group": group_bb_allgemein,
                "style": "gebaeudeadressen/hausnummerpos.qml"}
            vlayer = self.layer_loader.load(layer, True, True)

            layer = {
                "type": "postgres",
                "title": _translate("VeriSO_EE_basis",
                                    "Bodenbedeckung Umriss", None),
                "readonly": True,
                "featuretype": "bodenbedeckung_boflaeche",
                "geom": "geometrie",
                "key": "ogc_fid",
                "group": group_bb_allgemein,
                "sql": "",
                "style": "pnf/bb_umriss.qml"
                }
            vlayer = self.layer_loader.load(layer, True, True)

            layer = {
                "type": "postgres",
                "title": _translate("VeriSO_EE_basis", "Bodenbedeckung", None),
                "readonly": True,
                "featuretype": "bodenbedeckung_boflaeche",
                "geom": "geometrie",
                "key": "ogc_fid",
                "group": group_bb_allgemein,
                "sql": "",
                "style": "basis/BB.qml"
                }
            vlayer = self.layer_loader.load(layer, False, True)

            layer = {
                "type": "postgres",
                "title": _translate("VeriSO_EE_basis", "Objektname", None),
                "readonly": True,
                "featuretype": "bodenbedeckung_objektnamepos_v",
                "geom": "pos",
                "group": group_bb_allgemein,
                "key": "ogc_fid",
                "sql": "",
                "style": "bodenbedeckung/objektnamen.qml"
                }
            vlayer = self.layer_loader.load(layer, False, True)

            # EO Allgemein
            layer = {
                "type": "postgres",
                "title": _translate("VeriSO_EE_basis", "EO Flaechenelemete",
                                    None),
                "readonly": True,
                "featuretype": "einzelobjekte_flaechenelement_v",
                "geom": "geometrie",
                "key": "ogc_fid",
                "group": group_eo_allgemein,
                "sql": "",
                "style": "basis/eo_flaeche.qml"
                }
            vlayer = self.layer_loader.load(layer, True, True)

            layer = {
                "type": "postgres",
                "title": _translate("VeriSO_EE_basis", "EO Linienelemente",
                                    None),
                "readonly": True,
                "featuretype": "einzelobjekte_linienelement_v",
                "geom": "geometrie",
                "key": "ogc_fid",
                "group": group_eo_allgemein,
                "sql": "",
                "style": "basis/eo_linie.qml"}
            vlayer = self.layer_loader.load(layer, True, True)

            layer = {
                "type": "postgres",
                "title": _translate("VeriSO_EE_basis", "EO Punktelemente",
                                    None),
                "readonly": True,
                "featuretype": "einzelobjekte_punktelement_v",
                "geom": "geometrie",
                "key": "ogc_fid",
                "group": group_eo_allgemein,
                "sql": "",
                "style": "basis/eo_pkt.qml"
                }
            vlayer = self.layer_loader.load(layer, True, True)

            layer = {
                "type": "postgres",
                "title": _translate("VeriSO_EE_basis", "Objektname", None),
                "readonly": True,
                "featuretype": "einzelobjekte_objektnamepos_v",
                "geom": "pos",
                "key": "ogc_fid",
                "group": group_eo_allgemein,
                "sql": "",
                "style": "bodenbedeckung/objektnamen.qml"}
            vlayer = self.layer_loader.load(layer, False, True)

            # AV Allgemein
            layer = {
                "type": "postgres",
                "title": _translate("VeriSO_EE_basis", "SDR", None),
                "readonly": True,
                "featuretype": "liegenschaften_selbstrecht",
                "geom": "geometrie",
                "group": group_av_allgemein,
                "key": "ogc_fid",
                "sql": "",
                "style": "liegenschaften/selbstrecht.qml"
                }
            vlayer = self.layer_loader.load(layer, True, True)

            layer = {
                "type": "postgres",
                "title": _translate("VeriSO_EE_basis", "Liegenschaften", None),
                "readonly": True,
                "featuretype": "liegenschaften_liegenschaft_v2",
                "geom": "geometrie",
                "group": group_av_allgemein,
                "key": "ogc_fid",
                "sql": "",
                "style": "liegenschaften/liegenschaft.qml"}
            vlayer = self.layer_loader.load(layer, True, True)

            layer = {
                "type": "postgres",
                "title": _translate("VeriSO_EE_basis", "Hilfslinie", None),
                "readonly": True,
                "featuretype": "liegenschaften_grundstueckpos",
                "geom": "hilfslinie",
                "group": group_av_allgemein,
                "key": "ogc_fid",
                "sql": "",
                "style": "liegenschaften/hilfslinie.qml"
                }
            vlayer = self.layer_loader.load(layer, False, True)

            layer = {
                "type": "postgres",
                "title": _translate("VeriSO_EE_basis",
                                    "Hoheitsgrenzpunkt - unversichert", None),
                "readonly": True,
                "featuretype": "gemeindegrenzen_hoheitsgrenzpunkt",
                "geom": "geometrie",
                "group": group_av_allgemein,
                "key": "ogc_fid",
                "sql": "punktzeichen in (6)",
                "style": "bodenbedeckung/hgp_unver.qml"
                }
            vlayer = self.layer_loader.load(layer, False, True)

            layer = {
                "type": "postgres",
                "title": _translate("VeriSO_EE_basis",
                                    "Hoheitsgrenzpunkt - Bolzen,Rohr", None),
                "readonly": True,
                "featuretype": "gemeindegrenzen_hoheitsgrenzpunkt",
                "geom": "geometrie",
                "group": group_av_allgemein,
                "key": "ogc_fid",
                "sql": "punktzeichen in (2,3)",
                "style": "bodenbedeckung/hgp_bolzen.qml"
                }
            vlayer = self.layer_loader.load(layer, False, True)

            layer = {
                "type": "postgres",
                "title": _translate("VeriSO_EE_basis",
                                    "Hoheitsgrenzpunkt - Kreuz", None),
                "readonly": True,
                "featuretype": "gemeindegrenzen_hoheitsgrenzpunkt",
                "geom": "geometrie",
                "group": group_av_allgemein,
                "key": "ogc_fid",
                "sql": "punktzeichen in (5)",
                "style": "bodenbedeckung/hgp_kreuz.qml"
                }
            vlayer = self.layer_loader.load(layer, False, True)

            layer = {
                "type": "postgres",
                "title": _translate("VeriSO_EE_basis",
                                    "Hoheitsgrenzpunkt - Stein", None),
                "readonly": True,
                "featuretype": "gemeindegrenzen_hoheitsgrenzpunkt",
                "geom": "geometrie",
                "group": group_av_allgemein,
                "key": "ogc_fid",
                "sql": "punktzeichen in (0)",
                "style": "bodenbedeckung/hgp_stein.qml"
                }
            vlayer = self.layer_loader.load(layer, False, True)

            layer = {
                "type": "postgres",
                "title": _translate("VeriSO_EE_basis",
                                    "Grenzpunkt - unversichert", None),
                "readonly": True,
                "featuretype": "liegenschaften_grenzpunkt",
                "geom": "geometrie",
                "group": group_av_allgemein,
                "key": "ogc_fid",
                "sql": "punktzeichen in (6)",
                "style": "bodenbedeckung/gp_unver.qml"
                }
            vlayer = self.layer_loader.load(layer, False, True)

            layer = {
                "type": "postgres",
                "title": _translate("VeriSO_EE_basis",
                                    "Grenzpunkt - Bolzen,Rohr", None),
                "readonly": True,
                "featuretype": "liegenschaften_grenzpunkt",
                "geom": "geometrie",
                "group": group_av_allgemein,
                "key": "ogc_fid",
                "sql": "punktzeichen in (2,3)",
                "style": "bodenbedeckung/gp_bolzen.qml"
                }
            vlayer = self.layer_loader.load(layer, False, True)

            layer = {
                "type": "postgres",
                "title": _translate("VeriSO_EE_basis",
                                    "Grenzpunkt - Kreuz", None),
                "readonly": True,
                "featuretype": "liegenschaften_grenzpunkt",
                "geom": "geometrie",
                "group": group_av_allgemein,
                "key": "ogc_fid",
                "sql": "punktzeichen in (5)",
                "style": "bodenbedeckung/gp_kreuz.qml"
                }
            vlayer = self.layer_loader.load(layer, False, True)

            layer = {
                "type": "postgres",
                "title": _translate("VeriSO_EE_basis",
                                    "Grenzpunkt - Stein", None),
                "readonly": True,
                "featuretype": "liegenschaften_grenzpunkt",
                "geom": "geometrie",
                "group": group_av_allgemein,
                "key": "ogc_fid",
                "sql": "punktzeichen in (0)",
                "style": "bodenbedeckung/gp_stein.qml"
                }
            vlayer = self.layer_loader.load(layer, False, True)

            layer = {
                "type": "postgres",
                "title": _translate("VeriSO_EE_basis",
                                    "proj. Liegenschaften", None),
                "readonly": True,
                "featuretype": "liegenschaften_projliegenschaft",
                "geom": "geometrie",
                "group": group_av_allgemein,
                "key": "ogc_fid",
                "sql": "",
                "style": "liegenschaften/projliegenschaft.qml"
                }
            vlayer = self.layer_loader.load(layer, True, True)

            layer = {
                "type": "postgres",
                "title": _translate("VeriSO_EE_basis", "proj. SDR", None),
                "readonly": True,
                "featuretype": "liegenschaften_projselbstrecht",
                "geom": "geometrie",
                "group": group_av_allgemein,
                "key": "ogc_fid",
                "sql": "",
                "style": "liegenschaften/projselbstrecht.qml"
                }
            vlayer = self.layer_loader.load(layer, True, True)

            layer = {
                "type": "postgres",
                "title": _translate("VeriSO_EE_basis", "proj_Grst-Nr", None),
                "readonly": True,
                "featuretype": "z_projgs_nr",
                "geom": "pos",
                "group": group_av_allgemein,
                "key": "ogc_fid",
                "sql": "",
                "style": "liegenschaften/proj_GS_NR.qml"
                }
            vlayer = self.layer_loader.load(layer, True, True)

            layer = {
                "type": "postgres",
                "title": _translate("VeriSO_EE_basis", "Nr Gs(LS)", None),
                "readonly": True,
                "featuretype": "z_nr_gs",
                "geom": "pos",
                "key": "ogc_fid",
                "group": group_av_allgemein,
                "sql": "(art=0) and (gesamteflaechenmass is NULL)",
                "style": "liegenschaften/nr_ls_ganz.qml"
                }
            vlayer = self.layer_loader.load(layer, True, True)

            layer = {
                "type": "postgres",
                "title": _translate("VeriSO_EE_basis", "Nr Gs(SDR)", None),
                "readonly": True,
                "featuretype": "z_nr_gs",
                "geom": "pos",
                "group": group_av_allgemein,
                "key": "ogc_fid",
                "sql": "(art>0) and (gesamteflaechenmass is NULL)",
                "style": "liegenschaften/nr_sdr_ganz.qml"
                }
            vlayer = self.layer_loader.load(layer, True, True)

            layer = {
                "type": "postgres",
                "title": _translate("VeriSO_EE_basis", "Nr Gs(LS-Teil)", None),
                "readonly": True,
                "featuretype": "z_nr_gs",
                "geom": "pos",
                "group": group_av_allgemein,
                "key": "ogc_fid",
                "sql": "(art=0) and (gesamteflaechenmass>0)",
                "style": "liegenschaften/nr_ls_teil.qml"
                }
            vlayer = self.layer_loader.load(layer, True, True)

            layer = {
                "type": "postgres",
                "title": _translate("VeriSO_EE_basis", "Nr Gs(SDR Teil)", None),
                "readonly": True,
                "featuretype": "z_nr_gs",
                "geom": "pos",
                "group": group_av_allgemein,
                "key": "ogc_fid",
                "sql": "art>0 and gesamteflaechenmass>0",
                "style": "liegenschaften/nr_sdr_teil.qml"
                }
            vlayer = self.layer_loader.load(layer, True, True)

            # Laufende Operate
            layer = {
                'type': 'wms',
                'title': _translate('VeriSO_EE_PNF', 'Laufende operate', None),
                'url': 'https://www.geoservice.apps.be.ch/geoservice2/services/a42geo/a42geo_verisowms_d_fk/MapServer/WMSServer?',
                'layers': 'GEODB.AMO_LOT',
                'format': 'image/png'
                }
            vlayer = self.layer_loader.load(layer, False, True)

            # Bauzonen UZP
            layer = {
                'type': 'wms',
                'title': _translate('VeriSO_EE_PNF', 'Bauzonen UZP', None),
                'url': 'https://www.geoservice.apps.be.ch/geoservice2/services/a42geo/a42geo_planungwms_d_fk/MapServer/WMSServer?',
                'layers': 'GEODB.UZP_BAU_STANDARD',
                'format': 'image/png',
                'style': 'pnf/pnfbe_bauzonen.qml'
                }
            vlayer = self.layer_loader.load(layer, False, True)

            # Toleranzstufen
            layer = {
                'type': 'wms',
                'title': _translate('VeriSO_EE_PNF', 'Toleranzstufen', None),
                'url': 'https://www.geoservice.apps.be.ch/geoservice2/services/a42geo/a42geo_verisowms_d_fk/MapServer/WMSServer?',
                'layers': 'AV01.TS_Toleranzstufe',
                'format': 'image/png',
                'style': 'pnf/pnfbe_toleranzstufen.qml'
                }
            vlayer = self.layer_loader.load(layer, False, True)

            # Planungsperimeter PNF
            layer = {
                'type': 'wms',
                'title': _translate('VeriSO_EE_PNF', 'Planungsperimeter PNF', None),
                'url': 'https://www.geoservice.apps.be.ch/geoservice2/services/a42geo/a42geo_verisowms_d_fk/MapServer/WMSServer?',
                'layers': 'PNFAK_EDIT.PNFAK_GEMEINDE_PLANUNG',
                'format': 'image/png',
                'style': 'pnf/pnfbe_planungsperimeter.qml'
                }
            vlayer = self.layer_loader.load(layer, False, True)

            # Waldgrenzen
            layer = {
                'type': 'wms',
                'title': _translate('VeriSO_EE_PNF', 'Waldgrenzen', None),
                'url': 'https://www.geoservice.apps.be.ch/geoservice1/services/a42pub1/a42pub_oereb_wms_d_fk/MapServer/WmsServer?',
                'layers': 'GEODB.NPLWALD_WAFW',
                'format': 'image/png',
                'style': 'pnf/pnfbe_waldgrenzen.qml'
                }
            vlayer = self.layer_loader.load(layer, False, True)

            # AV EO Linien
            layer = {
                'type': 'wms',
                'title': _translate('VeriSO_EE_PNF', 'AV EO Linien', None),
                'url': 'https://geodienste.ch/db/av/deu?',
                'layers': 'SOLI',
                'format': 'image/png'
                }
            vlayer = self.layer_loader.load(layer, False, True)

            # AV EO Flaechen
            layer = {
                'type': 'wms',
                'title': _translate('VeriSO_EE_PNF', 'AV EO Flaechen', None),
                'url': 'https://geodienste.ch/db/av/deu?',
                'layers': 'SOSF',
                'format': 'image/png',
                'style': 'pnf/pnfbe_av_eo_flaechen.qml'
                }
            vlayer = self.layer_loader.load(layer, False, True)

            # AV Bodenbedeckung
            layer = {
                'type': 'wms',
                'title': _translate(
                    'VeriSO_EE_PNF', 'AV Bodenbedeckung', None),
                'url': 'https://geodienste.ch/db/av/deu?',
                'layers': 'Bodenbedeckung',
                'format': 'image/jpeg',
                'style': 'pnf/pnfbe_av_bodenbedeckung.qml'
                }
            vlayer = self.layer_loader.load(layer, False, True)

            # DTM-Relief
            layer = {
                'type': 'wms',
                'title': _translate('VeriSO_EE_PNF', 'DTM-Relief', None),
                'url': 'https://www.geoservice.apps.be.ch/geoservice2/services/a42geo/a42geo_hoehenwms_d_fk/MapServer/WMSServer?',
                'layers': 'GEODB.LDTM50CM_LTRELIEF_STANDARD,GEODB.LDTM50CM_LTHOEHE_STANDARD',
                'format': 'image/png',
                'style': 'pnf/pnfbe_dtm-relief.qml'
                }
            vlayer = self.layer_loader.load(layer, False, True)

            # SWISSIMAGE Hintergrund
            layer = {
                'type': 'wms',
                'title': _translate('VeriSO_EE_PNF', 'SWISSIMAGE Hintergrund', None),
                'url': 'https://wms.swisstopo.admin.ch/?',
                'layers': 'ch.swisstopo.images-swissimage',
                'format': 'image/jpeg',
                }
            vlayer = self.layer_loader.load(layer, True, True)

        except Exception:
            QApplication.restoreOverrideCursor()
            exc_type, exc_value, exc_traceback = sys.exc_info()
            self.iface.messageBar().pushMessage(
                "Error", str(traceback.format_exc(exc_traceback)),
                level=Qgis.Critical, duration=5)
        QApplication.restoreOverrideCursor()
