import 'package:domain_design/core/json.dart';
import 'package:domain_design/features/alertas/domain/ubicacion.dart';

/// En qué punto de su ciclo de vida está una alerta de fatiga.
///
/// `sealed` significa dos cosas: nadie fuera de este archivo puede añadir un
/// estado nuevo, y el compilador conoce la lista completa. Eso es lo que
/// permite que los `switch` de abajo sean exhaustivos sin `default`.
///
/// La alternativa ingenua —un enum más cuatro campos opcionales en la
/// entidad— dejaría escribir cosas como una alerta "leve" con un
/// `accionTomada` puesto, o una "crítica" sin ninguna acción. Con clases
/// selladas esas combinaciones inválidas ni siquiera compilan.
sealed class EstadoAlerta {
  const EstadoAlerta();

  /// El ÚNICO sitio donde un texto del JSON se convierte en un tipo.
  factory EstadoAlerta.fromJson(Map<String, dynamic> json) {
    final tipo = leerTexto(json, 'tipo');
    return switch (tipo) {
      'leve' => const Leve(),
      'moderada' => Moderada(leerTexto(json, 'recomendacion')),
      'critica' => Critica(
          accionTomada: leerTexto(json, 'accionTomada'),
          paradaSugerida: _leerParadaSugerida(json),
        ),
      'descartada' => Descartada(leerTexto(json, 'motivo')),
      _ => throw CampoInvalido('estado.tipo', 'no es un estado conocido', tipo),
    };
  }

  static Ubicacion? _leerParadaSugerida(Map<String, dynamic> json) {
    final mapa = leerMapaOpcional(json, 'paradaSugerida');
    return mapa == null ? null : Ubicacion.fromJson(mapa);
  }

  /// Y el único sitio donde vuelve a ser texto. Simétrico a fromJson: si
  /// añades un estado arriba y olvidas añadirlo aquí, esto no compila.
  Map<String, dynamic> toJson() => switch (this) {
        Leve() => {'tipo': 'leve'},
        Moderada(:final recomendacion) => {
            'tipo': 'moderada',
            'recomendacion': recomendacion,
          },
        Critica(:final accionTomada, :final paradaSugerida) => {
            'tipo': 'critica',
            'accionTomada': accionTomada,
            if (paradaSugerida != null) 'paradaSugerida': paradaSugerida.toJson(),
          },
        Descartada(:final motivo) => {'tipo': 'descartada', 'motivo': motivo},
      };

  /// Regla de negocio, no de interfaz: si la situación exige algo del
  /// conductor ahora mismo.
  bool get requiereAccionInmediata => switch (this) {
        Critica() => true,
        Leve() || Moderada() || Descartada() => false,
      };

  /// Texto para pantalla. Con un solo idioma en el proyecto, vive aquí y se
  /// prueba fácil; con varios, se movería a la capa de presentación.
  String get etiqueta => switch (this) {
        Leve() => 'Fatiga leve',
        Moderada(:final recomendacion) => 'Fatiga moderada · $recomendacion',
        Critica(:final accionTomada) => 'Fatiga crítica · $accionTomada',
        Descartada(:final motivo) => 'Descartada: $motivo',
      };
}

final class Leve extends EstadoAlerta {
  const Leve();

  @override
  bool operator ==(Object other) => other is Leve;

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() => 'Leve()';
}

final class Moderada extends EstadoAlerta {
  const Moderada(this.recomendacion);

  final String recomendacion;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Moderada && other.recomendacion == recomendacion;

  @override
  int get hashCode => Object.hash(runtimeType, recomendacion);

  @override
  String toString() => 'Moderada($recomendacion)';
}

final class Critica extends EstadoAlerta {
  // El assert documenta la regla y la caza en depuración. La GARANTÍA es
  // leerTexto, que rechaza el texto vacío también en producción.
  const Critica({required this.accionTomada, this.paradaSugerida})
      : assert(accionTomada != '', 'una alerta crítica exige una acción tomada');

  final String accionTomada;

  /// No siempre se conoce un punto de parada concreto al momento de la
  /// alerta; por eso es opcional y no un campo obligatorio más.
  final Ubicacion? paradaSugerida;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Critica &&
          other.accionTomada == accionTomada &&
          other.paradaSugerida == paradaSugerida;

  @override
  int get hashCode => Object.hash(runtimeType, accionTomada, paradaSugerida);

  @override
  String toString() => 'Critica($accionTomada, $paradaSugerida)';
}

final class Descartada extends EstadoAlerta {
  // Descartar sin motivo no se puede ni escribir: es la misma protección
  // que "Rechazado" en el ejemplo de reportes de la guía.
  const Descartada(this.motivo) : assert(motivo != '', 'descartar exige un motivo');

  final String motivo;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Descartada && other.motivo == motivo;

  @override
  int get hashCode => Object.hash(runtimeType, motivo);

  @override
  String toString() => 'Descartada($motivo)';
}