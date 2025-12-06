// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PaymentResponseModel _$PaymentResponseModelFromJson(Map<String, dynamic> json) {
  return _PaymentResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentResponseModel {
  String get status => throw _privateConstructorUsedError;
  String get transactionId => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this PaymentResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentResponseModelCopyWith<PaymentResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentResponseModelCopyWith<$Res> {
  factory $PaymentResponseModelCopyWith(
    PaymentResponseModel value,
    $Res Function(PaymentResponseModel) then,
  ) = _$PaymentResponseModelCopyWithImpl<$Res, PaymentResponseModel>;
  @useResult
  $Res call({
    String status,
    String transactionId,
    double amount,
    DateTime date,
    String? message,
  });
}

/// @nodoc
class _$PaymentResponseModelCopyWithImpl<
  $Res,
  $Val extends PaymentResponseModel
>
    implements $PaymentResponseModelCopyWith<$Res> {
  _$PaymentResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? transactionId = null,
    Object? amount = null,
    Object? date = null,
    Object? message = freezed,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            transactionId: null == transactionId
                ? _value.transactionId
                : transactionId // ignore: cast_nullable_to_non_nullable
                      as String,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as double,
            date: null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PaymentResponseModelImplCopyWith<$Res>
    implements $PaymentResponseModelCopyWith<$Res> {
  factory _$$PaymentResponseModelImplCopyWith(
    _$PaymentResponseModelImpl value,
    $Res Function(_$PaymentResponseModelImpl) then,
  ) = __$$PaymentResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String status,
    String transactionId,
    double amount,
    DateTime date,
    String? message,
  });
}

/// @nodoc
class __$$PaymentResponseModelImplCopyWithImpl<$Res>
    extends _$PaymentResponseModelCopyWithImpl<$Res, _$PaymentResponseModelImpl>
    implements _$$PaymentResponseModelImplCopyWith<$Res> {
  __$$PaymentResponseModelImplCopyWithImpl(
    _$PaymentResponseModelImpl _value,
    $Res Function(_$PaymentResponseModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? transactionId = null,
    Object? amount = null,
    Object? date = null,
    Object? message = freezed,
  }) {
    return _then(
      _$PaymentResponseModelImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        transactionId: null == transactionId
            ? _value.transactionId
            : transactionId // ignore: cast_nullable_to_non_nullable
                  as String,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as double,
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentResponseModelImpl implements _PaymentResponseModel {
  const _$PaymentResponseModelImpl({
    required this.status,
    required this.transactionId,
    required this.amount,
    required this.date,
    this.message,
  });

  factory _$PaymentResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentResponseModelImplFromJson(json);

  @override
  final String status;
  @override
  final String transactionId;
  @override
  final double amount;
  @override
  final DateTime date;
  @override
  final String? message;

  @override
  String toString() {
    return 'PaymentResponseModel(status: $status, transactionId: $transactionId, amount: $amount, date: $date, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, transactionId, amount, date, message);

  /// Create a copy of PaymentResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentResponseModelImplCopyWith<_$PaymentResponseModelImpl>
  get copyWith =>
      __$$PaymentResponseModelImplCopyWithImpl<_$PaymentResponseModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentResponseModelImplToJson(this);
  }
}

abstract class _PaymentResponseModel implements PaymentResponseModel {
  const factory _PaymentResponseModel({
    required final String status,
    required final String transactionId,
    required final double amount,
    required final DateTime date,
    final String? message,
  }) = _$PaymentResponseModelImpl;

  factory _PaymentResponseModel.fromJson(Map<String, dynamic> json) =
      _$PaymentResponseModelImpl.fromJson;

  @override
  String get status;
  @override
  String get transactionId;
  @override
  double get amount;
  @override
  DateTime get date;
  @override
  String? get message;

  /// Create a copy of PaymentResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentResponseModelImplCopyWith<_$PaymentResponseModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
