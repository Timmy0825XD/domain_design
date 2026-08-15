import 'dart:convert';

import 'package:domain_design/core/json.dart';
import 'package:domain_design/features/alertas/domain/alerta_fatiga.dart';
import 'package:domain_design/features/alertas/domain/alertas_repository.dart';
import 'package:flutter/services.dart';

/// Cómo se lee un archivo de texto. Se inyecta para poder probar sin assets.
typedef LectorDeAssets = Future<String> Function(String ruta);

class AlertasLocales implements AlertasRepository {
  /// El lector entra por el constructor. En producción es `rootBundle`; en
  /// las pruebas, una función que devuelve una cadena. Esa costura de dos
  /// líneas es lo que hace que las pruebas no necesiten Flutter ni el
  /// bundle, y es la misma costura que en el futuro permitirá cambiar el
  /// archivo local por una API o por Firestore sin tocar el resto.
  AlertasLocales({
    LectorDeAssets? lector,
    this.ruta = 'assets/data/alertas.json',
  }) : _lector = lector ?? rootBundle.loadString;

  final LectorDeAssets _lector;
  final String ruta;

  /// El archivo no cambia mientras la app corre: leerlo y parsearlo en cada
  /// pantalla sería tirar trabajo a la basura.
  List<AlertaFatiga>? _cache;

  @override
  Future<List<AlertaFatiga>> obtenerTodas() async {
    final guardado = _cache;
    if (guardado != null) return guardado;

    final crudo = await _lector(ruta);
    final decodificado = jsonDecode(crudo);

    if (decodificado is! List) {
      throw const CampoInvalido(
        '(raíz)',
        'el archivo debe contener una lista',
        null,
      );
    }

    return _cache = decodificado
        .map((e) => AlertaFatiga.fromJson(e as Map<String, dynamic>))
        .toList(growable: false);
  }

  @override
  Future<AlertaFatiga?> obtenerPorId(String id) async {
    // Bucle explícito: devuelve null en vez de lanzar cuando no encuentra,
    // y se lee mejor que firstWhere con un orElse de relleno.
    for (final alerta in await obtenerTodas()) {
      if (alerta.id == id) return alerta;
    }
    return null;
  }

  @override
  Future<List<AlertaFatiga>> obtenerPorViaje(String viajeId) async {
    final todas = await obtenerTodas();
    return todas.where((a) => a.viajeId == viajeId).toList(growable: false);
  }
}
