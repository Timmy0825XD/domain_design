import 'package:domain_design/core/json.dart';

/// Qué comportamiento del conductor disparó la alerta.
///
/// A diferencia de [EstadoAlerta], esto NO es un estado: ningún valor carga
/// datos distintos, solo clasifica la señal que vio la cámara. Por eso es un
/// enum simple y no una clase sellada. Mezclar los dos conceptos —"cosas que
/// solo clasifican" con "situaciones que cargan datos propios"— es el error
/// más común al aplicar el paso 6 de la guía.
enum TipoSenal {
  parpadeoProlongado,
  bostezoFrecuente;

  static TipoSenal fromJson(String valor) => switch (valor) {
        'parpadeo_prolongado' => TipoSenal.parpadeoProlongado,
        'bostezo_frecuente' => TipoSenal.bostezoFrecuente,
        _ => throw CampoInvalido('senal', 'no es una señal conocida', valor),
      };

  String toJson() => switch (this) {
        TipoSenal.parpadeoProlongado => 'parpadeo_prolongado',
        TipoSenal.bostezoFrecuente => 'bostezo_frecuente',
      };
}