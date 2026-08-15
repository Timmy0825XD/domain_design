import 'package:domain_design/core/json.dart';

/// Un punto sobre la vía donde ocurrió, o se sugiere, algo.
///
/// Es un **objeto de valor**: dos ubicaciones con las mismas coordenadas son
/// la misma ubicación, así que no lleva `id` y se compara por contenido.
class Ubicacion {
  const Ubicacion({
    required this.latitud,
    required this.longitud,
    this.descripcion,
  });

  factory Ubicacion.fromJson(Map<String, dynamic> json) => Ubicacion(
        latitud: leerDecimal(json, 'latitud'),
        longitud: leerDecimal(json, 'longitud'),
        descripcion: leerTextoOpcional(json, 'descripcion'),
      );

  final double latitud;
  final double longitud;

  /// Referencia legible del tramo, por ejemplo "Vía La Jagua - Chiriguaná".
  /// Es opcional: no siempre hay una referencia útil para el punto exacto.
  final String? descripcion;

  Map<String, dynamic> toJson() => {
        'latitud': latitud,
        'longitud': longitud,
        if (descripcion != null) 'descripcion': descripcion,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Ubicacion &&
          other.latitud == latitud &&
          other.longitud == longitud &&
          other.descripcion == descripcion;

  @override
  int get hashCode => Object.hash(latitud, longitud, descripcion);

  @override
  String toString() => 'Ubicacion($latitud, $longitud, $descripcion)';
}