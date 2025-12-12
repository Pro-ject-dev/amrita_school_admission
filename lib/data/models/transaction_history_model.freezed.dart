// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionHistoryModel {

@JsonKey(name: 'applicant') String? get applicant;@JsonKey(name: 'school') String? get school;@JsonKey(name: 'student_id') String? get studentId;@JsonKey(name: 'payment') List<PaymentTransaction> get payment;@JsonKey(name: 'cash_transaction_list') List<CashTransaction> get cashTransactionList;
/// Create a copy of TransactionHistoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionHistoryModelCopyWith<TransactionHistoryModel> get copyWith => _$TransactionHistoryModelCopyWithImpl<TransactionHistoryModel>(this as TransactionHistoryModel, _$identity);

  /// Serializes this TransactionHistoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionHistoryModel&&(identical(other.applicant, applicant) || other.applicant == applicant)&&(identical(other.school, school) || other.school == school)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&const DeepCollectionEquality().equals(other.payment, payment)&&const DeepCollectionEquality().equals(other.cashTransactionList, cashTransactionList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,applicant,school,studentId,const DeepCollectionEquality().hash(payment),const DeepCollectionEquality().hash(cashTransactionList));

@override
String toString() {
  return 'TransactionHistoryModel(applicant: $applicant, school: $school, studentId: $studentId, payment: $payment, cashTransactionList: $cashTransactionList)';
}


}

/// @nodoc
abstract mixin class $TransactionHistoryModelCopyWith<$Res>  {
  factory $TransactionHistoryModelCopyWith(TransactionHistoryModel value, $Res Function(TransactionHistoryModel) _then) = _$TransactionHistoryModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'applicant') String? applicant,@JsonKey(name: 'school') String? school,@JsonKey(name: 'student_id') String? studentId,@JsonKey(name: 'payment') List<PaymentTransaction> payment,@JsonKey(name: 'cash_transaction_list') List<CashTransaction> cashTransactionList
});




}
/// @nodoc
class _$TransactionHistoryModelCopyWithImpl<$Res>
    implements $TransactionHistoryModelCopyWith<$Res> {
  _$TransactionHistoryModelCopyWithImpl(this._self, this._then);

  final TransactionHistoryModel _self;
  final $Res Function(TransactionHistoryModel) _then;

/// Create a copy of TransactionHistoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? applicant = freezed,Object? school = freezed,Object? studentId = freezed,Object? payment = null,Object? cashTransactionList = null,}) {
  return _then(_self.copyWith(
applicant: freezed == applicant ? _self.applicant : applicant // ignore: cast_nullable_to_non_nullable
as String?,school: freezed == school ? _self.school : school // ignore: cast_nullable_to_non_nullable
as String?,studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,payment: null == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as List<PaymentTransaction>,cashTransactionList: null == cashTransactionList ? _self.cashTransactionList : cashTransactionList // ignore: cast_nullable_to_non_nullable
as List<CashTransaction>,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionHistoryModel].
extension TransactionHistoryModelPatterns on TransactionHistoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionHistoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionHistoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionHistoryModel value)  $default,){
final _that = this;
switch (_that) {
case _TransactionHistoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionHistoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionHistoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'applicant')  String? applicant, @JsonKey(name: 'school')  String? school, @JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'payment')  List<PaymentTransaction> payment, @JsonKey(name: 'cash_transaction_list')  List<CashTransaction> cashTransactionList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionHistoryModel() when $default != null:
return $default(_that.applicant,_that.school,_that.studentId,_that.payment,_that.cashTransactionList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'applicant')  String? applicant, @JsonKey(name: 'school')  String? school, @JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'payment')  List<PaymentTransaction> payment, @JsonKey(name: 'cash_transaction_list')  List<CashTransaction> cashTransactionList)  $default,) {final _that = this;
switch (_that) {
case _TransactionHistoryModel():
return $default(_that.applicant,_that.school,_that.studentId,_that.payment,_that.cashTransactionList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'applicant')  String? applicant, @JsonKey(name: 'school')  String? school, @JsonKey(name: 'student_id')  String? studentId, @JsonKey(name: 'payment')  List<PaymentTransaction> payment, @JsonKey(name: 'cash_transaction_list')  List<CashTransaction> cashTransactionList)?  $default,) {final _that = this;
switch (_that) {
case _TransactionHistoryModel() when $default != null:
return $default(_that.applicant,_that.school,_that.studentId,_that.payment,_that.cashTransactionList);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionHistoryModel implements TransactionHistoryModel {
  const _TransactionHistoryModel({@JsonKey(name: 'applicant') this.applicant, @JsonKey(name: 'school') this.school, @JsonKey(name: 'student_id') this.studentId, @JsonKey(name: 'payment') final  List<PaymentTransaction> payment = const [], @JsonKey(name: 'cash_transaction_list') final  List<CashTransaction> cashTransactionList = const []}): _payment = payment,_cashTransactionList = cashTransactionList;
  factory _TransactionHistoryModel.fromJson(Map<String, dynamic> json) => _$TransactionHistoryModelFromJson(json);

@override@JsonKey(name: 'applicant') final  String? applicant;
@override@JsonKey(name: 'school') final  String? school;
@override@JsonKey(name: 'student_id') final  String? studentId;
 final  List<PaymentTransaction> _payment;
@override@JsonKey(name: 'payment') List<PaymentTransaction> get payment {
  if (_payment is EqualUnmodifiableListView) return _payment;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_payment);
}

 final  List<CashTransaction> _cashTransactionList;
@override@JsonKey(name: 'cash_transaction_list') List<CashTransaction> get cashTransactionList {
  if (_cashTransactionList is EqualUnmodifiableListView) return _cashTransactionList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cashTransactionList);
}


/// Create a copy of TransactionHistoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionHistoryModelCopyWith<_TransactionHistoryModel> get copyWith => __$TransactionHistoryModelCopyWithImpl<_TransactionHistoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionHistoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionHistoryModel&&(identical(other.applicant, applicant) || other.applicant == applicant)&&(identical(other.school, school) || other.school == school)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&const DeepCollectionEquality().equals(other._payment, _payment)&&const DeepCollectionEquality().equals(other._cashTransactionList, _cashTransactionList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,applicant,school,studentId,const DeepCollectionEquality().hash(_payment),const DeepCollectionEquality().hash(_cashTransactionList));

@override
String toString() {
  return 'TransactionHistoryModel(applicant: $applicant, school: $school, studentId: $studentId, payment: $payment, cashTransactionList: $cashTransactionList)';
}


}

