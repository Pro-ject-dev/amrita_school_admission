// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admission_form_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdmissionFormModel {

 ApplicantDetailsModel? get applicantDetails; ParentContactModel? get parentContact; AddressModel? get address; bool get isPaymentComplete; String? get paymentId; bool get isSubmitted; bool get hasUnsavedChanges; String? get userId; List<FeeData> get feeData;
/// Create a copy of AdmissionFormModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdmissionFormModelCopyWith<AdmissionFormModel> get copyWith => _$AdmissionFormModelCopyWithImpl<AdmissionFormModel>(this as AdmissionFormModel, _$identity);

  /// Serializes this AdmissionFormModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdmissionFormModel&&(identical(other.applicantDetails, applicantDetails) || other.applicantDetails == applicantDetails)&&(identical(other.parentContact, parentContact) || other.parentContact == parentContact)&&(identical(other.address, address) || other.address == address)&&(identical(other.isPaymentComplete, isPaymentComplete) || other.isPaymentComplete == isPaymentComplete)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.isSubmitted, isSubmitted) || other.isSubmitted == isSubmitted)&&(identical(other.hasUnsavedChanges, hasUnsavedChanges) || other.hasUnsavedChanges == hasUnsavedChanges)&&(identical(other.userId, userId) || other.userId == userId)&&const DeepCollectionEquality().equals(other.feeData, feeData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,applicantDetails,parentContact,address,isPaymentComplete,paymentId,isSubmitted,hasUnsavedChanges,userId,const DeepCollectionEquality().hash(feeData));

@override
String toString() {
  return 'AdmissionFormModel(applicantDetails: $applicantDetails, parentContact: $parentContact, address: $address, isPaymentComplete: $isPaymentComplete, paymentId: $paymentId, isSubmitted: $isSubmitted, hasUnsavedChanges: $hasUnsavedChanges, userId: $userId, feeData: $feeData)';
}


}

/// @nodoc
abstract mixin class $AdmissionFormModelCopyWith<$Res>  {
  factory $AdmissionFormModelCopyWith(AdmissionFormModel value, $Res Function(AdmissionFormModel) _then) = _$AdmissionFormModelCopyWithImpl;
@useResult
$Res call({
 ApplicantDetailsModel? applicantDetails, ParentContactModel? parentContact, AddressModel? address, bool isPaymentComplete, String? paymentId, bool isSubmitted, bool hasUnsavedChanges, String? userId, List<FeeData> feeData
});


$ApplicantDetailsModelCopyWith<$Res>? get applicantDetails;$ParentContactModelCopyWith<$Res>? get parentContact;$AddressModelCopyWith<$Res>? get address;

}
/// @nodoc
class _$AdmissionFormModelCopyWithImpl<$Res>
    implements $AdmissionFormModelCopyWith<$Res> {
  _$AdmissionFormModelCopyWithImpl(this._self, this._then);

  final AdmissionFormModel _self;
  final $Res Function(AdmissionFormModel) _then;

/// Create a copy of AdmissionFormModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? applicantDetails = freezed,Object? parentContact = freezed,Object? address = freezed,Object? isPaymentComplete = null,Object? paymentId = freezed,Object? isSubmitted = null,Object? hasUnsavedChanges = null,Object? userId = freezed,Object? feeData = null,}) {
  return _then(_self.copyWith(
applicantDetails: freezed == applicantDetails ? _self.applicantDetails : applicantDetails // ignore: cast_nullable_to_non_nullable
as ApplicantDetailsModel?,parentContact: freezed == parentContact ? _self.parentContact : parentContact // ignore: cast_nullable_to_non_nullable
as ParentContactModel?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as AddressModel?,isPaymentComplete: null == isPaymentComplete ? _self.isPaymentComplete : isPaymentComplete // ignore: cast_nullable_to_non_nullable
as bool,paymentId: freezed == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String?,isSubmitted: null == isSubmitted ? _self.isSubmitted : isSubmitted // ignore: cast_nullable_to_non_nullable
as bool,hasUnsavedChanges: null == hasUnsavedChanges ? _self.hasUnsavedChanges : hasUnsavedChanges // ignore: cast_nullable_to_non_nullable
as bool,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,feeData: null == feeData ? _self.feeData : feeData // ignore: cast_nullable_to_non_nullable
as List<FeeData>,
  ));
}
/// Create a copy of AdmissionFormModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApplicantDetailsModelCopyWith<$Res>? get applicantDetails {
    if (_self.applicantDetails == null) {
    return null;
  }

  return $ApplicantDetailsModelCopyWith<$Res>(_self.applicantDetails!, (value) {
    return _then(_self.copyWith(applicantDetails: value));
  });
}/// Create a copy of AdmissionFormModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParentContactModelCopyWith<$Res>? get parentContact {
    if (_self.parentContact == null) {
    return null;
  }

  return $ParentContactModelCopyWith<$Res>(_self.parentContact!, (value) {
    return _then(_self.copyWith(parentContact: value));
  });
}/// Create a copy of AdmissionFormModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressModelCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $AddressModelCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}


