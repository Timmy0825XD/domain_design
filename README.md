# RutaViva · E02, dominio de alertas de fatiga

[![CI](../../actions/workflows/ci.yml/badge.svg)](../../actions/workflows/ci.yml)

RutaViva es un copiloto de carretera que cruza el estado de alerta del
conductor con el clima, el tráfico y el tipo de vía para entregar una
recomendación de seguridad, no una lista de datos sueltos. Este laboratorio
modela la pieza central de ese concepto: la alerta de fatiga.

## El dominio

- `AlertaFatiga` — entidad principal. Identidad: `id`. Referencia a su viaje
  por `viajeId` en vez de embeber el viaje completo.
- `Ubicacion` — objeto de valor. Coordenadas más una descripción opcional del
  tramo.
- `EstadoAlerta` — sellada, con cuatro variantes: `Leve`, `Moderada`
  (lleva una recomendación), `Critica` (lleva la acción tomada y,
  opcionalmente, una parada sugerida) y `Descartada` (lleva el motivo del
  conductor).
- `TipoSenal` — enum simple para lo que detectó la cámara. No es un estado
  porque ningún valor carga datos propios, solo clasifica.

Se eligió `AlertaFatiga` como entidad, y no `Viaje`, porque es la pieza que
representa el concepto diferenciador del producto: cruzar una señal de
fatiga con el contexto de la vía y convertirla en una única recomendación
priorizada.

Decisión: modelo con `freezed` para generar `==`, `hashCode`, `copyWith` y `toString`, manteniendo manual el JSON de `AlertaFatiga` y `EstadoAlerta` para conservar las validaciones mediante `CampoInvalido`.

## Cómo correrlo

```bash
flutter pub get
flutter test
flutter test --reporter expanded   # ver el nombre de cada prueba
flutter run
```

Ver `PUBSPEC_SNIPPET.md` para lo que hay que fusionar en tu `pubspec.yaml`
real antes del primer `flutter pub get`.

## Estructura

```
lib/
├─ core/                          # ayudantes sin dueño: json.dart, comparaciones.dart
└─ features/
   └─ alertas/
      ├─ domain/                  # sin imports de Flutter
      │  ├─ ubicacion.dart
      │  ├─ tipo_senal.dart
      │  ├─ estado_alerta.dart
      │  ├─ alerta_fatiga.dart
      │  └─ alertas_repository.dart
      └─ data/
         └─ alertas_locales.dart  # hoy: JSON local. Después: API/Firestore.
assets/data/alertas.json
```
# RutaViva · E02, dominio de alertas de fatiga

[![CI](../../actions/workflows/ci.yml/badge.svg)](../../actions/workflows/ci.yml)

RutaViva es un copiloto de carretera que analiza señales de fatiga del conductor y las relaciona con el contexto del viaje para generar una recomendación de seguridad.

## El dominio

* `AlertaFatiga` — entidad principal. Identidad: `id`.
* `Ubicacion` — objeto de valor con coordenadas y descripción opcional.
* `EstadoAlerta` — unión sellada: `Leve`, `Moderada`, `Critica` y `Descartada`.
* `TipoSenal` — enum que clasifica la señal detectada.



## Cómo correrlo

```bash
flutter pub get
flutter analyze
flutter test
flutter run
```
