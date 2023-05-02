class StateService {
  static final List<String> medicels = [
    'ALERID',
    'ALLERTINE',
    'ANTOR',
    'ACEPRAL',
    'ALUSTAL'
        'BIOFENAC  ',
    'BUFEN'
        'CATALGINE',
    'COMAX',
    'CROFENAC',
    'CORDIPIN RETARD ',
    'DOLOMOL',
    'DOLIPRANE',
    'DICLOFENAC',
    'DICLOREUM',
    'DYCLOMAX'
        'EFFERALGAN',
    'EXPANDOL',
    'EPIFENAC 50',
    'HOTEMIN',
    'FENAMON SR',
    'FLOGOFENAC',
    'FIRMACIN',
    'FORTICAM',
    'FELDENE'
        'GEOFENAC',
    'INFLA-BAN ',
    'INDOMET',
    'INDOMETACINE E,C',
    'INDOCID',
    'JOPAMOL',
    'JAZOFEN',
    'PROFEN',
    'PANAMOR',
    'PHLOGOREN',
    'PROFENID',
    'PROXIDOL'
        'K',
    'KETOPROFENO RATIOPHARM ',
    'KETONAL',
    'KETOFENID',
    'KETOFAN'
        'LCAM ',
    'LOXEN',
    'LOXEN L,P',
    'LORAX'
        'VOLTARENE ',
    'XENID ',
    'XYCAM',
    'NEXORPAN',
    'NAPROXENE SOLUPHARM ',
    'NAREX',
    'NIFECARD',
    'NIFEDIPINE T20 STADA RETARD'
        'SAPOFEN 600 ',
    'SAPOFEN 600 ',
    'SAPOFEN JUNIOR '
  ];

  static List<String> getSuggestions(String query) {
    List<String> collection = [];
    collection.addAll(medicels);
    collection.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return collection;
  }
}
