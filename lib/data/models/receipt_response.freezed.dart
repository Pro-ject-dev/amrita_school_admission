// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receipt_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReceiptResponse {

 ReceiptTransaction? get transaction; ReceiptStudent? get student; ReceiptSchool? get school; String? get message;
/// Create a copy of ReceiptResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReceiptResponseCopyWith<ReceiptResponse> get copyWith => _$ReceiptResponseCopyWithImpl<ReceiptResponse>(this as ReceiptResponse, _$identity);

  /// Serializes this ReceiptResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReceiptResponse&&(identical(other.transaction, transaction) || other.transaction == transaction)&&(identical(other.student, student) || other.student == student)&&(identical(other.school, school) || other.school == school)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transaction,student,school,message);

@override
String toString() {
  return 'ReceiptResponse(transaction: $transaction, student: $student, school: $school, message: $message)';
}


}

/// @nodoc
abstract mixin class $ReceiptResponseCopyWith<$Res>  {
  factory $ReceiptResponseCopyWith(ReceiptResponse value, $Res Function(ReceiptResponse) _then) = _$ReceiptResponseCopyWithImpl;
@useResult
$Res call({
 ReceiptTransaction? transaction, ReceiptStudent? student, ReceiptSchool? school, String? message
});


$ReceiptTransactionCopyWith<$Res>? get transaction;$ReceiptStudentCopyWith<$Res>? get student;$ReceiptSchoolCopyWith<$Res>? get school;

}
/// @nodoc
class _$ReceiptResponseCopyWithImpl<$Res>
    implements $ReceiptResponseCopyWith<$Res> {
  _$ReceiptResponseCopyWithImpl(this._self, this._then);

  final ReceiptResponse _self;
  final $Res Function(ReceiptResponse) _then;

/// Create a copy of ReceiptResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transaction = freezed,Object? student = freezed,Object? school = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
transaction: freezed == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as ReceiptTransaction?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as ReceiptStudent?,school: freezed == school ? _self.school : school // ignore: cast_nullable_to_non_nullable
as ReceiptSchool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ReceiptResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReceiptTransactionCopyWith<$Res>? get transaction {
    if (_self.transaction == null) {
    return null;
  }

  return $ReceiptTransactionCopyWith<$Res>(_self.transaction!, (value) {
    return _then(_self.copyWith(transaction: value));
  });
}/// Create a copy of ReceiptResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReceiptStudentCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $ReceiptStudentCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}/// Create a copy of ReceiptResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReceiptSchoolCopyWith<$Res>? get school {
    if (_self.school == null) {
    return null;
  }

  return $ReceiptSchoolCopyWith<$Res>(_self.school!, (value) {
    return _then(_self.copyWith(school: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReceiptResponse].
extension ReceiptResponsePatterns on ReceiptResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReceiptResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReceiptResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReceiptResponse value)  $default,){
final _that = this;
switch (_that) {
case _ReceiptResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReceiptResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ReceiptResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReceiptTransaction? transaction,  ReceiptStudent? student,  ReceiptSchool? school,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReceiptResponse() when $default != null:
return $default(_that.transaction,_that.student,_that.school,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReceiptTransaction? transaction,  ReceiptStudent? student,  ReceiptSchool? school,  String? message)  $default,) {final _that = this;
switch (_that) {
case _ReceiptResponse():
return $default(_that.transaction,_that.student,_that.school,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReceiptTransaction? transaction,  ReceiptStudent? student,  ReceiptSchool? school,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _ReceiptResponse() when $default != null:
return $default(_that.transaction,_that.student,_that.school,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReceiptResponse implements ReceiptResponse {
  const _ReceiptResponse({this.transaction, this.student, this.school, this.message});
  factory _ReceiptResponse.fromJson(Map<String, dynamic> json) => _$ReceiptResponseFromJson(json);

@override final  ReceiptTransaction? transaction;
@override final  ReceiptStudent? student;
@override final  ReceiptSchool? school;
@override final  String? message;

/// Create a copy of ReceiptResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReceiptResponseCopyWith<_ReceiptResponse> get copyWith => __$ReceiptResponseCopyWithImpl<_ReceiptResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReceiptResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReceiptResponse&&(identical(other.transaction, transaction) || other.transaction == transaction)&&(identical(other.student, student) || other.student == student)&&(identical(other.school, school) || other.school == school)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transaction,student,school,message);

@override
String toString() {
  return 'ReceiptResponse(transaction: $transaction, student: $student, school: $school, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ReceiptResponseCopyWith<$Res> implements $ReceiptResponseCopyWith<$Res> {
  factory _$ReceiptResponseCopyWith(_ReceiptResponse value, $Res Function(_ReceiptResponse) _then) = __$ReceiptResponseCopyWithImpl;
@override @useResult
$Res call({
 ReceiptTransaction? transaction, ReceiptStudent? student, ReceiptSchool? school, String? message
});


@override $ReceiptTransactionCopyWith<$Res>? get transaction;@override $ReceiptStudentCopyWith<$Res>? get student;@override $ReceiptSchoolCopyWith<$Res>? get school;

}
/// @nodoc
class __$ReceiptResponseCopyWithImpl<$Res>
    implements _$ReceiptResponseCopyWith<$Res> {
  __$ReceiptResponseCopyWithImpl(this._self, this._then);

  final _ReceiptResponse _self;
  final $Res Function(_ReceiptResponse) _then;

/// Create a copy of ReceiptResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transaction = freezed,Object? student = freezed,Object? school = freezed,Object? message = freezed,}) {
  return _then(_ReceiptResponse(
transaction: freezed == transaction ? _self.transaction : transaction // ignore: cast_nullable_to_non_nullable
as ReceiptTransaction?,student: freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as ReceiptStudent?,school: freezed == school ? _self.school : school // ignore: cast_nullable_to_non_nullable
as ReceiptSchool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ReceiptResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReceiptTransactionCopyWith<$Res>? get transaction {
    if (_self.transaction == null) {
    return null;
  }

  return $ReceiptTransactionCopyWith<$Res>(_self.transaction!, (value) {
    return _then(_self.copyWith(transaction: value));
  });
}/// Create a copy of ReceiptResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReceiptStudentCopyWith<$Res>? get student {
    if (_self.student == null) {
    return null;
  }

  return $ReceiptStudentCopyWith<$Res>(_self.student!, (value) {
    return _then(_self.copyWith(student: value));
  });
}/// Create a copy of ReceiptResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReceiptSchoolCopyWith<$Res>? get school {
    if (_self.school == null) {
    return null;
  }

  return $ReceiptSchoolCopyWith<$Res>(_self.school!, (value) {
    return _then(_self.copyWith(school: value));
  });
}
}


/// @nodoc
mixin _$ReceiptTransaction {

@JsonKey(name: 'transaction_id') String? get transactionId;@JsonKey(name: 'amount') double? get amount;@JsonKey(name: 'transaction_date') String? get transactionDate;@JsonKey(name: 'transaction_time') String? get transactionTime;@JsonKey(name: 'fee_type') String? get feeType;@JsonKey(name: 'transaction_reference_no') String? get transactionReferenceNo; String? get status; String? get mode;
/// Create a copy of ReceiptTransaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReceiptTransactionCopyWith<ReceiptTransaction> get copyWith => _$ReceiptTransactionCopyWithImpl<ReceiptTransaction>(this as ReceiptTransaction, _$identity);

  /// Serializes this ReceiptTransaction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReceiptTransaction&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.transactionDate, transactionDate) || other.transactionDate == transactionDate)&&(identical(other.transactionTime, transactionTime) || other.transactionTime == transactionTime)&&(identical(other.feeType, feeType) || other.feeType == feeType)&&(identical(other.transactionReferenceNo, transactionReferenceNo) || other.transactionReferenceNo == transactionReferenceNo)&&(identical(other.status, status) || other.status == status)&&(identical(other.mode, mode) || other.mode == mode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,amount,transactionDate,transactionTime,feeType,transactionReferenceNo,status,mode);

@override
String toString() {
  return 'ReceiptTransaction(transactionId: $transactionId, amount: $amount, transactionDate: $transactionDate, transactionTime: $transactionTime, feeType: $feeType, transactionReferenceNo: $transactionReferenceNo, status: $status, mode: $mode)';
}


}

/// @nodoc
abstract mixin class $ReceiptTransactionCopyWith<$Res>  {
  factory $ReceiptTransactionCopyWith(ReceiptTransaction value, $Res Function(ReceiptTransaction) _then) = _$ReceiptTransactionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'transaction_id') String? transactionId,@JsonKey(name: 'amount') double? amount,@JsonKey(name: 'transaction_date') String? transactionDate,@JsonKey(name: 'transaction_time') String? transactionTime,@JsonKey(name: 'fee_type') String? feeType,@JsonKey(name: 'transaction_reference_no') String? transactionReferenceNo, String? status, String? mode
});




}
/// @nodoc
class _$ReceiptTransactionCopyWithImpl<$Res>
    implements $ReceiptTransactionCopyWith<$Res> {
  _$ReceiptTransactionCopyWithImpl(this._self, this._then);

  final ReceiptTransaction _self;
  final $Res Function(ReceiptTransaction) _then;

/// Create a copy of ReceiptTransaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = freezed,Object? amount = freezed,Object? transactionDate = freezed,Object? transactionTime = freezed,Object? feeType = freezed,Object? transactionReferenceNo = freezed,Object? status = freezed,Object? mode = freezed,}) {
  return _then(_self.copyWith(
transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,transactionDate: freezed == transactionDate ? _self.transactionDate : transactionDate // ignore: cast_nullable_to_non_nullable
as String?,transactionTime: freezed == transactionTime ? _self.transactionTime : transactionTime // ignore: cast_nullable_to_non_nullable
as String?,feeType: freezed == feeType ? _self.feeType : feeType // ignore: cast_nullable_to_non_nullable
as String?,transactionReferenceNo: freezed == transactionReferenceNo ? _self.transactionReferenceNo : transactionReferenceNo // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,mode: freezed == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReceiptTransaction].
extension ReceiptTransactionPatterns on ReceiptTransaction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReceiptTransaction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReceiptTransaction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReceiptTransaction value)  $default,){
final _that = this;
switch (_that) {
case _ReceiptTransaction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReceiptTransaction value)?  $default,){
final _that = this;
switch (_that) {
case _ReceiptTransaction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'transaction_id')  String? transactionId, @JsonKey(name: 'amount')  double? amount, @JsonKey(name: 'transaction_date')  String? transactionDate, @JsonKey(name: 'transaction_time')  String? transactionTime, @JsonKey(name: 'fee_type')  String? feeType, @JsonKey(name: 'transaction_reference_no')  String? transactionReferenceNo,  String? status,  String? mode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReceiptTransaction() when $default != null:
return $default(_that.transactionId,_that.amount,_that.transactionDate,_that.transactionTime,_that.feeType,_that.transactionReferenceNo,_that.status,_that.mode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'transaction_id')  String? transactionId, @JsonKey(name: 'amount')  double? amount, @JsonKey(name: 'transaction_date')  String? transactionDate, @JsonKey(name: 'transaction_time')  String? transactionTime, @JsonKey(name: 'fee_type')  String? feeType, @JsonKey(name: 'transaction_reference_no')  String? transactionReferenceNo,  String? status,  String? mode)  $default,) {final _that = this;
switch (_that) {
case _ReceiptTransaction():
return $default(_that.transactionId,_that.amount,_that.transactionDate,_that.transactionTime,_that.feeType,_that.transactionReferenceNo,_that.status,_that.mode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'transaction_id')  String? transactionId, @JsonKey(name: 'amount')  double? amount, @JsonKey(name: 'transaction_date')  String? transactionDate, @JsonKey(name: 'transaction_time')  String? transactionTime, @JsonKey(name: 'fee_type')  String? feeType, @JsonKey(name: 'transaction_reference_no')  String? transactionReferenceNo,  String? status,  String? mode)?  $default,) {final _that = this;
switch (_that) {
case _ReceiptTransaction() when $default != null:
return $default(_that.transactionId,_that.amount,_that.transactionDate,_that.transactionTime,_that.feeType,_that.transactionReferenceNo,_that.status,_that.mode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReceiptTransaction implements ReceiptTransaction {
  const _ReceiptTransaction({@JsonKey(name: 'transaction_id') this.transactionId, @JsonKey(name: 'amount') this.amount, @JsonKey(name: 'transaction_date') this.transactionDate, @JsonKey(name: 'transaction_time') this.transactionTime, @JsonKey(name: 'fee_type') this.feeType, @JsonKey(name: 'transaction_reference_no') this.transactionReferenceNo, this.status, this.mode});
  factory _ReceiptTransaction.fromJson(Map<String, dynamic> json) => _$ReceiptTransactionFromJson(json);

@override@JsonKey(name: 'transaction_id') final  String? transactionId;
@override@JsonKey(name: 'amount') final  double? amount;
@override@JsonKey(name: 'transaction_date') final  String? transactionDate;
@override@JsonKey(name: 'transaction_time') final  String? transactionTime;
@override@JsonKey(name: 'fee_type') final  String? feeType;
@override@JsonKey(name: 'transaction_reference_no') final  String? transactionReferenceNo;
@override final  String? status;
@override final  String? mode;

/// Create a copy of ReceiptTransaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReceiptTransactionCopyWith<_ReceiptTransaction> get copyWith => __$ReceiptTransactionCopyWithImpl<_ReceiptTransaction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReceiptTransactionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReceiptTransaction&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.transactionDate, transactionDate) || other.transactionDate == transactionDate)&&(identical(other.transactionTime, transactionTime) || other.transactionTime == transactionTime)&&(identical(other.feeType, feeType) || other.feeType == feeType)&&(identical(other.transactionReferenceNo, transactionReferenceNo) || other.transactionReferenceNo == transactionReferenceNo)&&(identical(other.status, status) || other.status == status)&&(identical(other.mode, mode) || other.mode == mode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,amount,transactionDate,transactionTime,feeType,transactionReferenceNo,status,mode);

@override
String toString() {
  return 'ReceiptTransaction(transactionId: $transactionId, amount: $amount, transactionDate: $transactionDate, transactionTime: $transactionTime, feeType: $feeType, transactionReferenceNo: $transactionReferenceNo, status: $status, mode: $mode)';
}


}

/// @nodoc
abstract mixin class _$ReceiptTransactionCopyWith<$Res> implements $ReceiptTransactionCopyWith<$Res> {
  factory _$ReceiptTransactionCopyWith(_ReceiptTransaction value, $Res Function(_ReceiptTransaction) _then) = __$ReceiptTransactionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'transaction_id') String? transactionId,@JsonKey(name: 'amount') double? amount,@JsonKey(name: 'transaction_date') String? transactionDate,@JsonKey(name: 'transaction_time') String? transactionTime,@JsonKey(name: 'fee_type') String? feeType,@JsonKey(name: 'transaction_reference_no') String? transactionReferenceNo, String? status, String? mode
});




}
/// @nodoc
class __$ReceiptTransactionCopyWithImpl<$Res>
    implements _$ReceiptTransactionCopyWith<$Res> {
  __$ReceiptTransactionCopyWithImpl(this._self, this._then);

  final _ReceiptTransaction _self;
  final $Res Function(_ReceiptTransaction) _then;

/// Create a copy of ReceiptTransaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = freezed,Object? amount = freezed,Object? transactionDate = freezed,Object? transactionTime = freezed,Object? feeType = freezed,Object? transactionReferenceNo = freezed,Object? status = freezed,Object? mode = freezed,}) {
  return _then(_ReceiptTransaction(
transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,transactionDate: freezed == transactionDate ? _self.transactionDate : transactionDate // ignore: cast_nullable_to_non_nullable
as String?,transactionTime: freezed == transactionTime ? _self.transactionTime : transactionTime // ignore: cast_nullable_to_non_nullable
as String?,feeType: freezed == feeType ? _self.feeType : feeType // ignore: cast_nullable_to_non_nullable
as String?,transactionReferenceNo: freezed == transactionReferenceNo ? _self.transactionReferenceNo : transactionReferenceNo // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,mode: freezed == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ReceiptStudent {

@JsonKey(name: 'first_name') String? get firstName; String? get school;@JsonKey(name: 'fathers_name') String? get fathersName;@JsonKey(name: 'primary_contact_name') String? get primaryContactName;@JsonKey(name: 'admission_no') String? get admissionNo;@JsonKey(name: 'admission_sought_to') String? get admissionSoughtTo;@JsonKey(name: 'academic_year') String? get academicYear;@JsonKey(name: 'program_name') String? get programName; String? get division;
/// Create a copy of ReceiptStudent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReceiptStudentCopyWith<ReceiptStudent> get copyWith => _$ReceiptStudentCopyWithImpl<ReceiptStudent>(this as ReceiptStudent, _$identity);

  /// Serializes this ReceiptStudent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReceiptStudent&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.school, school) || other.school == school)&&(identical(other.fathersName, fathersName) || other.fathersName == fathersName)&&(identical(other.primaryContactName, primaryContactName) || other.primaryContactName == primaryContactName)&&(identical(other.admissionNo, admissionNo) || other.admissionNo == admissionNo)&&(identical(other.admissionSoughtTo, admissionSoughtTo) || other.admissionSoughtTo == admissionSoughtTo)&&(identical(other.academicYear, academicYear) || other.academicYear == academicYear)&&(identical(other.programName, programName) || other.programName == programName)&&(identical(other.division, division) || other.division == division));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,school,fathersName,primaryContactName,admissionNo,admissionSoughtTo,academicYear,programName,division);

@override
String toString() {
  return 'ReceiptStudent(firstName: $firstName, school: $school, fathersName: $fathersName, primaryContactName: $primaryContactName, admissionNo: $admissionNo, admissionSoughtTo: $admissionSoughtTo, academicYear: $academicYear, programName: $programName, division: $division)';
}


}

/// @nodoc
abstract mixin class $ReceiptStudentCopyWith<$Res>  {
  factory $ReceiptStudentCopyWith(ReceiptStudent value, $Res Function(ReceiptStudent) _then) = _$ReceiptStudentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'first_name') String? firstName, String? school,@JsonKey(name: 'fathers_name') String? fathersName,@JsonKey(name: 'primary_contact_name') String? primaryContactName,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'admission_sought_to') String? admissionSoughtTo,@JsonKey(name: 'academic_year') String? academicYear,@JsonKey(name: 'program_name') String? programName, String? division
});




}
/// @nodoc
class _$ReceiptStudentCopyWithImpl<$Res>
    implements $ReceiptStudentCopyWith<$Res> {
  _$ReceiptStudentCopyWithImpl(this._self, this._then);

  final ReceiptStudent _self;
  final $Res Function(ReceiptStudent) _then;

/// Create a copy of ReceiptStudent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = freezed,Object? school = freezed,Object? fathersName = freezed,Object? primaryContactName = freezed,Object? admissionNo = freezed,Object? admissionSoughtTo = freezed,Object? academicYear = freezed,Object? programName = freezed,Object? division = freezed,}) {
  return _then(_self.copyWith(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,school: freezed == school ? _self.school : school // ignore: cast_nullable_to_non_nullable
as String?,fathersName: freezed == fathersName ? _self.fathersName : fathersName // ignore: cast_nullable_to_non_nullable
as String?,primaryContactName: freezed == primaryContactName ? _self.primaryContactName : primaryContactName // ignore: cast_nullable_to_non_nullable
as String?,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,admissionSoughtTo: freezed == admissionSoughtTo ? _self.admissionSoughtTo : admissionSoughtTo // ignore: cast_nullable_to_non_nullable
as String?,academicYear: freezed == academicYear ? _self.academicYear : academicYear // ignore: cast_nullable_to_non_nullable
as String?,programName: freezed == programName ? _self.programName : programName // ignore: cast_nullable_to_non_nullable
as String?,division: freezed == division ? _self.division : division // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReceiptStudent].
extension ReceiptStudentPatterns on ReceiptStudent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReceiptStudent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReceiptStudent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReceiptStudent value)  $default,){
final _that = this;
switch (_that) {
case _ReceiptStudent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReceiptStudent value)?  $default,){
final _that = this;
switch (_that) {
case _ReceiptStudent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'first_name')  String? firstName,  String? school, @JsonKey(name: 'fathers_name')  String? fathersName, @JsonKey(name: 'primary_contact_name')  String? primaryContactName, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'admission_sought_to')  String? admissionSoughtTo, @JsonKey(name: 'academic_year')  String? academicYear, @JsonKey(name: 'program_name')  String? programName,  String? division)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReceiptStudent() when $default != null:
return $default(_that.firstName,_that.school,_that.fathersName,_that.primaryContactName,_that.admissionNo,_that.admissionSoughtTo,_that.academicYear,_that.programName,_that.division);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'first_name')  String? firstName,  String? school, @JsonKey(name: 'fathers_name')  String? fathersName, @JsonKey(name: 'primary_contact_name')  String? primaryContactName, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'admission_sought_to')  String? admissionSoughtTo, @JsonKey(name: 'academic_year')  String? academicYear, @JsonKey(name: 'program_name')  String? programName,  String? division)  $default,) {final _that = this;
switch (_that) {
case _ReceiptStudent():
return $default(_that.firstName,_that.school,_that.fathersName,_that.primaryContactName,_that.admissionNo,_that.admissionSoughtTo,_that.academicYear,_that.programName,_that.division);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'first_name')  String? firstName,  String? school, @JsonKey(name: 'fathers_name')  String? fathersName, @JsonKey(name: 'primary_contact_name')  String? primaryContactName, @JsonKey(name: 'admission_no')  String? admissionNo, @JsonKey(name: 'admission_sought_to')  String? admissionSoughtTo, @JsonKey(name: 'academic_year')  String? academicYear, @JsonKey(name: 'program_name')  String? programName,  String? division)?  $default,) {final _that = this;
switch (_that) {
case _ReceiptStudent() when $default != null:
return $default(_that.firstName,_that.school,_that.fathersName,_that.primaryContactName,_that.admissionNo,_that.admissionSoughtTo,_that.academicYear,_that.programName,_that.division);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReceiptStudent implements ReceiptStudent {
  const _ReceiptStudent({@JsonKey(name: 'first_name') this.firstName, this.school, @JsonKey(name: 'fathers_name') this.fathersName, @JsonKey(name: 'primary_contact_name') this.primaryContactName, @JsonKey(name: 'admission_no') this.admissionNo, @JsonKey(name: 'admission_sought_to') this.admissionSoughtTo, @JsonKey(name: 'academic_year') this.academicYear, @JsonKey(name: 'program_name') this.programName, this.division});
  factory _ReceiptStudent.fromJson(Map<String, dynamic> json) => _$ReceiptStudentFromJson(json);

@override@JsonKey(name: 'first_name') final  String? firstName;
@override final  String? school;
@override@JsonKey(name: 'fathers_name') final  String? fathersName;
@override@JsonKey(name: 'primary_contact_name') final  String? primaryContactName;
@override@JsonKey(name: 'admission_no') final  String? admissionNo;
@override@JsonKey(name: 'admission_sought_to') final  String? admissionSoughtTo;
@override@JsonKey(name: 'academic_year') final  String? academicYear;
@override@JsonKey(name: 'program_name') final  String? programName;
@override final  String? division;

/// Create a copy of ReceiptStudent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReceiptStudentCopyWith<_ReceiptStudent> get copyWith => __$ReceiptStudentCopyWithImpl<_ReceiptStudent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReceiptStudentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReceiptStudent&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.school, school) || other.school == school)&&(identical(other.fathersName, fathersName) || other.fathersName == fathersName)&&(identical(other.primaryContactName, primaryContactName) || other.primaryContactName == primaryContactName)&&(identical(other.admissionNo, admissionNo) || other.admissionNo == admissionNo)&&(identical(other.admissionSoughtTo, admissionSoughtTo) || other.admissionSoughtTo == admissionSoughtTo)&&(identical(other.academicYear, academicYear) || other.academicYear == academicYear)&&(identical(other.programName, programName) || other.programName == programName)&&(identical(other.division, division) || other.division == division));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,school,fathersName,primaryContactName,admissionNo,admissionSoughtTo,academicYear,programName,division);

@override
String toString() {
  return 'ReceiptStudent(firstName: $firstName, school: $school, fathersName: $fathersName, primaryContactName: $primaryContactName, admissionNo: $admissionNo, admissionSoughtTo: $admissionSoughtTo, academicYear: $academicYear, programName: $programName, division: $division)';
}


}

/// @nodoc
abstract mixin class _$ReceiptStudentCopyWith<$Res> implements $ReceiptStudentCopyWith<$Res> {
  factory _$ReceiptStudentCopyWith(_ReceiptStudent value, $Res Function(_ReceiptStudent) _then) = __$ReceiptStudentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'first_name') String? firstName, String? school,@JsonKey(name: 'fathers_name') String? fathersName,@JsonKey(name: 'primary_contact_name') String? primaryContactName,@JsonKey(name: 'admission_no') String? admissionNo,@JsonKey(name: 'admission_sought_to') String? admissionSoughtTo,@JsonKey(name: 'academic_year') String? academicYear,@JsonKey(name: 'program_name') String? programName, String? division
});




}
/// @nodoc
class __$ReceiptStudentCopyWithImpl<$Res>
    implements _$ReceiptStudentCopyWith<$Res> {
  __$ReceiptStudentCopyWithImpl(this._self, this._then);

  final _ReceiptStudent _self;
  final $Res Function(_ReceiptStudent) _then;

/// Create a copy of ReceiptStudent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = freezed,Object? school = freezed,Object? fathersName = freezed,Object? primaryContactName = freezed,Object? admissionNo = freezed,Object? admissionSoughtTo = freezed,Object? academicYear = freezed,Object? programName = freezed,Object? division = freezed,}) {
  return _then(_ReceiptStudent(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,school: freezed == school ? _self.school : school // ignore: cast_nullable_to_non_nullable
as String?,fathersName: freezed == fathersName ? _self.fathersName : fathersName // ignore: cast_nullable_to_non_nullable
as String?,primaryContactName: freezed == primaryContactName ? _self.primaryContactName : primaryContactName // ignore: cast_nullable_to_non_nullable
as String?,admissionNo: freezed == admissionNo ? _self.admissionNo : admissionNo // ignore: cast_nullable_to_non_nullable
as String?,admissionSoughtTo: freezed == admissionSoughtTo ? _self.admissionSoughtTo : admissionSoughtTo // ignore: cast_nullable_to_non_nullable
as String?,academicYear: freezed == academicYear ? _self.academicYear : academicYear // ignore: cast_nullable_to_non_nullable
as String?,programName: freezed == programName ? _self.programName : programName // ignore: cast_nullable_to_non_nullable
as String?,division: freezed == division ? _self.division : division // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ReceiptSchool {

@JsonKey(name: 'sch_address') String? get schAddress;@JsonKey(name: 'sch_phn') String? get schPhn;@JsonKey(name: 'sch_sec_phn') String? get schSecPhn;@JsonKey(name: 'aff_no') String? get affNo;@JsonKey(name: 'aff_name') String? get affName;@JsonKey(name: 'school_email') String? get schoolEmail;@JsonKey(name: 'school_website') String? get schoolWebsite;@JsonKey(name: 'letter_head') String? get letterHead;
/// Create a copy of ReceiptSchool
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReceiptSchoolCopyWith<ReceiptSchool> get copyWith => _$ReceiptSchoolCopyWithImpl<ReceiptSchool>(this as ReceiptSchool, _$identity);

  /// Serializes this ReceiptSchool to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReceiptSchool&&(identical(other.schAddress, schAddress) || other.schAddress == schAddress)&&(identical(other.schPhn, schPhn) || other.schPhn == schPhn)&&(identical(other.schSecPhn, schSecPhn) || other.schSecPhn == schSecPhn)&&(identical(other.affNo, affNo) || other.affNo == affNo)&&(identical(other.affName, affName) || other.affName == affName)&&(identical(other.schoolEmail, schoolEmail) || other.schoolEmail == schoolEmail)&&(identical(other.schoolWebsite, schoolWebsite) || other.schoolWebsite == schoolWebsite)&&(identical(other.letterHead, letterHead) || other.letterHead == letterHead));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,schAddress,schPhn,schSecPhn,affNo,affName,schoolEmail,schoolWebsite,letterHead);

@override
String toString() {
  return 'ReceiptSchool(schAddress: $schAddress, schPhn: $schPhn, schSecPhn: $schSecPhn, affNo: $affNo, affName: $affName, schoolEmail: $schoolEmail, schoolWebsite: $schoolWebsite, letterHead: $letterHead)';
}


}

/// @nodoc
abstract mixin class $ReceiptSchoolCopyWith<$Res>  {
  factory $ReceiptSchoolCopyWith(ReceiptSchool value, $Res Function(ReceiptSchool) _then) = _$ReceiptSchoolCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'sch_address') String? schAddress,@JsonKey(name: 'sch_phn') String? schPhn,@JsonKey(name: 'sch_sec_phn') String? schSecPhn,@JsonKey(name: 'aff_no') String? affNo,@JsonKey(name: 'aff_name') String? affName,@JsonKey(name: 'school_email') String? schoolEmail,@JsonKey(name: 'school_website') String? schoolWebsite,@JsonKey(name: 'letter_head') String? letterHead
});




}
/// @nodoc
class _$ReceiptSchoolCopyWithImpl<$Res>
    implements $ReceiptSchoolCopyWith<$Res> {
  _$ReceiptSchoolCopyWithImpl(this._self, this._then);

  final ReceiptSchool _self;
  final $Res Function(ReceiptSchool) _then;

/// Create a copy of ReceiptSchool
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? schAddress = freezed,Object? schPhn = freezed,Object? schSecPhn = freezed,Object? affNo = freezed,Object? affName = freezed,Object? schoolEmail = freezed,Object? schoolWebsite = freezed,Object? letterHead = freezed,}) {
  return _then(_self.copyWith(
schAddress: freezed == schAddress ? _self.schAddress : schAddress // ignore: cast_nullable_to_non_nullable
as String?,schPhn: freezed == schPhn ? _self.schPhn : schPhn // ignore: cast_nullable_to_non_nullable
as String?,schSecPhn: freezed == schSecPhn ? _self.schSecPhn : schSecPhn // ignore: cast_nullable_to_non_nullable
as String?,affNo: freezed == affNo ? _self.affNo : affNo // ignore: cast_nullable_to_non_nullable
as String?,affName: freezed == affName ? _self.affName : affName // ignore: cast_nullable_to_non_nullable
as String?,schoolEmail: freezed == schoolEmail ? _self.schoolEmail : schoolEmail // ignore: cast_nullable_to_non_nullable
as String?,schoolWebsite: freezed == schoolWebsite ? _self.schoolWebsite : schoolWebsite // ignore: cast_nullable_to_non_nullable
as String?,letterHead: freezed == letterHead ? _self.letterHead : letterHead // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReceiptSchool].
extension ReceiptSchoolPatterns on ReceiptSchool {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReceiptSchool value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReceiptSchool() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReceiptSchool value)  $default,){
final _that = this;
switch (_that) {
case _ReceiptSchool():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReceiptSchool value)?  $default,){
final _that = this;
switch (_that) {
case _ReceiptSchool() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'sch_address')  String? schAddress, @JsonKey(name: 'sch_phn')  String? schPhn, @JsonKey(name: 'sch_sec_phn')  String? schSecPhn, @JsonKey(name: 'aff_no')  String? affNo, @JsonKey(name: 'aff_name')  String? affName, @JsonKey(name: 'school_email')  String? schoolEmail, @JsonKey(name: 'school_website')  String? schoolWebsite, @JsonKey(name: 'letter_head')  String? letterHead)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReceiptSchool() when $default != null:
return $default(_that.schAddress,_that.schPhn,_that.schSecPhn,_that.affNo,_that.affName,_that.schoolEmail,_that.schoolWebsite,_that.letterHead);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'sch_address')  String? schAddress, @JsonKey(name: 'sch_phn')  String? schPhn, @JsonKey(name: 'sch_sec_phn')  String? schSecPhn, @JsonKey(name: 'aff_no')  String? affNo, @JsonKey(name: 'aff_name')  String? affName, @JsonKey(name: 'school_email')  String? schoolEmail, @JsonKey(name: 'school_website')  String? schoolWebsite, @JsonKey(name: 'letter_head')  String? letterHead)  $default,) {final _that = this;
switch (_that) {
case _ReceiptSchool():
return $default(_that.schAddress,_that.schPhn,_that.schSecPhn,_that.affNo,_that.affName,_that.schoolEmail,_that.schoolWebsite,_that.letterHead);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'sch_address')  String? schAddress, @JsonKey(name: 'sch_phn')  String? schPhn, @JsonKey(name: 'sch_sec_phn')  String? schSecPhn, @JsonKey(name: 'aff_no')  String? affNo, @JsonKey(name: 'aff_name')  String? affName, @JsonKey(name: 'school_email')  String? schoolEmail, @JsonKey(name: 'school_website')  String? schoolWebsite, @JsonKey(name: 'letter_head')  String? letterHead)?  $default,) {final _that = this;
switch (_that) {
case _ReceiptSchool() when $default != null:
return $default(_that.schAddress,_that.schPhn,_that.schSecPhn,_that.affNo,_that.affName,_that.schoolEmail,_that.schoolWebsite,_that.letterHead);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReceiptSchool implements ReceiptSchool {
  const _ReceiptSchool({@JsonKey(name: 'sch_address') this.schAddress, @JsonKey(name: 'sch_phn') this.schPhn, @JsonKey(name: 'sch_sec_phn') this.schSecPhn, @JsonKey(name: 'aff_no') this.affNo, @JsonKey(name: 'aff_name') this.affName, @JsonKey(name: 'school_email') this.schoolEmail, @JsonKey(name: 'school_website') this.schoolWebsite, @JsonKey(name: 'letter_head') this.letterHead});
  factory _ReceiptSchool.fromJson(Map<String, dynamic> json) => _$ReceiptSchoolFromJson(json);

@override@JsonKey(name: 'sch_address') final  String? schAddress;
@override@JsonKey(name: 'sch_phn') final  String? schPhn;
@override@JsonKey(name: 'sch_sec_phn') final  String? schSecPhn;
@override@JsonKey(name: 'aff_no') final  String? affNo;
@override@JsonKey(name: 'aff_name') final  String? affName;
@override@JsonKey(name: 'school_email') final  String? schoolEmail;
@override@JsonKey(name: 'school_website') final  String? schoolWebsite;
@override@JsonKey(name: 'letter_head') final  String? letterHead;

/// Create a copy of ReceiptSchool
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReceiptSchoolCopyWith<_ReceiptSchool> get copyWith => __$ReceiptSchoolCopyWithImpl<_ReceiptSchool>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReceiptSchoolToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReceiptSchool&&(identical(other.schAddress, schAddress) || other.schAddress == schAddress)&&(identical(other.schPhn, schPhn) || other.schPhn == schPhn)&&(identical(other.schSecPhn, schSecPhn) || other.schSecPhn == schSecPhn)&&(identical(other.affNo, affNo) || other.affNo == affNo)&&(identical(other.affName, affName) || other.affName == affName)&&(identical(other.schoolEmail, schoolEmail) || other.schoolEmail == schoolEmail)&&(identical(other.schoolWebsite, schoolWebsite) || other.schoolWebsite == schoolWebsite)&&(identical(other.letterHead, letterHead) || other.letterHead == letterHead));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,schAddress,schPhn,schSecPhn,affNo,affName,schoolEmail,schoolWebsite,letterHead);

@override
String toString() {
  return 'ReceiptSchool(schAddress: $schAddress, schPhn: $schPhn, schSecPhn: $schSecPhn, affNo: $affNo, affName: $affName, schoolEmail: $schoolEmail, schoolWebsite: $schoolWebsite, letterHead: $letterHead)';
}


}

