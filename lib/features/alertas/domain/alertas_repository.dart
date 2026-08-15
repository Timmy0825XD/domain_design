import 'package:domain_design/features/alertas/domain/alerta_fatiga.dart';

/// Lo que la aplicación necesita saber de las alertas de fatiga.
///
/// `abstract interface class` = solo contrato: nadie puede heredar de aquí,
/// solo implementarlo.
abstract interface class AlertasRepository {
  Future<List<AlertaFatiga>> obtenerTodas();

  Future<AlertaFatiga?> obtenerPorId(String id);

  /// Método propio del dominio: el historial de alertas por viaje es
  /// justamente la base que el MVP necesita para el registro de viaje
  /// (sección 5, punto 6 del documento de concepto).
  Future<List<AlertaFatiga>> obtenerPorViaje(String viajeId);
}
