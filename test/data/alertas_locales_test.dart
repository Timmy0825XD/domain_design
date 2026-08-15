import 'package:domain_design/core/json.dart';
import 'package:domain_design/features/alertas/data/alertas_locales.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

const _json = '''
[
  {
    "id": "alerta-001",
    "viajeId": "viaje-001",
    "senal": "parpadeo_prolongado",
    "ubicacion": { "latitud": 9.57, "longitud": -73.34 },
    "creadaEn": "2026-08-12T14:32:00Z",
    "estado": { "tipo": "leve" }
  }
]
''';

void main() {
  test('lee la lista completa del archivo', () async {
    final repo = AlertasLocales(lector: (_) async => _json);
    expect((await repo.obtenerTodas()).length, 1);
  });

  test('busca por id y devuelve null cuando no está', () async {
    final repo = AlertasLocales(lector: (_) async => _json);

    expect((await repo.obtenerPorId('alerta-001'))?.viajeId, 'viaje-001');
    expect(await repo.obtenerPorId('no-existe'), isNull);
  });

  test('filtra las alertas de un viaje específico', () async {
    final repo = AlertasLocales(lector: (_) async => _json);

    expect((await repo.obtenerPorViaje('viaje-001')).length, 1);
    expect((await repo.obtenerPorViaje('viaje-999')).length, 0);
  });

  test('un archivo que no es una lista se rechaza', () async {
    final repo = AlertasLocales(lector: (_) async => '{"a": 1}');
    expect(repo.obtenerTodas(), throwsA(isA<CampoInvalido>()));
  });

  test(
    'el asset declarado en pubspec existe y el modelo lo entiende',
    () async {
      // Esta SÍ toca el bundle real: es la única que caza "olvidé el pubspec".
      TestWidgetsFlutterBinding.ensureInitialized();

      final repo = AlertasLocales(lector: rootBundle.loadString);
      expect((await repo.obtenerTodas()).length, greaterThanOrEqualTo(3));
    },
  );
}
