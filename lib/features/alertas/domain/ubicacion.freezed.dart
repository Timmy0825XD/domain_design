// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ubicacion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Ubicacion {

 double get latitud; double get longitud; String? get descripcion;
/// Create a copy of Ubicacion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UbicacionCopyWith<Ubicacion> get copyWith => _$UbicacionCopyWithImpl<Ubicacion>(this as Ubicacion, _$identity);

  /// Serializes this Ubicacion to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Ubicacion&&(identical(other.latitud, latitud) || other.latitud == latitud)&&(identical(other.longitud, longitud) || other.longitud == longitud)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitud,longitud,descripcion);

@override
String toString() {
  return 'Ubicacion(latitud: $latitud, longitud: $longitud, descripcion: $descripcion)';
}


}

/// @nodoc
abstract mixin class $UbicacionCopyWith<$Res>  {
  factory $UbicacionCopyWith(Ubicacion value, $Res Function(Ubicacion) _then) = _$UbicacionCopyWithImpl;
@useResult
$Res call({
 double latitud, double longitud, String? descripcion
});




}
/// @nodoc
class _$UbicacionCopyWithImpl<$Res>
    implements $UbicacionCopyWith<$Res> {
  _$UbicacionCopyWithImpl(this._self, this._then);

  final Ubicacion _self;
  final $Res Function(Ubicacion) _then;

/// Create a copy of Ubicacion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latitud = null,Object? longitud = null,Object? descripcion = freezed,}) {
  return _then(Ubicacion(
latitud: null == latitud ? _self.latitud : latitud // ignore: cast_nullable_to_non_nullable
as double,longitud: null == longitud ? _self.longitud : longitud // ignore: cast_nullable_to_non_nullable
as double,descripcion: freezed == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Ubicacion].
extension UbicacionPatterns on Ubicacion {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Ubicacion value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Ubicacion() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Ubicacion value)  $default,){
final _that = this;
switch (_that) {
case _Ubicacion():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Ubicacion value)?  $default,){
final _that = this;
switch (_that) {
case _Ubicacion() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double latitud,  double longitud,  String? descripcion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Ubicacion() when $default != null:
return $default(_that.latitud,_that.longitud,_that.descripcion);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double latitud,  double longitud,  String? descripcion)  $default,) {final _that = this;
switch (_that) {
case _Ubicacion():
return $default(_that.latitud,_that.longitud,_that.descripcion);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double latitud,  double longitud,  String? descripcion)?  $default,) {final _that = this;
switch (_that) {
case _Ubicacion() when $default != null:
return $default(_that.latitud,_that.longitud,_that.descripcion);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Ubicacion implements Ubicacion {
  const _Ubicacion({required this.latitud, required this.longitud, this.descripcion});
  factory _Ubicacion.fromJson(Map<String, dynamic> json) => _$UbicacionFromJson(json);

@override final  double latitud;
@override final  double longitud;
@override final  String? descripcion;

/// Create a copy of Ubicacion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UbicacionCopyWith<_Ubicacion> get copyWith => __$UbicacionCopyWithImpl<_Ubicacion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UbicacionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Ubicacion&&(identical(other.latitud, latitud) || other.latitud == latitud)&&(identical(other.longitud, longitud) || other.longitud == longitud)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitud,longitud,descripcion);

@override
String toString() {
  return 'Ubicacion(latitud: $latitud, longitud: $longitud, descripcion: $descripcion)';
}


}

/// @nodoc
abstract mixin class _$UbicacionCopyWith<$Res> implements $UbicacionCopyWith<$Res> {
  factory _$UbicacionCopyWith(_Ubicacion value, $Res Function(_Ubicacion) _then) = __$UbicacionCopyWithImpl;
@override @useResult
$Res call({
 double latitud, double longitud, String? descripcion
});




}
/// @nodoc
class __$UbicacionCopyWithImpl<$Res>
    implements _$UbicacionCopyWith<$Res> {
  __$UbicacionCopyWithImpl(this._self, this._then);

  final _Ubicacion _self;
  final $Res Function(_Ubicacion) _then;

/// Create a copy of Ubicacion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitud = null,Object? longitud = null,Object? descripcion = freezed,}) {
  return _then(_Ubicacion(
latitud: null == latitud ? _self.latitud : latitud // ignore: cast_nullable_to_non_nullable
as double,longitud: null == longitud ? _self.longitud : longitud // ignore: cast_nullable_to_non_nullable
as double,descripcion: freezed == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
