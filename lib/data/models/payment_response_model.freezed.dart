// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentResponseModel {

 String get status; String get transactionId; double get amount; DateTime get date; String? get message;
/// Create a copy of PaymentResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentResponseModelCopyWith<PaymentResponseModel> get copyWith => _$PaymentResponseModelCopyWithImpl<PaymentResponseModel>(this as PaymentResponseModel, _$identity);

  /// Serializes this PaymentResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.date, date) || other.date == date)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,transactionId,amount,date,message);

@override
String toString() {
  return 'PaymentResponseModel(status: $status, transactionId: $transactionId, amount: $amount, date: $date, message: $message)';
}


}

/// @nodoc
abstract mixin class $PaymentResponseModelCopyWith<$Res>  {
  factory $PaymentResponseModelCopyWith(PaymentResponseModel value, $Res Function(PaymentResponseModel) _then) = _$PaymentResponseModelCopyWithImpl;
@useResult
$Res call({
 String status, String transactionId, double amount, DateTime date, String? message
});




}
/// @nodoc
class _$PaymentResponseModelCopyWithImpl<$Res>
    implements $PaymentResponseModelCopyWith<$Res> {
  _$PaymentResponseModelCopyWithImpl(this._self, this._then);

  final PaymentResponseModel _self;
  final $Res Function(PaymentResponseModel) _then;

/// Create a copy of PaymentResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? transactionId = null,Object? amount = null,Object? date = null,Object? message = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentResponseModel].
extension PaymentResponseModelPatterns on PaymentResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _PaymentResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  String transactionId,  double amount,  DateTime date,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentResponseModel() when $default != null:
return $default(_that.status,_that.transactionId,_that.amount,_that.date,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  String transactionId,  double amount,  DateTime date,  String? message)  $default,) {final _that = this;
switch (_that) {
case _PaymentResponseModel():
return $default(_that.status,_that.transactionId,_that.amount,_that.date,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  String transactionId,  double amount,  DateTime date,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _PaymentResponseModel() when $default != null:
return $default(_that.status,_that.transactionId,_that.amount,_that.date,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentResponseModel implements PaymentResponseModel {
  const _PaymentResponseModel({required this.status, required this.transactionId, required this.amount, required this.date, this.message});
  factory _PaymentResponseModel.fromJson(Map<String, dynamic> json) => _$PaymentResponseModelFromJson(json);

@override final  String status;
@override final  String transactionId;
@override final  double amount;
@override final  DateTime date;
@override final  String? message;

/// Create a copy of PaymentResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentResponseModelCopyWith<_PaymentResponseModel> get copyWith => __$PaymentResponseModelCopyWithImpl<_PaymentResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.date, date) || other.date == date)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,transactionId,amount,date,message);

@override
String toString() {
  return 'PaymentResponseModel(status: $status, transactionId: $transactionId, amount: $amount, date: $date, message: $message)';
}


}

/// @nodoc
abstract mixin class _$PaymentResponseModelCopyWith<$Res> implements $PaymentResponseModelCopyWith<$Res> {
  factory _$PaymentResponseModelCopyWith(_PaymentResponseModel value, $Res Function(_PaymentResponseModel) _then) = __$PaymentResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String status, String transactionId, double amount, DateTime date, String? message
});




}
/// @nodoc
class __$PaymentResponseModelCopyWithImpl<$Res>
    implements _$PaymentResponseModelCopyWith<$Res> {
  __$PaymentResponseModelCopyWithImpl(this._self, this._then);

  final _PaymentResponseModel _self;
  final $Res Function(_PaymentResponseModel) _then;

/// Create a copy of PaymentResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? transactionId = null,Object? amount = null,Object? date = null,Object? message = freezed,}) {
  return _then(_PaymentResponseModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
