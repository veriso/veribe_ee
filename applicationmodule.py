# -*- coding: utf-8 -*-

from veriso.base.utils.utils import dynamic_import
from veriso.modules.applicationmodule_base import ApplicationModuleBase
from veriso.base.utils.utils import tr, get_default_db
from qgis.PyQt.QtWidgets import QMenu, QMenuBar

import os


class ApplicationModule(ApplicationModuleBase):
    """
    This is the minimum required implementation to have your own module
    """

    def __init__(self, veriso):
        super(ApplicationModule, self).__init__(veriso)
        self.module_dir = os.path.dirname(__file__)

    def init_gui(self):
        super(ApplicationModule, self).init_gui()
        self.do_init_forest_defects_menu()

    def do_init_forest_defects_menu(self):
        tr_tag = self.module_name
        forest_defects_menu_name = "VeriSO.Main.LoadForestDefectsMenu"
        menubar = self.toolbar.findChild(
            QMenuBar, 'VeriSO.Main.LoadDefectsMenuBar')

        for action in menubar.actions():
            if action.menu().objectName() == forest_defects_menu_name:
                menubar.removeAction(action)
                break

        # Check whether the forest tables exists
        try:
            db = get_default_db()

            for table_name in self.get_defects_table_names()["forest"].values():
                query = db.exec_(
                    """
                        SELECT ogc_fid FROM %s.%s;
                    """ % (self.settings.value("project/displayname"), table_name)
                )

                if query.record().indexOf("ogc_fid") == -1:
                    return
        except:
            return

        # Specialized defects menu only for forest points
        menu = QMenu(menubar)
        menu.setObjectName(forest_defects_menu_name)
        menu.setTitle(tr("Forest Defects", tr_tag))
        # Add defects dock action from default defects menu
        default_menu = menubar.findChild(QMenu, 'VeriSO.Main.LoadDefectsMenu')
        for action in default_menu.actions():
            if action.objectName() == "VeriSO.Main.LoadDefectsMenuBar.ShowDock":
                menu.addAction(action)
                break

        self.add_defects_actions(menu, "forest")
        menubar.addMenu(menu)

    def do_load_defects(self, defects_type):
        defects_module = 'veriso.modules.loaddefects_base'
        defects_module = dynamic_import(defects_module)
        tr_tag = self.module_name
        d = defects_module.LoadDefectsBase(self.iface, tr_tag, defects_type)
        if defects_type == "forest":
            d.group = tr("Mängel Wald", tr_tag)
            d.group += " (" + str(d.project_id) + ")"

        fields = {
            'ogc_fid': {'widget': 'TextEdit',
                        'readonly': True,
                        'config': {"Editable": False}},
            'topic': {'widget': 'Enumeration',
                      'default': 'Bodenbedeckung',
                      'alias': 'Topic:',
                      'writable_only_by': ['agi', 'avor']},
            'bezeichnun': {
                'widget': 'Enumeration',
                'alias': 'Bezeichnung:',
                'writable_only_by': ['agi', 'avor']},
            'abrechnung': {
                'widget': 'Enumeration',
                'default': 'PNF',
                'alias': 'Abrechnung:',
                'writable_only_by': ['agi', 'avor']},
            'bem_avor': {
                'widget': 'TextEdit',
                'alias': 'Bemerkung AVOR:',
                'config': {"IsMultiline": True},
                'writable_only_by': ['agi', 'avor']},
            'datum': {
                'widget': 'Hidden',
                'alias': tr('datum', tr_tag)
            },
            'bem_nfg': {
                'widget': 'TextEdit',
                'alias': 'Bemerkung NFG:',
                'config': {"IsMultiline": True},
                'writable_only_by': ['agi', 'geometer']},
            'forstorgan': {
                'widget': 'Enumeration',
                'alias': 'Forstorgan:',
                'writable_only_by': ['agi', 'forst']},
            'bem_forst': {
                'widget': 'TextEdit',
                'alias': 'Bemerkung Forst:',
                'config': {"IsMultiline": True},
                'writable_only_by': ['agi', 'forst']},
            'verifikati': {
                'widget': 'Enumeration',
                'alias': 'Verifikation:',
                'writable_only_by': ['agi']},
            'bem_verifi': {
                'widget': 'TextEdit',
                'alias': 'Bemerkung Verifikation:',
                'config': {"IsMultiline": True},
                'writable_only_by': ['agi']},
            'erledigt': {
                'widget': 'CheckBox',
                'alias': 'Erledigt:',
                'config': {
                    'CheckedState': 't',
                    'UncheckedState': 'f'},
                'writable_only_by': ['agi']}
        }

        forest_fields = {
            'ogc_fid': {'widget': 'TextEdit',
                        'readonly': True,
                        'config': {"Editable": False}},
            'bezeichnung': {
                'widget': 'Enumeration',
                'alias': tr('Bezeichnung:', tr_tag),
                'writable_only_by': ['agi', 'avor']},
            'bem_av': {
                'widget': 'TextEdit',
                'alias': tr('Bemerkung AV:', tr_tag),
                'config': {"IsMultiline": True},
                'writable_only_by': ['agi', 'avor']},
            'datum': {
                'widget': 'Hidden',
                'alias': tr('datum', tr_tag)
            },
            'bem_forst': {
                'widget': 'TextEdit',
                'alias': tr('Bemerkung Forst:', tr_tag),
                'config': {"IsMultiline": True},
                'writable_only_by': ['agi', 'forst']},
        }

        d.layers = {
            'default': {
                'point': {
                    "type": "postgres",
                    "title": tr("Mängelliste (Punkte)", tr_tag),
                    "featuretype": "t_maengel_punkt",
                    "geom": "the_geom",
                    "key": "ogc_fid",
                    "readonly": True,
                    "sql": "",
                    "group": d.group,
                    "style": "maengel/maengelliste_punkte.qml",
                    "fields": fields
                },
                'pointdesc': {
                    "type": "postgres",
                    "title": tr("Mängelliste (Punkte) Beschreibung", tr_tag),
                    "featuretype": "t_maengel_punkt",
                    "geom": "the_geom",
                    "key": "ogc_fid",
                    "readonly": True,
                    "sql": "",
                    "group": d.group,
                    "style": "maengel/maengelliste_punkte_beschreibung.qml",
                    "fields": fields
                },
                'line': {
                    "type": "postgres",
                    "title": tr("Mängelliste (Linien)", tr_tag),
                    "featuretype": "t_maengel_linie",
                    "geom": "the_geom",
                    "key": "ogc_fid",
                    "readonly": True,
                    "sql": "",
                    "group": d.group,
                    "style": "maengel/maengelliste_linien.qml",
                    "fields": fields
                },
                'linedesc': {
                    "type": "postgres",
                    "title": tr("Mängelliste (Linien) Beschreibung", tr_tag),
                    "featuretype": "t_maengel_linie",
                    "geom": "the_geom",
                    "key": "ogc_fid",
                    "readonly": True,
                    "sql": "",
                    "group": d.group,
                    "style": "maengel/maengelliste_linien_beschreibung.qml",
                    "fields": fields
                },
                'polygon': {
                    "type": "postgres",
                    "title": tr("Mängelliste (Polygone)", tr_tag),
                    "featuretype": "t_maengel_polygon",
                    "geom": "the_geom",
                    "key": "ogc_fid",
                    "readonly": True,
                    "sql": "",
                    "group": d.group,
                    "style": "maengel/maengelliste_polygone.qml",
                    "fields": fields
                },
                'polygondesc': {
                    "type": "postgres",
                    "title": tr("Mängelliste (Polygone) Beschreibung", tr_tag),
                    "featuretype": "t_maengel_polygon",
                    "geom": "the_geom",
                    "key": "ogc_fid",
                    "readonly": True,
                    "sql": "",
                    "group": d.group,
                    "style": "maengel/maengelliste_polygone_beschreibung.qml",
                    "fields": fields
                }
            },
            'forest': {
                'point': {
                    "type": "postgres",
                    "title": tr("Mängelliste (Punkte)", tr_tag),
                    "featuretype": "t_forest_maengel_punkt",
                    "geom": "the_geom",
                    "key": "ogc_fid",
                    "readonly": True,
                    "sql": "",
                    "group": d.group,
                    "style": "maengel/maengelliste_wald_punkte.qml",
                    "fields": forest_fields
                },
                'pointdesc': {
                    "type": "postgres",
                    "title": tr("Mängelliste (Punkte) Beschreibung", tr_tag),
                    "featuretype": "t_forest_maengel_punkt",
                    "geom": "the_geom",
                    "key": "ogc_fid",
                    "readonly": True,
                    "sql": "",
                    "group": d.group,
                    "style": "maengel/maengelliste_wald_punkte_beschreibung.qml",
                    "fields": forest_fields
                }
            }
        }

        return d.run()

    def get_defects_table_names(self):
        """Return the table names of the defects tables

        Returns:
            dict: dict containing the default table names
        """
        return {
            'default': {
                "point": "t_maengel_punkt",
                "line": "t_maengel_linie",
                "polygon": "t_maengel_polygon"
            },
            'forest': {
                "point": "t_forest_maengel_punkt"
            }
        }
