class FixtureStore {
  FixtureStore();

  factory FixtureStore.seeded() {
    final store = FixtureStore();
    store.clients[demoClientId] = {
      'id': demoClientId,
      'name': 'Agrícola Santa Rosa SpA',
      'email': 'operaciones@santarosa.cl',
      'phone_number': '+56 9 8765 4321',
      'address': 'Camino Los Pozos 100, Ñuble',
      'dni': '76.543.210-K',
      'client_code': 'SR-01',
      'is_active': true,
    };
    store.clients['2'] = {
      'id': '2',
      'name': 'Comunidad de Aguas El Huape',
      'email': 'contacto@elhuape.cl',
      'phone_number': '+56 9 1122 3344',
      'address': 'El Huape, Pemuco',
      'dni': '65.111.222-3',
      'client_code': 'EH-02',
      'is_active': true,
    };
    return store;
  }

  static const demoClientId = '1';

  final Map<String, Map<String, dynamic>> clients = {};
  final Map<String, Map<String, dynamic>> groups = {};
  final Map<String, Map<String, dynamic>> fieldDefs = {};
  final Map<String, Map<String, dynamic>> values = {};
  final Map<String, Map<String, dynamic>> templates = {};
  final Map<String, Map<String, dynamic>> surveys = {};
  final Map<String, Map<String, dynamic>> responses = {};
  final Map<String, Map<String, dynamic>> cardTemplates = {};

  int _seq = 0;

  String nextId([String prefix = 'fx']) => '$prefix-${++_seq}';
}
