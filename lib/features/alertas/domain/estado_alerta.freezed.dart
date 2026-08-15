// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'estado_alerta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EstadoAlerta {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EstadoAlerta);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EstadoAlerta()';
}


}

/// @nodoc
class $EstadoAlertaCopyWith<$Res>  {
$EstadoAlertaCopyWith(EstadoAlerta _, $Res Function(EstadoAlerta) __);
}


/// Adds pattern-matching-related methods to [EstadoAlerta].
extension EstadoAlertaPatterns on EstadoAlerta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Leve value)?  leve,TResult Function( Moderada value)?  moderada,TResult Function( Critica value)?  critica,TResult Function( Descartada value)?  descartada,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Leve() when leve != null:
return leve(_that);case Moderada() when moderada != null:
return moderada(_that);case Critica() when critica != null:
return critica(_that);case Descartada() when descartada != null:
return descartada(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Leve value)  leve,required TResult Function( Moderada value)  moderada,required TResult Function( Critica value)  critica,required TResult Function( Descartada value)  descartada,}){
final _that = this;
switch (_that) {
case Leve():
return leve(_that);case Moderada():
return moderada(_that);case Critica():
return critica(_that);case Descartada():
return descartada(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Leve value)?  leve,TResult? Function( Moderada value)?  moderada,TResult? Function( Critica value)?  critica,TResult? Function( Descartada value)?  descartada,}){
final _that = this;
switch (_that) {
case Leve() when leve != null:
return leve(_that);case Moderada() when moderada != null:
return moderada(_that);case Critica() when critica != null:
return critica(_that);case Descartada() when descartada != null:
return descartada(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  leve,TResult Function( String recomendacion)?  moderada,TResult Function( String accionTomada,  Ubicacion? paradaSugerida)?  critica,TResult Function( String motivo)?  descartada,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Leve() when leve != null:
return leve();case Moderada() when moderada != null:
return moderada(_that.recomendacion);case Critica() when critica != null:
return critica(_that.accionTomada,_that.paradaSugerida);case Descartada() when descartada != null:
return descartada(_that.motivo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  leve,required TResult Function( String recomendacion)  moderada,required TResult Function( String accionTomada,  Ubicacion? paradaSugerida)  critica,required TResult Function( String motivo)  descartada,}) {final _that = this;
switch (_that) {
case Leve():
return leve();case Moderada():
return moderada(_that.recomendacion);case Critica():
return critica(_that.accionTomada,_that.paradaSugerida);case Descartada():
return descartada(_that.motivo);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  leve,TResult? Function( String recomendacion)?  moderada,TResult? Function( String accionTomada,  Ubicacion? paradaSugerida)?  critica,TResult? Function( String motivo)?  descartada,}) {final _that = this;
switch (_that) {
case Leve() when leve != null:
return leve();case Moderada() when moderada != null:
return moderada(_that.recomendacion);case Critica() when critica != null:
return critica(_that.accionTomada,_that.paradaSugerida);case Descartada() when descartada != null:
return descartada(_that.motivo);case _:
  return null;

}
}

}

/// @nodoc


class Leve extends EstadoAlerta {
  const Leve(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Leve);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EstadoAlerta.leve()';
}


}




/// @nodoc


class Moderada extends EstadoAlerta {
  const Moderada(this.recomendacion): super._();
  

 final  String recomendacion;

/// Create a copy of EstadoAlerta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModeradaCopyWith<Moderada> get copyWith => _$ModeradaCopyWithImpl<Moderada>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Moderada&&(identical(other.recomendacion, recomendacion) || other.recomendacion == recomendacion));
}


@override
int get hashCode => Object.hash(runtimeType,recomendacion);

@override
String toString() {
  return 'EstadoAlerta.moderada(recomendacion: $recomendacion)';
}


}

