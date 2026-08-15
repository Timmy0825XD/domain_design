// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alerta_fatiga.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AlertaFatiga {

 String get id; String get viajeId; TipoSenal get senal; Ubicacion get ubicacion; DateTime get creadaEn; EstadoAlerta get estado; List<String> get senalesAdicionales;
/// Create a copy of AlertaFatiga
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlertaFatigaCopyWith<AlertaFatiga> get copyWith => _$AlertaFatigaCopyWithImpl<AlertaFatiga>(this as AlertaFatiga, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlertaFatiga&&(identical(other.id, id) || other.id == id)&&(identical(other.viajeId, viajeId) || other.viajeId == viajeId)&&(identical(other.senal, senal) || other.senal == senal)&&(identical(other.ubicacion, ubicacion) || other.ubicacion == ubicacion)&&(identical(other.creadaEn, creadaEn) || other.creadaEn == creadaEn)&&(identical(other.estado, estado) || other.estado == estado)&&const DeepCollectionEquality().equals(other.senalesAdicionales, senalesAdicionales));
}


@override
int get hashCode => Object.hash(runtimeType,id,viajeId,senal,ubicacion,creadaEn,estado,const DeepCollectionEquality().hash(senalesAdicionales));

@override
String toString() {
  return 'AlertaFatiga(id: $id, viajeId: $viajeId, senal: $senal, ubicacion: $ubicacion, creadaEn: $creadaEn, estado: $estado, senalesAdicionales: $senalesAdicionales)';
}


}

/// @nodoc
abstract mixin class $AlertaFatigaCopyWith<$Res>  {
  factory $AlertaFatigaCopyWith(AlertaFatiga value, $Res Function(AlertaFatiga) _then) = _$AlertaFatigaCopyWithImpl;
@useResult
$Res call({
 String id, String viajeId, TipoSenal senal, Ubicacion ubicacion, DateTime creadaEn, EstadoAlerta estado, List<String> senalesAdicionales
});


$UbicacionCopyWith<$Res> get ubicacion;$EstadoAlertaCopyWith<$Res> get estado;

}
/// @nodoc
class _$AlertaFatigaCopyWithImpl<$Res>
    implements $AlertaFatigaCopyWith<$Res> {
  _$AlertaFatigaCopyWithImpl(this._self, this._then);

  final AlertaFatiga _self;
  final $Res Function(AlertaFatiga) _then;

/// Create a copy of AlertaFatiga
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? viajeId = null,Object? senal = null,Object? ubicacion = null,Object? creadaEn = null,Object? estado = null,Object? senalesAdicionales = null,}) {
  return _then(AlertaFatiga(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,viajeId: null == viajeId ? _self.viajeId : viajeId // ignore: cast_nullable_to_non_nullable
as String,senal: null == senal ? _self.senal : senal // ignore: cast_nullable_to_non_nullable
as TipoSenal,ubicacion: null == ubicacion ? _self.ubicacion : ubicacion // ignore: cast_nullable_to_non_nullable
as Ubicacion,creadaEn: null == creadaEn ? _self.creadaEn : creadaEn // ignore: cast_nullable_to_non_nullable
as DateTime,estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as EstadoAlerta,senalesAdicionales: null == senalesAdicionales ? _self.senalesAdicionales : senalesAdicionales // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of AlertaFatiga
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UbicacionCopyWith<$Res> get ubicacion {
  
  return $UbicacionCopyWith<$Res>(_self.ubicacion, (value) {
    return _then(_self.copyWith(ubicacion: value));
  });
}/// Create a copy of AlertaFatiga
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EstadoAlertaCopyWith<$Res> get estado {
  
  return $EstadoAlertaCopyWith<$Res>(_self.estado, (value) {
    return _then(_self.copyWith(estado: value));
  });
}
}


/// Adds pattern-matching-related methods to [AlertaFatiga].
extension AlertaFatigaPatterns on AlertaFatiga {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AlertaFatiga value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AlertaFatiga() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AlertaFatiga value)  $default,){
final _that = this;
switch (_that) {
case _AlertaFatiga():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AlertaFatiga value)?  $default,){
final _that = this;
switch (_that) {
case _AlertaFatiga() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String viajeId,  TipoSenal senal,  Ubicacion ubicacion,  DateTime creadaEn,  EstadoAlerta estado,  List<String> senalesAdicionales)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AlertaFatiga() when $default != null:
return $default(_that.id,_that.viajeId,_that.senal,_that.ubicacion,_that.creadaEn,_that.estado,_that.senalesAdicionales);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String viajeId,  TipoSenal senal,  Ubicacion ubicacion,  DateTime creadaEn,  EstadoAlerta estado,  List<String> senalesAdicionales)  $default,) {final _that = this;
switch (_that) {
case _AlertaFatiga():
return $default(_that.id,_that.viajeId,_that.senal,_that.ubicacion,_that.creadaEn,_that.estado,_that.senalesAdicionales);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String viajeId,  TipoSenal senal,  Ubicacion ubicacion,  DateTime creadaEn,  EstadoAlerta estado,  List<String> senalesAdicionales)?  $default,) {final _that = this;
switch (_that) {
case _AlertaFatiga() when $default != null:
return $default(_that.id,_that.viajeId,_that.senal,_that.ubicacion,_that.creadaEn,_that.estado,_that.senalesAdicionales);case _:
  return null;

}
}

}

