// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parent_contact_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ParentContactModel {

 String get primaryName; String get primaryRelation; String get primaryMobile; String get secondaryName; String get secondaryRelation; String get secondaryMobile;
/// Create a copy of ParentContactModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParentContactModelCopyWith<ParentContactModel> get copyWith => _$ParentContactModelCopyWithImpl<ParentContactModel>(this as ParentContactModel, _$identity);

  /// Serializes this ParentContactModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParentContactModel&&(identical(other.primaryName, primaryName) || other.primaryName == primaryName)&&(identical(other.primaryRelation, primaryRelation) || other.primaryRelation == primaryRelation)&&(identical(other.primaryMobile, primaryMobile) || other.primaryMobile == primaryMobile)&&(identical(other.secondaryName, secondaryName) || other.secondaryName == secondaryName)&&(identical(other.secondaryRelation, secondaryRelation) || other.secondaryRelation == secondaryRelation)&&(identical(other.secondaryMobile, secondaryMobile) || other.secondaryMobile == secondaryMobile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,primaryName,primaryRelation,primaryMobile,secondaryName,secondaryRelation,secondaryMobile);

@override
String toString() {
  return 'ParentContactModel(primaryName: $primaryName, primaryRelation: $primaryRelation, primaryMobile: $primaryMobile, secondaryName: $secondaryName, secondaryRelation: $secondaryRelation, secondaryMobile: $secondaryMobile)';
}


}

