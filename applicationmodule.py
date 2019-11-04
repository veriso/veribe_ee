# -*- coding: utf-8 -*-

from veriso.base.utils.utils import dynamic_import
from veriso.modules.applicationmodule_base import ApplicationModuleBase
from veriso.base.utils.utils import tr


class ApplicationModule(ApplicationModuleBase):
    """
    This is the minimum required implementation to have your own module
    """

    def __init__(self, veriso):
        super(ApplicationModule, self).__init__(veriso)

    def do_load_defects(self):
        defects_module = 'veriso.modules.loaddefects_base'
        defects_module = dynamic_import(defects_module)
        tr_tag = self.module_name
        d = defects_module.LoadDefectsBase(self.iface, tr_tag)

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
                'writable_only_by': ['agi']}}

        d.layers = {
            'point': {
                "type": "postgres",
                "title": tr(u"Mängelliste (Punkte)", tr_tag, None),
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
                "title": tr(u"Mängelliste (Punkte) Beschreibung", tr_tag, None),
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
                "title": tr(u"Mängelliste (Linien)", tr_tag, None),
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
                "title": tr(u"Mängelliste (Linien) Beschreibung", tr_tag, None),
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
                "title": tr(u"Mängelliste (Polygone)", tr_tag, None),
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
                "title": tr(u"Mängelliste (Polygone) Beschreibung", tr_tag, None),
                "featuretype": "t_maengel_polygon",
                "geom": "the_geom",
                "key": "ogc_fid",
                "readonly": True,
                "sql": "",
                "group": d.group,
                "style": "maengel/maengelliste_polygone_beschreibung.qml",
                "fields": fields
                }
            }

        return d.run()
