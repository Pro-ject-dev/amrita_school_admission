// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admission_form_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AdmissionFormModel _$AdmissionFormModelFromJson(Map<String, dynamic> json) {
  return _AdmissionFormModel.fromJson(json);
}

/// @nodoc
mixin _$AdmissionFormModel {
  ApplicantDetailsModel? get applicantDetails =>
      throw _privateConstructorUsedError;
  ParentContactModel? get parentContact => throw _privateConstructorUsedError;
  AddressModel? get address => throw _privateConstructorUsedError;
  bool get isPaymentComplete => throw _privateConstructorUsedError;
  String? get paymentId => throw _privateConstructorUsedError;

  /// Serializes this AdmissionFormModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdmissionFormModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdmissionFormModelCopyWith<AdmissionFormModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdmissionFormModelCopyWith<$Res> {
  factory $AdmissionFormModelCopyWith(
    AdmissionFormModel value,
    $Res Function(AdmissionFormModel) then,
  ) = _$AdmissionFormModelCopyWithImpl<$Res, AdmissionFormModel>;
  @useResult
  $Res call({
    ApplicantDetailsModel? applicantDetails,
    ParentContactModel? parentContact,
    AddressModel? address,
    bool isPaymentComplete,
    String? paymentId,
  });

  $ApplicantDetailsModelCopyWith<$Res>? get applicantDetails;
  $ParentContactModelCopyWith<$Res>? get parentContact;
  $AddressModelCopyWith<$Res>? get address;
}

/// @nodoc
class _$AdmissionFormModelCopyWithImpl<$Res, $Val extends AdmissionFormModel>
    implements $AdmissionFormModelCopyWith<$Res> {
  _$AdmissionFormModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdmissionFormModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applicantDetails = freezed,
    Object? parentContact = freezed,
    Object? address = freezed,
    Object? isPaymentComplete = null,
    Object? paymentId = freezed,
  }) {
    return _then(
      _value.copyWith(
            applicantDetails: freezed == applicantDetails
                ? _value.applicantDetails
                : applicantDetails // ignore: cast_nullable_to_non_nullable
                      as ApplicantDetailsModel?,
            parentContact: freezed == parentContact
                ? _value.parentContact
                : parentContact // ignore: cast_nullable_to_non_nullable
                      as ParentContactModel?,
            address: freezed == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                      as AddressModel?,
            isPaymentComplete: null == isPaymentComplete
                ? _value.isPaymentComplete
                : isPaymentComplete // ignore: cast_nullable_to_non_nullable
                      as bool,
            paymentId: freezed == paymentId
                ? _value.paymentId
                : paymentId // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of AdmissionFormModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApplicantDetailsModelCopyWith<$Res>? get applicantDetails {
    if (_value.applicantDetails == null) {
      return null;
    }

    return $ApplicantDetailsModelCopyWith<$Res>(_value.applicantDetails!, (
      value,
    ) {
      return _then(_value.copyWith(applicantDetails: value) as $Val);
    });
  }

  /// Create a copy of AdmissionFormModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParentContactModelCopyWith<$Res>? get parentContact {
    if (_value.parentContact == null) {
      return null;
    }

    return $ParentContactModelCopyWith<$Res>(_value.parentContact!, (value) {
      return _then(_value.copyWith(parentContact: value) as $Val);
    });
  }

  /// Create a copy of AdmissionFormModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressModelCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressModelCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdmissionFormModelImplCopyWith<$Res>
    implements $AdmissionFormModelCopyWith<$Res> {
  factory _$$AdmissionFormModelImplCopyWith(
    _$AdmissionFormModelImpl value,
    $Res Function(_$AdmissionFormModelImpl) then,
  ) = __$$AdmissionFormModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    ApplicantDetailsModel? applicantDetails,
    ParentContactModel? parentContact,
    AddressModel? address,
    bool isPaymentComplete,
    String? paymentId,
  });

  @override
  $ApplicantDetailsModelCopyWith<$Res>? get applicantDetails;
  @override
  $ParentContactModelCopyWith<$Res>? get parentContact;
  @override
  $AddressModelCopyWith<$Res>? get address;
}