/// @nodoc
abstract mixin class _$TransactionHistoryModelCopyWith<$Res> implements $TransactionHistoryModelCopyWith<$Res> {
  factory _$TransactionHistoryModelCopyWith(_TransactionHistoryModel value, $Res Function(_TransactionHistoryModel) _then) = __$TransactionHistoryModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'applicant') String? applicant,@JsonKey(name: 'school') String? school,@JsonKey(name: 'student_id') String? studentId,@JsonKey(name: 'payment') List<PaymentTransaction> payment,@JsonKey(name: 'cash_transaction_list') List<CashTransaction> cashTransactionList
});




}
/// @nodoc
class __$TransactionHistoryModelCopyWithImpl<$Res>
    implements _$TransactionHistoryModelCopyWith<$Res> {
  __$TransactionHistoryModelCopyWithImpl(this._self, this._then);

  final _TransactionHistoryModel _self;
  final $Res Function(_TransactionHistoryModel) _then;

/// Create a copy of TransactionHistoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? applicant = freezed,Object? school = freezed,Object? studentId = freezed,Object? payment = null,Object? cashTransactionList = null,}) {
  return _then(_TransactionHistoryModel(
applicant: freezed == applicant ? _self.applicant : applicant // ignore: cast_nullable_to_non_nullable
as String?,school: freezed == school ? _self.school : school // ignore: cast_nullable_to_non_nullable
as String?,studentId: freezed == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String?,payment: null == payment ? _self._payment : payment // ignore: cast_nullable_to_non_nullable
as List<PaymentTransaction>,cashTransactionList: null == cashTransactionList ? _self._cashTransactionList : cashTransactionList // ignore: cast_nullable_to_non_nullable
as List<CashTransaction>,
  ));
}


}


/// @nodoc
mixin _$PaymentTransaction {

 String get name; String get title;@JsonKey(name: 'net_amount') double? get netAmount;@JsonKey(name: 'fee_type') String? get feeType; String? get status;@JsonKey(name: 'fee_mode') String? get feeMode;@JsonKey(name: 'mobile_number') String? get mobileNumber;
/// Create a copy of PaymentTransaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentTransactionCopyWith<PaymentTransaction> get copyWith => _$PaymentTransactionCopyWithImpl<PaymentTransaction>(this as PaymentTransaction, _$identity);

  /// Serializes this PaymentTransaction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentTransaction&&(identical(other.name, name) || other.name == name)&&(identical(other.title, title) || other.title == title)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount)&&(identical(other.feeType, feeType) || other.feeType == feeType)&&(identical(other.status, status) || other.status == status)&&(identical(other.feeMode, feeMode) || other.feeMode == feeMode)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,title,netAmount,feeType,status,feeMode,mobileNumber);

@override
String toString() {
  return 'PaymentTransaction(name: $name, title: $title, netAmount: $netAmount, feeType: $feeType, status: $status, feeMode: $feeMode, mobileNumber: $mobileNumber)';
}


}

