// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admission_class_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdmissionClassModel {

@JsonKey(name: 'program_name') String? get programName;
/// Create a copy of AdmissionClassModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdmissionClassModelCopyWith<AdmissionClassModel> get copyWith => _$AdmissionClassModelCopyWithImpl<AdmissionClassModel>(this as AdmissionClassModel, _$identity);

  /// Serializes this AdmissionClassModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdmissionClassModel&&(identical(other.programName, programName) || other.programName == programName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,programName);

@override
String toString() {
  return 'AdmissionClassModel(programName: $programName)';
}


}

/// @nodoc
abstract mixin class $AdmissionClassModelCopyWith<$Res>  {
  factory $AdmissionClassModelCopyWith(AdmissionClassModel value, $Res Function(AdmissionClassModel) _then) = _$AdmissionClassModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'program_name') String? programName
});




}
/// @nodoc
class _$AdmissionClassModelCopyWithImpl<$Res>
    implements $AdmissionClassModelCopyWith<$Res> {
  _$AdmissionClassModelCopyWithImpl(this._self, this._then);

  final AdmissionClassModel _self;
  final $Res Function(AdmissionClassModel) _then;

/// Create a copy of AdmissionClassModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? programName = freezed,}) {
  return _then(_self.copyWith(
programName: freezed == programName ? _self.programName : programName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdmissionClassModel].
extension AdmissionClassModelPatterns on AdmissionClassModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdmissionClassModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdmissionClassModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdmissionClassModel value)  $default,){
final _that = this;
switch (_that) {
case _AdmissionClassModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdmissionClassModel value)?  $default,){
final _that = this;
switch (_that) {
case _AdmissionClassModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'program_name')  String? programName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdmissionClassModel() when $default != null:
return $default(_that.programName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'program_name')  String? programName)  $default,) {final _that = this;
switch (_that) {
case _AdmissionClassModel():
return $default(_that.programName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'program_name')  String? programName)?  $default,) {final _that = this;
switch (_that) {
case _AdmissionClassModel() when $default != null:
return $default(_that.programName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdmissionClassModel extends AdmissionClassModel {
   _AdmissionClassModel({@JsonKey(name: 'program_name') required this.programName}): super._();
  factory _AdmissionClassModel.fromJson(Map<String, dynamic> json) => _$AdmissionClassModelFromJson(json);

@override@JsonKey(name: 'program_name') final  String? programName;

/// Create a copy of AdmissionClassModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdmissionClassModelCopyWith<_AdmissionClassModel> get copyWith => __$AdmissionClassModelCopyWithImpl<_AdmissionClassModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdmissionClassModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdmissionClassModel&&(identical(other.programName, programName) || other.programName == programName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,programName);

@override
String toString() {
  return 'AdmissionClassModel(programName: $programName)';
}


}

/// @nodoc
abstract mixin class _$AdmissionClassModelCopyWith<$Res> implements $AdmissionClassModelCopyWith<$Res> {
  factory _$AdmissionClassModelCopyWith(_AdmissionClassModel value, $Res Function(_AdmissionClassModel) _then) = __$AdmissionClassModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'program_name') String? programName
});




}
/// @nodoc
class __$AdmissionClassModelCopyWithImpl<$Res>
    implements _$AdmissionClassModelCopyWith<$Res> {
  __$AdmissionClassModelCopyWithImpl(this._self, this._then);

  final _AdmissionClassModel _self;
  final $Res Function(_AdmissionClassModel) _then;

/// Create a copy of AdmissionClassModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? programName = freezed,}) {
  return _then(_AdmissionClassModel(
programName: freezed == programName ? _self.programName : programName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