/// @nodoc
abstract mixin class $ModeradaCopyWith<$Res> implements $EstadoAlertaCopyWith<$Res> {
  factory $ModeradaCopyWith(Moderada value, $Res Function(Moderada) _then) = _$ModeradaCopyWithImpl;
@useResult
$Res call({
 String recomendacion
});




}
/// @nodoc
class _$ModeradaCopyWithImpl<$Res>
    implements $ModeradaCopyWith<$Res> {
  _$ModeradaCopyWithImpl(this._self, this._then);

  final Moderada _self;
  final $Res Function(Moderada) _then;

/// Create a copy of EstadoAlerta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? recomendacion = null,}) {
  return _then(Moderada(
null == recomendacion ? _self.recomendacion : recomendacion // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Critica extends EstadoAlerta {
  const Critica({required this.accionTomada, this.paradaSugerida}): assert(accionTomada != "", 'una alerta crítica exige una acción tomada'),super._();
  

 final  String accionTomada;
 final  Ubicacion? paradaSugerida;

/// Create a copy of EstadoAlerta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CriticaCopyWith<Critica> get copyWith => _$CriticaCopyWithImpl<Critica>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Critica&&(identical(other.accionTomada, accionTomada) || other.accionTomada == accionTomada)&&(identical(other.paradaSugerida, paradaSugerida) || other.paradaSugerida == paradaSugerida));
}


@override
int get hashCode => Object.hash(runtimeType,accionTomada,paradaSugerida);

@override
String toString() {
  return 'EstadoAlerta.critica(accionTomada: $accionTomada, paradaSugerida: $paradaSugerida)';
}


}

/// @nodoc
abstract mixin class $CriticaCopyWith<$Res> implements $EstadoAlertaCopyWith<$Res> {
  factory $CriticaCopyWith(Critica value, $Res Function(Critica) _then) = _$CriticaCopyWithImpl;
@useResult
$Res call({
 String accionTomada, Ubicacion? paradaSugerida
});


$UbicacionCopyWith<$Res>? get paradaSugerida;

}
/// @nodoc
class _$CriticaCopyWithImpl<$Res>
    implements $CriticaCopyWith<$Res> {
  _$CriticaCopyWithImpl(this._self, this._then);

  final Critica _self;
  final $Res Function(Critica) _then;

/// Create a copy of EstadoAlerta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? accionTomada = null,Object? paradaSugerida = freezed,}) {
  return _then(Critica(
accionTomada: null == accionTomada ? _self.accionTomada : accionTomada // ignore: cast_nullable_to_non_nullable
as String,paradaSugerida: freezed == paradaSugerida ? _self.paradaSugerida : paradaSugerida // ignore: cast_nullable_to_non_nullable
as Ubicacion?,
  ));
}

/// Create a copy of EstadoAlerta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UbicacionCopyWith<$Res>? get paradaSugerida {
    if (_self.paradaSugerida == null) {
    return null;
  }

  return $UbicacionCopyWith<$Res>(_self.paradaSugerida!, (value) {
    return _then(_self.copyWith(paradaSugerida: value));
  });
}
}

/// @nodoc


class Descartada extends EstadoAlerta {
  const Descartada(this.motivo): assert(motivo != "", 'descartar exige un motivo'),super._();
  

 final  String motivo;

/// Create a copy of EstadoAlerta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DescartadaCopyWith<Descartada> get copyWith => _$DescartadaCopyWithImpl<Descartada>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Descartada&&(identical(other.motivo, motivo) || other.motivo == motivo));
}


@override
int get hashCode => Object.hash(runtimeType,motivo);

@override
String toString() {
  return 'EstadoAlerta.descartada(motivo: $motivo)';
}


}

/// @nodoc
abstract mixin class $DescartadaCopyWith<$Res> implements $EstadoAlertaCopyWith<$Res> {
  factory $DescartadaCopyWith(Descartada value, $Res Function(Descartada) _then) = _$DescartadaCopyWithImpl;
@useResult
$Res call({
 String motivo
});




}
/// @nodoc
class _$DescartadaCopyWithImpl<$Res>
    implements $DescartadaCopyWith<$Res> {
  _$DescartadaCopyWithImpl(this._self, this._then);

  final Descartada _self;
  final $Res Function(Descartada) _then;

/// Create a copy of EstadoAlerta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? motivo = null,}) {
  return _then(Descartada(
null == motivo ? _self.motivo : motivo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
