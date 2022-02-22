# -*- coding: utf-8 -*-

from veriso.base.utils.utils import dynamic_import
from veriso.modules.applicationmodule_base import ApplicationModuleBase
from qgis.PyQt.QtWidgets import QMenu, QMenuBar
from qgis.PyQt.QtCore import QCoreApplication, QTranslator, QSettings


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
        # self.load_module_translations()
        self.do_init_forest_defects_menu()

    def load_module_translations(self):
        """Load the modules translations
        """
        locale = QSettings().value('locale/userLocale')[0:2]
        self.translator = QTranslator()
        self.translator.load(
            os.path.join(
                self.module_dir,
                'i18n',
                'veribe_ee_{}.qm'.format(locale)))
        QCoreApplication.installTranslator(self.translator)

    def do_init_forest_defects_menu(self):
        forest_defects_menu_name = "VeriSO.Main.LoadForestDefectsMenu"
        menubar = self.toolbar.findChild(
            QMenuBar, 'VeriSO.Main.LoadDefectsMenuBar')

        for action in menubar.actions():
            if action.menu().objectName() == forest_defects_menu_name:
                menubar.removeAction(action)
                break

        # Specialized defects menu only for forest points
        menu = QMenu(menubar)
        menu.setObjectName(forest_defects_menu_name)
        menu.setTitle(self.tr("Forest Defects"))
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
            d.group = self.tr("Wald Mängel")
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
            'datum': {'widget': 'Hidden'},
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
                'alias': self.tr('Bezeichnung:'),
                'writable_only_by': ['agi', 'avor']},
            'bem': {
                'widget': 'TextEdit',
                'alias': self.tr('Bemerkung:'),
                'config': {"IsMultiline": True},
                'writable_only_by': ['agi', 'avor']},
            'datum': {'widget': 'Hidden'},
            'bem_forst': {
                'widget': 'TextEdit',
                'alias': self.tr('Bemerkung Forst:'),
                'config': {"IsMultiline": True},
                'writable_only_by': ['agi', 'forst']},
        }

        d.layers = {
            'default': {
                'point': {
                    "type": "postgres",
                    "title": self.tr("Mängelliste (Punkte)"),
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
                    "title": self.tr("Mängelliste (Punkte) Beschreibung"),
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
                    "title": self.tr("Mängelliste (Linien)"),
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
                    "title": self.tr("Mängelliste (Linien) Beschreibung"),
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
                    "title": self.tr("Mängelliste (Polygone)"),
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
                    "title": self.tr("Mängelliste (Polygone) Beschreibung"),
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
                    "title": self.tr("Mängelliste (Punkte)"),
                    "featuretype": "t_forest_maengel_punkt",
                    "geom": "the_geom",
                    "key": "ogc_fid",
                    "readonly": True,
                    "sql": "",
                    "group": d.group,
                    "style": "maengel/maengelliste_punkte.qml",
                    "fields": forest_fields
                },
                'pointdesc': {
                    "type": "postgres",
                    "title": self.tr("Mängelliste (Punkte) Beschreibung"),
                    "featuretype": "t_forest_maengel_punkt",
                    "geom": "the_geom",
                    "key": "ogc_fid",
                    "readonly": True,
                    "sql": "",
                    "group": d.group,
                    "style": "maengel/maengelliste_punkte_beschreibung.qml",
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
