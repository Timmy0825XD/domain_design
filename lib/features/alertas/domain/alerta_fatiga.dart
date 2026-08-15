import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:domain_design/core/json.dart';
import 'package:domain_design/features/alertas/domain/estado_alerta.dart';
import 'package:domain_design/features/alertas/domain/tipo_senal.dart';
import 'package:domain_design/features/alertas/domain/ubicacion.dart';

part 'alerta_fatiga.freezed.dart';

@Freezed(
  fromJson: false,
  toJson: false,
)
abstract class AlertaFatiga with _$AlertaFatiga {
  const factory AlertaFatiga({
    required String id,
    required String viajeId,
    required TipoSenal senal,
    required Ubicacion ubicacion,
    required DateTime creadaEn,
    required EstadoAlerta estado,
    @Default(<String>[]) List<String> senalesAdicionales,
  }) = _AlertaFatiga;

  const AlertaFatiga._();

  factory AlertaFatiga.fromJson(Map<String, dynamic> json) => AlertaFatiga(
        id: leerTexto(json, 'id'),
        viajeId: leerTexto(json, 'viajeId'),
        senal: TipoSenal.fromJson(
          leerTexto(json, 'senal'),
        ),
        ubicacion: Ubicacion.fromJson(
          leerMapa(json, 'ubicacion'),
        ),
        creadaEn: leerFecha(json, 'creadaEn'),
        estado: EstadoAlerta.fromJson(
          leerMapa(json, 'estado'),
        ),
        senalesAdicionales: leerTextos(
          json,
          'senalesAdicionales',
        ),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'viajeId': viajeId,
        'senal': senal.toJson(),
        'ubicacion': ubicacion.toJson(),
        'creadaEn': creadaEn.toUtc().toIso8601String(),
        'estado': estado.toJson(),
        'senalesAdicionales': senalesAdicionales,
      };

  bool get esCritica => estado is Critica;

  bool get sePuedeDescartar => estado is! Descartada;

  bool get requiereAccionInmediata =>
      estado.requiereAccionInmediata;

  Duration antiguedad(DateTime ahora) =>
      ahora.difference(creadaEn);
}