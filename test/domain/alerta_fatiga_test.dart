import 'dart:convert';

import 'package:domain_design/core/json.dart';
import 'package:domain_design/features/alertas/domain/alerta_fatiga.dart';
import 'package:domain_design/features/alertas/domain/estado_alerta.dart';
import 'package:domain_design/features/alertas/domain/tipo_senal.dart';
import 'package:domain_design/features/alertas/domain/ubicacion.dart';
import 'package:flutter_test/flutter_test.dart';

AlertaFatiga ejemplo({EstadoAlerta? estado, List<String>? senalesAdicionales}) => AlertaFatiga(
      id: 'alerta-001',
      viajeId: 'viaje-001',
      senal: TipoSenal.parpadeoProlongado,
      ubicacion: const Ubicacion(
        latitud: 9.5697,
        longitud: -73.3419,
        descripcion: 'Vía La Jagua de Ibirico - Chiriguaná',
      ),
      creadaEn: DateTime.utc(2026, 8, 12, 14, 32),
      estado: estado ?? const Moderada('Hay una zona de descanso a 8 km, considera parar'),
      senalesAdicionales: senalesAdicionales ?? const <String>[],
    );

void main() {
  group('serialización', () {
    test('una alerta sobrevive la ida y vuelta a JSON sin perder nada', () {
      final original = ejemplo(
        estado: const Critica(
          accionTomada: 'alerta_sonora_maxima',
          paradaSugerida: Ubicacion(
            latitud: 10.4708,
            longitud: -73.2601,
            descripcion: 'Estación Terpel km 33',
          ),
        ),
        senalesAdicionales: const ['bostezo_frecuente'],
      );

      // Pasa por TEXTO, no solo por Map: así también se prueba que fechas y
      // objetos anidados sobreviven a jsonEncode.
      final texto = jsonEncode(original.toJson());
      final vuelta = AlertaFatiga.fromJson(jsonDecode(texto) as Map<String, dynamic>);

      expect(vuelta, equals(original));
    });

    test('una ubicación sin descripción se lee como null, no como texto vacío', () {
      final json = ejemplo().toJson();
      (json['ubicacion'] as Map<String, dynamic>).remove('descripcion');

      final alerta = AlertaFatiga.fromJson(json);
      expect(alerta.ubicacion.descripcion, isNull);
    });

    test('una alerta sin viajeId dice QUÉ campo falló, no solo que falló', () {
      final json = ejemplo().toJson()..remove('viajeId');

      expect(
        () => AlertaFatiga.fromJson(json),
        throwsA(isA<CampoInvalido>().having((e) => e.campo, 'campo', 'viajeId')),
      );
    });

    test('una señal desconocida se rechaza', () {
      final json = ejemplo().toJson()..['senal'] = 'ojos_cerrados';
      expect(() => AlertaFatiga.fromJson(json), throwsA(isA<CampoInvalido>()));
    });

    test('la hora se conserva en UTC y no se corre cinco horas', () {
      final json = ejemplo().toJson();
      expect(json['creadaEn'], '2026-08-12T14:32:00.000Z');
    });
  });

  group('igualdad y copia', () {
    test('dos alertas con los mismos datos son iguales', () {
      expect(ejemplo(), equals(ejemplo()));
    });

    test('dos alertas con los mismos datos comparten hashCode', () {
      // Sin esto, meterlas en un Set daría dos elementos donde debería haber uno.
      expect(ejemplo().hashCode, equals(ejemplo().hashCode));
      expect({ejemplo(), ejemplo()}.length, 1);
    });

    test('dos alertas con señales adicionales distintas NO son iguales', () {
      expect(
        ejemplo(senalesAdicionales: const ['a']),
        isNot(equals(ejemplo(senalesAdicionales: const ['b']))),
      );
    });

    test('copyWith cambia solo el estado, no la identidad ni la fecha', () {
      final original = ejemplo();
      final copia = original.copyWith(estado: const Descartada('falsa alarma'));

      expect(copia.estado, const Descartada('falsa alarma'));
      expect(copia.id, original.id);
      expect(copia.creadaEn, original.creadaEn);
    });
  });

  group('reglas de negocio', () {
    test('una alerta en estado crítico requiere acción inmediata', () {
      expect(
        ejemplo(estado: const Critica(accionTomada: 'alerta_sonora_maxima')).requiereAccionInmediata,
        isTrue,
      );
    });

    test('una alerta descartada ya no se puede volver a descartar', () {
      expect(ejemplo(estado: const Descartada('ya en descanso')).sePuedeDescartar, isFalse);
    });

    test('una alerta de hace 10 minutos tiene esa antigüedad exacta', () {
      final ahora = DateTime.utc(2026, 8, 12, 14, 42);
      expect(ejemplo().antiguedad(ahora), const Duration(minutes: 10));
    });

    test('la etiqueta de un estado crítico incluye la acción tomada', () {
      expect(
        const Critica(accionTomada: 'alerta_sonora_maxima').etiqueta,
        contains('alerta_sonora_maxima'),
      );
    });
  });
}