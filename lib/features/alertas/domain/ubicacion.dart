import 'package:freezed_annotation/freezed_annotation.dart';

part 'ubicacion.freezed.dart';
part 'ubicacion.g.dart';

/// Un punto sobre la vía donde ocurrió, o se sugiere, algo.
///
/// Es un objeto de valor: dos ubicaciones con las mismas coordenadas son
/// la misma ubicación, así que no lleva `id` y se compara por contenido.
@freezed
abstract class Ubicacion with _$Ubicacion {
  const factory Ubicacion({
    required double latitud,
    required double longitud,
    String? descripcion,
  }) = _Ubicacion;

  factory Ubicacion.fromJson(Map<String, dynamic> json) =>
      _$UbicacionFromJson(json);
}