/// @nodoc
abstract mixin class $PaymentTransactionCopyWith<$Res>  {
  factory $PaymentTransactionCopyWith(PaymentTransaction value, $Res Function(PaymentTransaction) _then) = _$PaymentTransactionCopyWithImpl;
@useResult
$Res call({
 String name, String title,@JsonKey(name: 'net_amount') double? netAmount,@JsonKey(name: 'fee_type') String? feeType, String? status,@JsonKey(name: 'fee_mode') String? feeMode,@JsonKey(name: 'mobile_number') String? mobileNumber
});




}
/// @nodoc
class _$PaymentTransactionCopyWithImpl<$Res>
    implements $PaymentTransactionCopyWith<$Res> {
  _$PaymentTransactionCopyWithImpl(this._self, this._then);

  final PaymentTransaction _self;
  final $Res Function(PaymentTransaction) _then;

/// Create a copy of PaymentTransaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? title = null,Object? netAmount = freezed,Object? feeType = freezed,Object? status = freezed,Object? feeMode = freezed,Object? mobileNumber = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,netAmount: freezed == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as double?,feeType: freezed == feeType ? _self.feeType : feeType // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,feeMode: freezed == feeMode ? _self.feeMode : feeMode // ignore: cast_nullable_to_non_nullable
as String?,mobileNumber: freezed == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentTransaction].
extension PaymentTransactionPatterns on PaymentTransaction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentTransaction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentTransaction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentTransaction value)  $default,){
final _that = this;
switch (_that) {
case _PaymentTransaction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentTransaction value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentTransaction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String title, @JsonKey(name: 'net_amount')  double? netAmount, @JsonKey(name: 'fee_type')  String? feeType,  String? status, @JsonKey(name: 'fee_mode')  String? feeMode, @JsonKey(name: 'mobile_number')  String? mobileNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentTransaction() when $default != null:
return $default(_that.name,_that.title,_that.netAmount,_that.feeType,_that.status,_that.feeMode,_that.mobileNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String title, @JsonKey(name: 'net_amount')  double? netAmount, @JsonKey(name: 'fee_type')  String? feeType,  String? status, @JsonKey(name: 'fee_mode')  String? feeMode, @JsonKey(name: 'mobile_number')  String? mobileNumber)  $default,) {final _that = this;
switch (_that) {
case _PaymentTransaction():
return $default(_that.name,_that.title,_that.netAmount,_that.feeType,_that.status,_that.feeMode,_that.mobileNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String title, @JsonKey(name: 'net_amount')  double? netAmount, @JsonKey(name: 'fee_type')  String? feeType,  String? status, @JsonKey(name: 'fee_mode')  String? feeMode, @JsonKey(name: 'mobile_number')  String? mobileNumber)?  $default,) {final _that = this;
switch (_that) {
case _PaymentTransaction() when $default != null:
return $default(_that.name,_that.title,_that.netAmount,_that.feeType,_that.status,_that.feeMode,_that.mobileNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentTransaction implements PaymentTransaction {
  const _PaymentTransaction({required this.name, required this.title, @JsonKey(name: 'net_amount') required this.netAmount, @JsonKey(name: 'fee_type') required this.feeType, required this.status, @JsonKey(name: 'fee_mode') required this.feeMode, @JsonKey(name: 'mobile_number') this.mobileNumber});
  factory _PaymentTransaction.fromJson(Map<String, dynamic> json) => _$PaymentTransactionFromJson(json);

@override final  String name;
@override final  String title;
@override@JsonKey(name: 'net_amount') final  double? netAmount;
@override@JsonKey(name: 'fee_type') final  String? feeType;
@override final  String? status;
@override@JsonKey(name: 'fee_mode') final  String? feeMode;
@override@JsonKey(name: 'mobile_number') final  String? mobileNumber;

/// Create a copy of PaymentTransaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentTransactionCopyWith<_PaymentTransaction> get copyWith => __$PaymentTransactionCopyWithImpl<_PaymentTransaction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentTransactionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentTransaction&&(identical(other.name, name) || other.name == name)&&(identical(other.title, title) || other.title == title)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount)&&(identical(other.feeType, feeType) || other.feeType == feeType)&&(identical(other.status, status) || other.status == status)&&(identical(other.feeMode, feeMode) || other.feeMode == feeMode)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,title,netAmount,feeType,status,feeMode,mobileNumber);

@override
String toString() {
  return 'PaymentTransaction(name: $name, title: $title, netAmount: $netAmount, feeType: $feeType, status: $status, feeMode: $feeMode, mobileNumber: $mobileNumber)';
}


}

/// @nodoc
abstract mixin class _$PaymentTransactionCopyWith<$Res> implements $PaymentTransactionCopyWith<$Res> {
  factory _$PaymentTransactionCopyWith(_PaymentTransaction value, $Res Function(_PaymentTransaction) _then) = __$PaymentTransactionCopyWithImpl;
@override @useResult
$Res call({
 String name, String title,@JsonKey(name: 'net_amount') double? netAmount,@JsonKey(name: 'fee_type') String? feeType, String? status,@JsonKey(name: 'fee_mode') String? feeMode,@JsonKey(name: 'mobile_number') String? mobileNumber
});




}
/// @nodoc
class __$PaymentTransactionCopyWithImpl<$Res>
    implements _$PaymentTransactionCopyWith<$Res> {
  __$PaymentTransactionCopyWithImpl(this._self, this._then);

  final _PaymentTransaction _self;
  final $Res Function(_PaymentTransaction) _then;

/// Create a copy of PaymentTransaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? title = null,Object? netAmount = freezed,Object? feeType = freezed,Object? status = freezed,Object? feeMode = freezed,Object? mobileNumber = freezed,}) {
  return _then(_PaymentTransaction(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,netAmount: freezed == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as double?,feeType: freezed == feeType ? _self.feeType : feeType // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,feeMode: freezed == feeMode ? _self.feeMode : feeMode // ignore: cast_nullable_to_non_nullable
as String?,mobileNumber: freezed == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CashTransaction {

 String get name;@JsonKey(name: 'transaction_date') String? get transactionDate;@JsonKey(name: 'fee_type') String? get feeType;@JsonKey(name: 'fee_mode') String? get feeMode; double? get amount; String? get status; String? get mode;
/// Create a copy of CashTransaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CashTransactionCopyWith<CashTransaction> get copyWith => _$CashTransactionCopyWithImpl<CashTransaction>(this as CashTransaction, _$identity);

  /// Serializes this CashTransaction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CashTransaction&&(identical(other.name, name) || other.name == name)&&(identical(other.transactionDate, transactionDate) || other.transactionDate == transactionDate)&&(identical(other.feeType, feeType) || other.feeType == feeType)&&(identical(other.feeMode, feeMode) || other.feeMode == feeMode)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.mode, mode) || other.mode == mode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,transactionDate,feeType,feeMode,amount,status,mode);

@override
String toString() {
  return 'CashTransaction(name: $name, transactionDate: $transactionDate, feeType: $feeType, feeMode: $feeMode, amount: $amount, status: $status, mode: $mode)';
}


}

/// @nodoc
abstract mixin class $CashTransactionCopyWith<$Res>  {
  factory $CashTransactionCopyWith(CashTransaction value, $Res Function(CashTransaction) _then) = _$CashTransactionCopyWithImpl;
@useResult
$Res call({
 String name,@JsonKey(name: 'transaction_date') String? transactionDate,@JsonKey(name: 'fee_type') String? feeType,@JsonKey(name: 'fee_mode') String? feeMode, double? amount, String? status, String? mode
});




}
/// @nodoc
class _$CashTransactionCopyWithImpl<$Res>
    implements $CashTransactionCopyWith<$Res> {
  _$CashTransactionCopyWithImpl(this._self, this._then);

  final CashTransaction _self;
  final $Res Function(CashTransaction) _then;

/// Create a copy of CashTransaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? transactionDate = freezed,Object? feeType = freezed,Object? feeMode = freezed,Object? amount = freezed,Object? status = freezed,Object? mode = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,transactionDate: freezed == transactionDate ? _self.transactionDate : transactionDate // ignore: cast_nullable_to_non_nullable
as String?,feeType: freezed == feeType ? _self.feeType : feeType // ignore: cast_nullable_to_non_nullable
as String?,feeMode: freezed == feeMode ? _self.feeMode : feeMode // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,mode: freezed == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CashTransaction].
extension CashTransactionPatterns on CashTransaction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CashTransaction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CashTransaction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CashTransaction value)  $default,){
final _that = this;
switch (_that) {
case _CashTransaction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CashTransaction value)?  $default,){
final _that = this;
switch (_that) {
case _CashTransaction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name, @JsonKey(name: 'transaction_date')  String? transactionDate, @JsonKey(name: 'fee_type')  String? feeType, @JsonKey(name: 'fee_mode')  String? feeMode,  double? amount,  String? status,  String? mode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CashTransaction() when $default != null:
return $default(_that.name,_that.transactionDate,_that.feeType,_that.feeMode,_that.amount,_that.status,_that.mode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name, @JsonKey(name: 'transaction_date')  String? transactionDate, @JsonKey(name: 'fee_type')  String? feeType, @JsonKey(name: 'fee_mode')  String? feeMode,  double? amount,  String? status,  String? mode)  $default,) {final _that = this;
switch (_that) {
case _CashTransaction():
return $default(_that.name,_that.transactionDate,_that.feeType,_that.feeMode,_that.amount,_that.status,_that.mode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name, @JsonKey(name: 'transaction_date')  String? transactionDate, @JsonKey(name: 'fee_type')  String? feeType, @JsonKey(name: 'fee_mode')  String? feeMode,  double? amount,  String? status,  String? mode)?  $default,) {final _that = this;
switch (_that) {
case _CashTransaction() when $default != null:
return $default(_that.name,_that.transactionDate,_that.feeType,_that.feeMode,_that.amount,_that.status,_that.mode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CashTransaction implements CashTransaction {
  const _CashTransaction({required this.name, @JsonKey(name: 'transaction_date') required this.transactionDate, @JsonKey(name: 'fee_type') required this.feeType, @JsonKey(name: 'fee_mode') required this.feeMode, required this.amount, required this.status, required this.mode});
  factory _CashTransaction.fromJson(Map<String, dynamic> json) => _$CashTransactionFromJson(json);

@override final  String name;
@override@JsonKey(name: 'transaction_date') final  String? transactionDate;
@override@JsonKey(name: 'fee_type') final  String? feeType;
@override@JsonKey(name: 'fee_mode') final  String? feeMode;
@override final  double? amount;
@override final  String? status;
@override final  String? mode;

/// Create a copy of CashTransaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CashTransactionCopyWith<_CashTransaction> get copyWith => __$CashTransactionCopyWithImpl<_CashTransaction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CashTransactionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CashTransaction&&(identical(other.name, name) || other.name == name)&&(identical(other.transactionDate, transactionDate) || other.transactionDate == transactionDate)&&(identical(other.feeType, feeType) || other.feeType == feeType)&&(identical(other.feeMode, feeMode) || other.feeMode == feeMode)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.mode, mode) || other.mode == mode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,transactionDate,feeType,feeMode,amount,status,mode);

@override
String toString() {
  return 'CashTransaction(name: $name, transactionDate: $transactionDate, feeType: $feeType, feeMode: $feeMode, amount: $amount, status: $status, mode: $mode)';
}


}

/// @nodoc
abstract mixin class _$CashTransactionCopyWith<$Res> implements $CashTransactionCopyWith<$Res> {
  factory _$CashTransactionCopyWith(_CashTransaction value, $Res Function(_CashTransaction) _then) = __$CashTransactionCopyWithImpl;
@override @useResult
$Res call({
 String name,@JsonKey(name: 'transaction_date') String? transactionDate,@JsonKey(name: 'fee_type') String? feeType,@JsonKey(name: 'fee_mode') String? feeMode, double? amount, String? status, String? mode
});




}
/// @nodoc
class __$CashTransactionCopyWithImpl<$Res>
    implements _$CashTransactionCopyWith<$Res> {
  __$CashTransactionCopyWithImpl(this._self, this._then);

  final _CashTransaction _self;
  final $Res Function(_CashTransaction) _then;

/// Create a copy of CashTransaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? transactionDate = freezed,Object? feeType = freezed,Object? feeMode = freezed,Object? amount = freezed,Object? status = freezed,Object? mode = freezed,}) {
  return _then(_CashTransaction(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,transactionDate: freezed == transactionDate ? _self.transactionDate : transactionDate // ignore: cast_nullable_to_non_nullable
as String?,feeType: freezed == feeType ? _self.feeType : feeType // ignore: cast_nullable_to_non_nullable
as String?,feeMode: freezed == feeMode ? _self.feeMode : feeMode // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,mode: freezed == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