/// @nodoc
class __$$AdmissionFormModelImplCopyWithImpl<$Res>
    extends _$AdmissionFormModelCopyWithImpl<$Res, _$AdmissionFormModelImpl>
    implements _$$AdmissionFormModelImplCopyWith<$Res> {
  __$$AdmissionFormModelImplCopyWithImpl(
    _$AdmissionFormModelImpl _value,
    $Res Function(_$AdmissionFormModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AdmissionFormModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applicantDetails = freezed,
    Object? parentContact = freezed,
    Object? address = freezed,
    Object? isPaymentComplete = null,
    Object? paymentId = freezed,
  }) {
    return _then(
      _$AdmissionFormModelImpl(
        applicantDetails: freezed == applicantDetails
            ? _value.applicantDetails
            : applicantDetails // ignore: cast_nullable_to_non_nullable
                  as ApplicantDetailsModel?,
        parentContact: freezed == parentContact
            ? _value.parentContact
            : parentContact // ignore: cast_nullable_to_non_nullable
                  as ParentContactModel?,
        address: freezed == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                  as AddressModel?,
        isPaymentComplete: null == isPaymentComplete
            ? _value.isPaymentComplete
            : isPaymentComplete // ignore: cast_nullable_to_non_nullable
                  as bool,
        paymentId: freezed == paymentId
            ? _value.paymentId
            : paymentId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AdmissionFormModelImpl implements _AdmissionFormModel {
  const _$AdmissionFormModelImpl({
    this.applicantDetails,
    this.parentContact,
    this.address,
    this.isPaymentComplete = false,
    this.paymentId,
  });

  factory _$AdmissionFormModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdmissionFormModelImplFromJson(json);

  @override
  final ApplicantDetailsModel? applicantDetails;
  @override
  final ParentContactModel? parentContact;
  @override
  final AddressModel? address;
  @override
  @JsonKey()
  final bool isPaymentComplete;
  @override
  final String? paymentId;

  @override
  String toString() {
    return 'AdmissionFormModel(applicantDetails: $applicantDetails, parentContact: $parentContact, address: $address, isPaymentComplete: $isPaymentComplete, paymentId: $paymentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdmissionFormModelImpl &&
            (identical(other.applicantDetails, applicantDetails) ||
                other.applicantDetails == applicantDetails) &&
            (identical(other.parentContact, parentContact) ||
                other.parentContact == parentContact) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.isPaymentComplete, isPaymentComplete) ||
                other.isPaymentComplete == isPaymentComplete) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    applicantDetails,
    parentContact,
    address,
    isPaymentComplete,
    paymentId,
  );

  /// Create a copy of AdmissionFormModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdmissionFormModelImplCopyWith<_$AdmissionFormModelImpl> get copyWith =>
      __$$AdmissionFormModelImplCopyWithImpl<_$AdmissionFormModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AdmissionFormModelImplToJson(this);
  }
}

abstract class _AdmissionFormModel implements AdmissionFormModel {
  const factory _AdmissionFormModel({
    final ApplicantDetailsModel? applicantDetails,
    final ParentContactModel? parentContact,
    final AddressModel? address,
    final bool isPaymentComplete,
    final String? paymentId,
  }) = _$AdmissionFormModelImpl;

  factory _AdmissionFormModel.fromJson(Map<String, dynamic> json) =
      _$AdmissionFormModelImpl.fromJson;

  @override
  ApplicantDetailsModel? get applicantDetails;
  @override
  ParentContactModel? get parentContact;
  @override
  AddressModel? get address;
  @override
  bool get isPaymentComplete;
  @override
  String? get paymentId;

  /// Create a copy of AdmissionFormModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdmissionFormModelImplCopyWith<_$AdmissionFormModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
