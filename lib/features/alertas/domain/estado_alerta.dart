import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:domain_design/core/json.dart';
import 'package:domain_design/features/alertas/domain/ubicacion.dart';

part 'estado_alerta.freezed.dart';

/// En qué punto de su ciclo de vida está una alerta de fatiga.
///
/// Freezed genera automáticamente igualdad, hashCode, toString y la
/// infraestructura de la unión sellada.
@Freezed(
  unionKey: 'tipo',
  unionValueCase: FreezedUnionCase.snake,
)
sealed class EstadoAlerta with _$EstadoAlerta {
  const EstadoAlerta._();

  const factory EstadoAlerta.leve() = Leve;

  const factory EstadoAlerta.moderada(
    String recomendacion,
  ) = Moderada;

  @Assert(
    'accionTomada != ""',
    'una alerta crítica exige una acción tomada',
  )
  const factory EstadoAlerta.critica({
    required String accionTomada,
    Ubicacion? paradaSugerida,
  }) = Critica;

  @Assert(
    'motivo != ""',
    'descartar exige un motivo',
  )
  const factory EstadoAlerta.descartada(
    String motivo,
  ) = Descartada;

  /// El JSON continúa siendo validado manualmente para conservar
  /// CampoInvalido y los mensajes específicos del proyecto.
  factory EstadoAlerta.fromJson(Map<String, dynamic> json) {
    final tipo = leerTexto(json, 'tipo');

    return switch (tipo) {
      'leve' => const Leve(),
      'moderada' => Moderada(
          leerTexto(json, 'recomendacion'),
        ),
      'critica' => Critica(
          accionTomada: leerTexto(json, 'accionTomada'),
          paradaSugerida: _leerParadaSugerida(json),
        ),
      'descartada' => Descartada(
          leerTexto(json, 'motivo'),
        ),
      _ => throw CampoInvalido(
          'estado.tipo',
          'no es un estado conocido',
          tipo,
        ),
    };
  }

  static Ubicacion? _leerParadaSugerida(
    Map<String, dynamic> json,
  ) {
    final mapa = leerMapaOpcional(json, 'paradaSugerida');

    return mapa == null ? null : Ubicacion.fromJson(mapa);
  }

  /// Escritura manual para mantener exactamente el JSON que ya utiliza
  /// el proyecto.
  Map<String, dynamic> toJson() => switch (this) {
        Leve() => {
            'tipo': 'leve',
          },
        Moderada(:final recomendacion) => {
            'tipo': 'moderada',
            'recomendacion': recomendacion,
          },
        Critica(
          :final accionTomada,
          :final paradaSugerida,
        ) =>
          {
            'tipo': 'critica',
            'accionTomada': accionTomada,
            if (paradaSugerida != null)
              'paradaSugerida': paradaSugerida.toJson(),
          },
        Descartada(:final motivo) => {
            'tipo': 'descartada',
            'motivo': motivo,
          },
      };

  /// Regla de negocio.
  bool get requiereAccionInmediata => switch (this) {
        Critica() => true,
        Leve() || Moderada() || Descartada() => false,
      };

  /// Texto utilizado por la aplicación.
  String get etiqueta => switch (this) {
        Leve() => 'Fatiga leve',
        Moderada(:final recomendacion) =>
          'Fatiga moderada · $recomendacion',
        Critica(:final accionTomada) =>
          'Fatiga crítica · $accionTomada',
        Descartada(:final motivo) =>
          'Descartada: $motivo',
      };
}