/// Adds pattern-matching-related methods to [AdmissionFormModel].
extension AdmissionFormModelPatterns on AdmissionFormModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdmissionFormModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdmissionFormModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdmissionFormModel value)  $default,){
final _that = this;
switch (_that) {
case _AdmissionFormModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdmissionFormModel value)?  $default,){
final _that = this;
switch (_that) {
case _AdmissionFormModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ApplicantDetailsModel? applicantDetails,  ParentContactModel? parentContact,  AddressModel? address,  bool isPaymentComplete,  String? paymentId,  bool isSubmitted,  bool hasUnsavedChanges,  String? userId,  List<FeeData> feeData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdmissionFormModel() when $default != null:
return $default(_that.applicantDetails,_that.parentContact,_that.address,_that.isPaymentComplete,_that.paymentId,_that.isSubmitted,_that.hasUnsavedChanges,_that.userId,_that.feeData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ApplicantDetailsModel? applicantDetails,  ParentContactModel? parentContact,  AddressModel? address,  bool isPaymentComplete,  String? paymentId,  bool isSubmitted,  bool hasUnsavedChanges,  String? userId,  List<FeeData> feeData)  $default,) {final _that = this;
switch (_that) {
case _AdmissionFormModel():
return $default(_that.applicantDetails,_that.parentContact,_that.address,_that.isPaymentComplete,_that.paymentId,_that.isSubmitted,_that.hasUnsavedChanges,_that.userId,_that.feeData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ApplicantDetailsModel? applicantDetails,  ParentContactModel? parentContact,  AddressModel? address,  bool isPaymentComplete,  String? paymentId,  bool isSubmitted,  bool hasUnsavedChanges,  String? userId,  List<FeeData> feeData)?  $default,) {final _that = this;
switch (_that) {
case _AdmissionFormModel() when $default != null:
return $default(_that.applicantDetails,_that.parentContact,_that.address,_that.isPaymentComplete,_that.paymentId,_that.isSubmitted,_that.hasUnsavedChanges,_that.userId,_that.feeData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdmissionFormModel implements AdmissionFormModel {
  const _AdmissionFormModel({this.applicantDetails, this.parentContact, this.address, this.isPaymentComplete = false, this.paymentId, this.isSubmitted = false, this.hasUnsavedChanges = false, this.userId, final  List<FeeData> feeData = const []}): _feeData = feeData;
  factory _AdmissionFormModel.fromJson(Map<String, dynamic> json) => _$AdmissionFormModelFromJson(json);

@override final  ApplicantDetailsModel? applicantDetails;
@override final  ParentContactModel? parentContact;
@override final  AddressModel? address;
@override@JsonKey() final  bool isPaymentComplete;
@override final  String? paymentId;
@override@JsonKey() final  bool isSubmitted;
@override@JsonKey() final  bool hasUnsavedChanges;
@override final  String? userId;
 final  List<FeeData> _feeData;
@override@JsonKey() List<FeeData> get feeData {
  if (_feeData is EqualUnmodifiableListView) return _feeData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_feeData);
}


/// Create a copy of AdmissionFormModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdmissionFormModelCopyWith<_AdmissionFormModel> get copyWith => __$AdmissionFormModelCopyWithImpl<_AdmissionFormModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdmissionFormModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdmissionFormModel&&(identical(other.applicantDetails, applicantDetails) || other.applicantDetails == applicantDetails)&&(identical(other.parentContact, parentContact) || other.parentContact == parentContact)&&(identical(other.address, address) || other.address == address)&&(identical(other.isPaymentComplete, isPaymentComplete) || other.isPaymentComplete == isPaymentComplete)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.isSubmitted, isSubmitted) || other.isSubmitted == isSubmitted)&&(identical(other.hasUnsavedChanges, hasUnsavedChanges) || other.hasUnsavedChanges == hasUnsavedChanges)&&(identical(other.userId, userId) || other.userId == userId)&&const DeepCollectionEquality().equals(other._feeData, _feeData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,applicantDetails,parentContact,address,isPaymentComplete,paymentId,isSubmitted,hasUnsavedChanges,userId,const DeepCollectionEquality().hash(_feeData));

@override
String toString() {
  return 'AdmissionFormModel(applicantDetails: $applicantDetails, parentContact: $parentContact, address: $address, isPaymentComplete: $isPaymentComplete, paymentId: $paymentId, isSubmitted: $isSubmitted, hasUnsavedChanges: $hasUnsavedChanges, userId: $userId, feeData: $feeData)';
}


}

/// @nodoc
abstract mixin class _$AdmissionFormModelCopyWith<$Res> implements $AdmissionFormModelCopyWith<$Res> {
  factory _$AdmissionFormModelCopyWith(_AdmissionFormModel value, $Res Function(_AdmissionFormModel) _then) = __$AdmissionFormModelCopyWithImpl;
@override @useResult
$Res call({
 ApplicantDetailsModel? applicantDetails, ParentContactModel? parentContact, AddressModel? address, bool isPaymentComplete, String? paymentId, bool isSubmitted, bool hasUnsavedChanges, String? userId, List<FeeData> feeData
});


@override $ApplicantDetailsModelCopyWith<$Res>? get applicantDetails;@override $ParentContactModelCopyWith<$Res>? get parentContact;@override $AddressModelCopyWith<$Res>? get address;

}
/// @nodoc
class __$AdmissionFormModelCopyWithImpl<$Res>
    implements _$AdmissionFormModelCopyWith<$Res> {
  __$AdmissionFormModelCopyWithImpl(this._self, this._then);

  final _AdmissionFormModel _self;
  final $Res Function(_AdmissionFormModel) _then;

/// Create a copy of AdmissionFormModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? applicantDetails = freezed,Object? parentContact = freezed,Object? address = freezed,Object? isPaymentComplete = null,Object? paymentId = freezed,Object? isSubmitted = null,Object? hasUnsavedChanges = null,Object? userId = freezed,Object? feeData = null,}) {
  return _then(_AdmissionFormModel(
applicantDetails: freezed == applicantDetails ? _self.applicantDetails : applicantDetails // ignore: cast_nullable_to_non_nullable
as ApplicantDetailsModel?,parentContact: freezed == parentContact ? _self.parentContact : parentContact // ignore: cast_nullable_to_non_nullable
as ParentContactModel?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as AddressModel?,isPaymentComplete: null == isPaymentComplete ? _self.isPaymentComplete : isPaymentComplete // ignore: cast_nullable_to_non_nullable
as bool,paymentId: freezed == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String?,isSubmitted: null == isSubmitted ? _self.isSubmitted : isSubmitted // ignore: cast_nullable_to_non_nullable
as bool,hasUnsavedChanges: null == hasUnsavedChanges ? _self.hasUnsavedChanges : hasUnsavedChanges // ignore: cast_nullable_to_non_nullable
as bool,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,feeData: null == feeData ? _self._feeData : feeData // ignore: cast_nullable_to_non_nullable
as List<FeeData>,
  ));
}

/// Create a copy of AdmissionFormModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApplicantDetailsModelCopyWith<$Res>? get applicantDetails {
    if (_self.applicantDetails == null) {
    return null;
  }

  return $ApplicantDetailsModelCopyWith<$Res>(_self.applicantDetails!, (value) {
    return _then(_self.copyWith(applicantDetails: value));
  });
}/// Create a copy of AdmissionFormModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParentContactModelCopyWith<$Res>? get parentContact {
    if (_self.parentContact == null) {
    return null;
  }

  return $ParentContactModelCopyWith<$Res>(_self.parentContact!, (value) {
    return _then(_self.copyWith(parentContact: value));
  });
}/// Create a copy of AdmissionFormModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressModelCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $AddressModelCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}

// dart format on