/// @nodoc
abstract mixin class $ParentContactModelCopyWith<$Res>  {
  factory $ParentContactModelCopyWith(ParentContactModel value, $Res Function(ParentContactModel) _then) = _$ParentContactModelCopyWithImpl;
@useResult
$Res call({
 String primaryName, String primaryRelation, String primaryMobile, String secondaryName, String secondaryRelation, String secondaryMobile
});




}
/// @nodoc
class _$ParentContactModelCopyWithImpl<$Res>
    implements $ParentContactModelCopyWith<$Res> {
  _$ParentContactModelCopyWithImpl(this._self, this._then);

  final ParentContactModel _self;
  final $Res Function(ParentContactModel) _then;

/// Create a copy of ParentContactModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? primaryName = null,Object? primaryRelation = null,Object? primaryMobile = null,Object? secondaryName = null,Object? secondaryRelation = null,Object? secondaryMobile = null,}) {
  return _then(_self.copyWith(
primaryName: null == primaryName ? _self.primaryName : primaryName // ignore: cast_nullable_to_non_nullable
as String,primaryRelation: null == primaryRelation ? _self.primaryRelation : primaryRelation // ignore: cast_nullable_to_non_nullable
as String,primaryMobile: null == primaryMobile ? _self.primaryMobile : primaryMobile // ignore: cast_nullable_to_non_nullable
as String,secondaryName: null == secondaryName ? _self.secondaryName : secondaryName // ignore: cast_nullable_to_non_nullable
as String,secondaryRelation: null == secondaryRelation ? _self.secondaryRelation : secondaryRelation // ignore: cast_nullable_to_non_nullable
as String,secondaryMobile: null == secondaryMobile ? _self.secondaryMobile : secondaryMobile // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ParentContactModel].
extension ParentContactModelPatterns on ParentContactModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParentContactModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParentContactModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParentContactModel value)  $default,){
final _that = this;
switch (_that) {
case _ParentContactModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParentContactModel value)?  $default,){
final _that = this;
switch (_that) {
case _ParentContactModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String primaryName,  String primaryRelation,  String primaryMobile,  String secondaryName,  String secondaryRelation,  String secondaryMobile)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParentContactModel() when $default != null:
return $default(_that.primaryName,_that.primaryRelation,_that.primaryMobile,_that.secondaryName,_that.secondaryRelation,_that.secondaryMobile);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String primaryName,  String primaryRelation,  String primaryMobile,  String secondaryName,  String secondaryRelation,  String secondaryMobile)  $default,) {final _that = this;
switch (_that) {
case _ParentContactModel():
return $default(_that.primaryName,_that.primaryRelation,_that.primaryMobile,_that.secondaryName,_that.secondaryRelation,_that.secondaryMobile);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String primaryName,  String primaryRelation,  String primaryMobile,  String secondaryName,  String secondaryRelation,  String secondaryMobile)?  $default,) {final _that = this;
switch (_that) {
case _ParentContactModel() when $default != null:
return $default(_that.primaryName,_that.primaryRelation,_that.primaryMobile,_that.secondaryName,_that.secondaryRelation,_that.secondaryMobile);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParentContactModel implements ParentContactModel {
  const _ParentContactModel({required this.primaryName, required this.primaryRelation, required this.primaryMobile, required this.secondaryName, required this.secondaryRelation, required this.secondaryMobile});
  factory _ParentContactModel.fromJson(Map<String, dynamic> json) => _$ParentContactModelFromJson(json);

@override final  String primaryName;
@override final  String primaryRelation;
@override final  String primaryMobile;
@override final  String secondaryName;
@override final  String secondaryRelation;
@override final  String secondaryMobile;

/// Create a copy of ParentContactModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParentContactModelCopyWith<_ParentContactModel> get copyWith => __$ParentContactModelCopyWithImpl<_ParentContactModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParentContactModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParentContactModel&&(identical(other.primaryName, primaryName) || other.primaryName == primaryName)&&(identical(other.primaryRelation, primaryRelation) || other.primaryRelation == primaryRelation)&&(identical(other.primaryMobile, primaryMobile) || other.primaryMobile == primaryMobile)&&(identical(other.secondaryName, secondaryName) || other.secondaryName == secondaryName)&&(identical(other.secondaryRelation, secondaryRelation) || other.secondaryRelation == secondaryRelation)&&(identical(other.secondaryMobile, secondaryMobile) || other.secondaryMobile == secondaryMobile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,primaryName,primaryRelation,primaryMobile,secondaryName,secondaryRelation,secondaryMobile);

@override
String toString() {
  return 'ParentContactModel(primaryName: $primaryName, primaryRelation: $primaryRelation, primaryMobile: $primaryMobile, secondaryName: $secondaryName, secondaryRelation: $secondaryRelation, secondaryMobile: $secondaryMobile)';
}


}

/// @nodoc
abstract mixin class _$ParentContactModelCopyWith<$Res> implements $ParentContactModelCopyWith<$Res> {
  factory _$ParentContactModelCopyWith(_ParentContactModel value, $Res Function(_ParentContactModel) _then) = __$ParentContactModelCopyWithImpl;
@override @useResult
$Res call({
 String primaryName, String primaryRelation, String primaryMobile, String secondaryName, String secondaryRelation, String secondaryMobile
});




}
/// @nodoc
class __$ParentContactModelCopyWithImpl<$Res>
    implements _$ParentContactModelCopyWith<$Res> {
  __$ParentContactModelCopyWithImpl(this._self, this._then);

  final _ParentContactModel _self;
  final $Res Function(_ParentContactModel) _then;

/// Create a copy of ParentContactModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? primaryName = null,Object? primaryRelation = null,Object? primaryMobile = null,Object? secondaryName = null,Object? secondaryRelation = null,Object? secondaryMobile = null,}) {
  return _then(_ParentContactModel(
primaryName: null == primaryName ? _self.primaryName : primaryName // ignore: cast_nullable_to_non_nullable
as String,primaryRelation: null == primaryRelation ? _self.primaryRelation : primaryRelation // ignore: cast_nullable_to_non_nullable
as String,primaryMobile: null == primaryMobile ? _self.primaryMobile : primaryMobile // ignore: cast_nullable_to_non_nullable
as String,secondaryName: null == secondaryName ? _self.secondaryName : secondaryName // ignore: cast_nullable_to_non_nullable
as String,secondaryRelation: null == secondaryRelation ? _self.secondaryRelation : secondaryRelation // ignore: cast_nullable_to_non_nullable
as String,secondaryMobile: null == secondaryMobile ? _self.secondaryMobile : secondaryMobile // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