/// @nodoc


class _AlertaFatiga extends AlertaFatiga {
  const _AlertaFatiga({required this.id, required this.viajeId, required this.senal, required this.ubicacion, required this.creadaEn, required this.estado,  List<String> senalesAdicionales = const <String>[]}): _senalesAdicionales = senalesAdicionales,super._();
  

@override final  String id;
@override final  String viajeId;
@override final  TipoSenal senal;
@override final  Ubicacion ubicacion;
@override final  DateTime creadaEn;
@override final  EstadoAlerta estado;
 final  List<String> _senalesAdicionales;
@override@JsonKey() List<String> get senalesAdicionales {
  if (_senalesAdicionales is EqualUnmodifiableListView) return _senalesAdicionales;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_senalesAdicionales);
}


/// Create a copy of AlertaFatiga
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlertaFatigaCopyWith<_AlertaFatiga> get copyWith => __$AlertaFatigaCopyWithImpl<_AlertaFatiga>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlertaFatiga&&(identical(other.id, id) || other.id == id)&&(identical(other.viajeId, viajeId) || other.viajeId == viajeId)&&(identical(other.senal, senal) || other.senal == senal)&&(identical(other.ubicacion, ubicacion) || other.ubicacion == ubicacion)&&(identical(other.creadaEn, creadaEn) || other.creadaEn == creadaEn)&&(identical(other.estado, estado) || other.estado == estado)&&const DeepCollectionEquality().equals(other._senalesAdicionales, _senalesAdicionales));
}


@override
int get hashCode => Object.hash(runtimeType,id,viajeId,senal,ubicacion,creadaEn,estado,const DeepCollectionEquality().hash(_senalesAdicionales));

@override
String toString() {
  return 'AlertaFatiga(id: $id, viajeId: $viajeId, senal: $senal, ubicacion: $ubicacion, creadaEn: $creadaEn, estado: $estado, senalesAdicionales: $senalesAdicionales)';
}


}

/// @nodoc
abstract mixin class _$AlertaFatigaCopyWith<$Res> implements $AlertaFatigaCopyWith<$Res> {
  factory _$AlertaFatigaCopyWith(_AlertaFatiga value, $Res Function(_AlertaFatiga) _then) = __$AlertaFatigaCopyWithImpl;
@override @useResult
$Res call({
 String id, String viajeId, TipoSenal senal, Ubicacion ubicacion, DateTime creadaEn, EstadoAlerta estado, List<String> senalesAdicionales
});


@override $UbicacionCopyWith<$Res> get ubicacion;@override $EstadoAlertaCopyWith<$Res> get estado;

}
/// @nodoc
class __$AlertaFatigaCopyWithImpl<$Res>
    implements _$AlertaFatigaCopyWith<$Res> {
  __$AlertaFatigaCopyWithImpl(this._self, this._then);

  final _AlertaFatiga _self;
  final $Res Function(_AlertaFatiga) _then;

/// Create a copy of AlertaFatiga
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? viajeId = null,Object? senal = null,Object? ubicacion = null,Object? creadaEn = null,Object? estado = null,Object? senalesAdicionales = null,}) {
  return _then(_AlertaFatiga(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,viajeId: null == viajeId ? _self.viajeId : viajeId // ignore: cast_nullable_to_non_nullable
as String,senal: null == senal ? _self.senal : senal // ignore: cast_nullable_to_non_nullable
as TipoSenal,ubicacion: null == ubicacion ? _self.ubicacion : ubicacion // ignore: cast_nullable_to_non_nullable
as Ubicacion,creadaEn: null == creadaEn ? _self.creadaEn : creadaEn // ignore: cast_nullable_to_non_nullable
as DateTime,estado: null == estado ? _self.estado : estado // ignore: cast_nullable_to_non_nullable
as EstadoAlerta,senalesAdicionales: null == senalesAdicionales ? _self._senalesAdicionales : senalesAdicionales // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of AlertaFatiga
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UbicacionCopyWith<$Res> get ubicacion {
  
  return $UbicacionCopyWith<$Res>(_self.ubicacion, (value) {
    return _then(_self.copyWith(ubicacion: value));
  });
}/// Create a copy of AlertaFatiga
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EstadoAlertaCopyWith<$Res> get estado {
  
  return $EstadoAlertaCopyWith<$Res>(_self.estado, (value) {
    return _then(_self.copyWith(estado: value));
  });
}
}

// dart format on