/// @nodoc
abstract mixin class _$ReceiptSchoolCopyWith<$Res> implements $ReceiptSchoolCopyWith<$Res> {
  factory _$ReceiptSchoolCopyWith(_ReceiptSchool value, $Res Function(_ReceiptSchool) _then) = __$ReceiptSchoolCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'sch_address') String? schAddress,@JsonKey(name: 'sch_phn') String? schPhn,@JsonKey(name: 'sch_sec_phn') String? schSecPhn,@JsonKey(name: 'aff_no') String? affNo,@JsonKey(name: 'aff_name') String? affName,@JsonKey(name: 'school_email') String? schoolEmail,@JsonKey(name: 'school_website') String? schoolWebsite,@JsonKey(name: 'letter_head') String? letterHead
});




}
/// @nodoc
class __$ReceiptSchoolCopyWithImpl<$Res>
    implements _$ReceiptSchoolCopyWith<$Res> {
  __$ReceiptSchoolCopyWithImpl(this._self, this._then);

  final _ReceiptSchool _self;
  final $Res Function(_ReceiptSchool) _then;

/// Create a copy of ReceiptSchool
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? schAddress = freezed,Object? schPhn = freezed,Object? schSecPhn = freezed,Object? affNo = freezed,Object? affName = freezed,Object? schoolEmail = freezed,Object? schoolWebsite = freezed,Object? letterHead = freezed,}) {
  return _then(_ReceiptSchool(
schAddress: freezed == schAddress ? _self.schAddress : schAddress // ignore: cast_nullable_to_non_nullable
as String?,schPhn: freezed == schPhn ? _self.schPhn : schPhn // ignore: cast_nullable_to_non_nullable
as String?,schSecPhn: freezed == schSecPhn ? _self.schSecPhn : schSecPhn // ignore: cast_nullable_to_non_nullable
as String?,affNo: freezed == affNo ? _self.affNo : affNo // ignore: cast_nullable_to_non_nullable
as String?,affName: freezed == affName ? _self.affName : affName // ignore: cast_nullable_to_non_nullable
as String?,schoolEmail: freezed == schoolEmail ? _self.schoolEmail : schoolEmail // ignore: cast_nullable_to_non_nullable
as String?,schoolWebsite: freezed == schoolWebsite ? _self.schoolWebsite : schoolWebsite // ignore: cast_nullable_to_non_nullable
as String?,letterHead: freezed == letterHead ? _self.letterHead : letterHead // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
