# RutaViva · E02, dominio de alertas de fatiga

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

Decisión: modelo escrito a mano, sin `freezed`. Con doce campos entre
entidad, valor y estados, el costo de mantener `==`/`hashCode`/`copyWith` a
mano todavía es bajo, y a cambio se conserva el mensaje de error de
`CampoInvalido`, que dice exactamente qué campo del JSON falló. Esa
ventaja importa más aquí que en un modelo con muchos más campos, porque los
datos de fatiga van a venir eventualmente de la cámara y de una API, no solo
de un archivo local controlado.

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
