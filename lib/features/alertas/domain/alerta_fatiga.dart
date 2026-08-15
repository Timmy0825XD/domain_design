import 'package:domain_design/core/comparaciones.dart';
import 'package:domain_design/core/json.dart';
import 'package:domain_design/features/alertas/domain/estado_alerta.dart';
import 'package:domain_design/features/alertas/domain/tipo_senal.dart';
import 'package:domain_design/features/alertas/domain/ubicacion.dart';

/// Una alerta de fatiga generada durante un viaje.
///
/// Es una **entidad**: tiene identidad propia. Dos alertas con el mismo
/// contenido exacto siguen siendo dos eventos distintos si su `id` es
/// distinto, porque cada una ocurrió en un instante específico del viaje.
class AlertaFatiga {
  const AlertaFatiga({
    required this.id,
    required this.viajeId,
    required this.senal,
    required this.ubicacion,
    required this.creadaEn,
    required this.estado,
    this.senalesAdicionales = const <String>[],
  });

  factory AlertaFatiga.fromJson(Map<String, dynamic> json) => AlertaFatiga(
        id: leerTexto(json, 'id'),
        viajeId: leerTexto(json, 'viajeId'),
        senal: TipoSenal.fromJson(leerTexto(json, 'senal')),
        ubicacion: Ubicacion.fromJson(leerMapa(json, 'ubicacion')),
        creadaEn: leerFecha(json, 'creadaEn'),
        estado: EstadoAlerta.fromJson(leerMapa(json, 'estado')),
        senalesAdicionales: leerTextos(json, 'senalesAdicionales'),
      );

  final String id;

  /// A qué viaje pertenece. Se referencia por id y no se embebe el viaje
  /// completo: acoplar la alerta al viaje entero obligaría a cargar y
  /// serializar mucho más de lo que esta entidad necesita conocer.
  final String viajeId;

  final TipoSenal senal;
  final Ubicacion ubicacion;
  final DateTime creadaEn;
  final EstadoAlerta estado;

  /// Otras señales detectadas en la misma ventana de tiempo, ej. bostezo
  /// junto con parpadeo. Vacía la mayoría de las veces.
  final List<String> senalesAdicionales;

  Map<String, dynamic> toJson() => {
        'id': id,
        'viajeId': viajeId,
        'senal': senal.toJson(),
        'ubicacion': ubicacion.toJson(),
        'creadaEn': creadaEn.toUtc().toIso8601String(),
        'estado': estado.toJson(),
        'senalesAdicionales': senalesAdicionales,
      };

  // ── Reglas de negocio ───────────────────────────────────────────────────
  // Viven aquí, no en un widget: una regla que depende de un BuildContext no
  // se puede probar en tres milisegundos.

  bool get esCritica => estado is Critica;

  bool get sePuedeDescartar => estado is! Descartada;

  bool get requiereAccionInmediata => estado.requiereAccionInmediata;

  /// El reloj entra como parámetro, no se lee dentro.
  ///
  /// Con `DateTime.now()` dentro, esta regla no se puede probar: el
  /// resultado dependería del instante exacto en que corra la prueba.
  Duration antiguedad(DateTime ahora) => ahora.difference(creadaEn);

  // ── Copia ───────────────────────────────────────────────────────────────

  AlertaFatiga copyWith({
    Ubicacion? ubicacion,
    EstadoAlerta? estado,
    List<String>? senalesAdicionales,
  }) =>
      AlertaFatiga(
        id: id, // la identidad no se copia con cambios
        viajeId: viajeId,
        senal: senal, // lo que se detectó no cambia después
        ubicacion: ubicacion ?? this.ubicacion,
        creadaEn: creadaEn, // ni el instante de creación
        estado: estado ?? this.estado,
        senalesAdicionales: senalesAdicionales ?? this.senalesAdicionales,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AlertaFatiga &&
          other.id == id &&
          other.viajeId == viajeId &&
          other.senal == senal &&
          other.ubicacion == ubicacion &&
          other.creadaEn == creadaEn &&
          other.estado == estado &&
          listasIguales(other.senalesAdicionales, senalesAdicionales);

  @override
  int get hashCode => Object.hash(
        id,
        viajeId,
        senal,
        ubicacion,
        creadaEn,
        estado,
        Object.hashAll(senalesAdicionales), // no Object.hash: hashearía la referencia
      );

  @override
  String toString() => 'AlertaFatiga($id, ${senal.toJson()}, ${estado.etiqueta})';
}
