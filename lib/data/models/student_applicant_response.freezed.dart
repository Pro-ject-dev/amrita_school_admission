// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_applicant_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StudentApplicantResponse {

@JsonKey(name: 'message') StudentApplicantMessage get message;
/// Create a copy of StudentApplicantResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentApplicantResponseCopyWith<StudentApplicantResponse> get copyWith => _$StudentApplicantResponseCopyWithImpl<StudentApplicantResponse>(this as StudentApplicantResponse, _$identity);

  /// Serializes this StudentApplicantResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentApplicantResponse&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'StudentApplicantResponse(message: $message)';
}


}

/// @nodoc
abstract mixin class $StudentApplicantResponseCopyWith<$Res>  {
  factory $StudentApplicantResponseCopyWith(StudentApplicantResponse value, $Res Function(StudentApplicantResponse) _then) = _$StudentApplicantResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'message') StudentApplicantMessage message
});


$StudentApplicantMessageCopyWith<$Res> get message;

}
/// @nodoc
class _$StudentApplicantResponseCopyWithImpl<$Res>
    implements $StudentApplicantResponseCopyWith<$Res> {
  _$StudentApplicantResponseCopyWithImpl(this._self, this._then);

  final StudentApplicantResponse _self;
  final $Res Function(StudentApplicantResponse) _then;

/// Create a copy of StudentApplicantResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as StudentApplicantMessage,
  ));
}
/// Create a copy of StudentApplicantResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentApplicantMessageCopyWith<$Res> get message {
  
  return $StudentApplicantMessageCopyWith<$Res>(_self.message, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}


/// Adds pattern-matching-related methods to [StudentApplicantResponse].
extension StudentApplicantResponsePatterns on StudentApplicantResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentApplicantResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentApplicantResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentApplicantResponse value)  $default,){
final _that = this;
switch (_that) {
case _StudentApplicantResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentApplicantResponse value)?  $default,){
final _that = this;
switch (_that) {
case _StudentApplicantResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'message')  StudentApplicantMessage message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentApplicantResponse() when $default != null:
return $default(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'message')  StudentApplicantMessage message)  $default,) {final _that = this;
switch (_that) {
case _StudentApplicantResponse():
return $default(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'message')  StudentApplicantMessage message)?  $default,) {final _that = this;
switch (_that) {
case _StudentApplicantResponse() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentApplicantResponse implements StudentApplicantResponse {
  const _StudentApplicantResponse({@JsonKey(name: 'message') required this.message});
  factory _StudentApplicantResponse.fromJson(Map<String, dynamic> json) => _$StudentApplicantResponseFromJson(json);

@override@JsonKey(name: 'message') final  StudentApplicantMessage message;

/// Create a copy of StudentApplicantResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentApplicantResponseCopyWith<_StudentApplicantResponse> get copyWith => __$StudentApplicantResponseCopyWithImpl<_StudentApplicantResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentApplicantResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentApplicantResponse&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'StudentApplicantResponse(message: $message)';
}


}

/// @nodoc
abstract mixin class _$StudentApplicantResponseCopyWith<$Res> implements $StudentApplicantResponseCopyWith<$Res> {
  factory _$StudentApplicantResponseCopyWith(_StudentApplicantResponse value, $Res Function(_StudentApplicantResponse) _then) = __$StudentApplicantResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'message') StudentApplicantMessage message
});


@override $StudentApplicantMessageCopyWith<$Res> get message;

}
/// @nodoc
class __$StudentApplicantResponseCopyWithImpl<$Res>
    implements _$StudentApplicantResponseCopyWith<$Res> {
  __$StudentApplicantResponseCopyWithImpl(this._self, this._then);

  final _StudentApplicantResponse _self;
  final $Res Function(_StudentApplicantResponse) _then;

/// Create a copy of StudentApplicantResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_StudentApplicantResponse(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as StudentApplicantMessage,
  ));
}

/// Create a copy of StudentApplicantResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentApplicantMessageCopyWith<$Res> get message {
  
  return $StudentApplicantMessageCopyWith<$Res>(_self.message, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}


/// @nodoc
mixin _$StudentApplicantMessage {

 bool get status; String get user;@JsonKey(name: 'applicant_data') ApplicantData get applicantData;@JsonKey(name: 'fee_data') List<FeeData> get feeData;
/// Create a copy of StudentApplicantMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentApplicantMessageCopyWith<StudentApplicantMessage> get copyWith => _$StudentApplicantMessageCopyWithImpl<StudentApplicantMessage>(this as StudentApplicantMessage, _$identity);

  /// Serializes this StudentApplicantMessage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentApplicantMessage&&(identical(other.status, status) || other.status == status)&&(identical(other.user, user) || other.user == user)&&(identical(other.applicantData, applicantData) || other.applicantData == applicantData)&&const DeepCollectionEquality().equals(other.feeData, feeData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,user,applicantData,const DeepCollectionEquality().hash(feeData));

@override
String toString() {
  return 'StudentApplicantMessage(status: $status, user: $user, applicantData: $applicantData, feeData: $feeData)';
}


}

/// @nodoc
abstract mixin class $StudentApplicantMessageCopyWith<$Res>  {
  factory $StudentApplicantMessageCopyWith(StudentApplicantMessage value, $Res Function(StudentApplicantMessage) _then) = _$StudentApplicantMessageCopyWithImpl;
@useResult
$Res call({
 bool status, String user,@JsonKey(name: 'applicant_data') ApplicantData applicantData,@JsonKey(name: 'fee_data') List<FeeData> feeData
});


$ApplicantDataCopyWith<$Res> get applicantData;

}
/// @nodoc
class _$StudentApplicantMessageCopyWithImpl<$Res>
    implements $StudentApplicantMessageCopyWith<$Res> {
  _$StudentApplicantMessageCopyWithImpl(this._self, this._then);

  final StudentApplicantMessage _self;
  final $Res Function(StudentApplicantMessage) _then;

/// Create a copy of StudentApplicantMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? user = null,Object? applicantData = null,Object? feeData = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String,applicantData: null == applicantData ? _self.applicantData : applicantData // ignore: cast_nullable_to_non_nullable
as ApplicantData,feeData: null == feeData ? _self.feeData : feeData // ignore: cast_nullable_to_non_nullable
as List<FeeData>,
  ));
}
/// Create a copy of StudentApplicantMessage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApplicantDataCopyWith<$Res> get applicantData {
  
  return $ApplicantDataCopyWith<$Res>(_self.applicantData, (value) {
    return _then(_self.copyWith(applicantData: value));
  });
}
}


/// Adds pattern-matching-related methods to [StudentApplicantMessage].
extension StudentApplicantMessagePatterns on StudentApplicantMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentApplicantMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentApplicantMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentApplicantMessage value)  $default,){
final _that = this;
switch (_that) {
case _StudentApplicantMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentApplicantMessage value)?  $default,){
final _that = this;
switch (_that) {
case _StudentApplicantMessage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool status,  String user, @JsonKey(name: 'applicant_data')  ApplicantData applicantData, @JsonKey(name: 'fee_data')  List<FeeData> feeData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentApplicantMessage() when $default != null:
return $default(_that.status,_that.user,_that.applicantData,_that.feeData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool status,  String user, @JsonKey(name: 'applicant_data')  ApplicantData applicantData, @JsonKey(name: 'fee_data')  List<FeeData> feeData)  $default,) {final _that = this;
switch (_that) {
case _StudentApplicantMessage():
return $default(_that.status,_that.user,_that.applicantData,_that.feeData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool status,  String user, @JsonKey(name: 'applicant_data')  ApplicantData applicantData, @JsonKey(name: 'fee_data')  List<FeeData> feeData)?  $default,) {final _that = this;
switch (_that) {
case _StudentApplicantMessage() when $default != null:
return $default(_that.status,_that.user,_that.applicantData,_that.feeData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentApplicantMessage implements StudentApplicantMessage {
  const _StudentApplicantMessage({required this.status, required this.user, @JsonKey(name: 'applicant_data') required this.applicantData, @JsonKey(name: 'fee_data') final  List<FeeData> feeData = const []}): _feeData = feeData;
  factory _StudentApplicantMessage.fromJson(Map<String, dynamic> json) => _$StudentApplicantMessageFromJson(json);

@override final  bool status;
@override final  String user;
@override@JsonKey(name: 'applicant_data') final  ApplicantData applicantData;
 final  List<FeeData> _feeData;
@override@JsonKey(name: 'fee_data') List<FeeData> get feeData {
  if (_feeData is EqualUnmodifiableListView) return _feeData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_feeData);
}


/// Create a copy of StudentApplicantMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentApplicantMessageCopyWith<_StudentApplicantMessage> get copyWith => __$StudentApplicantMessageCopyWithImpl<_StudentApplicantMessage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentApplicantMessageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentApplicantMessage&&(identical(other.status, status) || other.status == status)&&(identical(other.user, user) || other.user == user)&&(identical(other.applicantData, applicantData) || other.applicantData == applicantData)&&const DeepCollectionEquality().equals(other._feeData, _feeData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,user,applicantData,const DeepCollectionEquality().hash(_feeData));

@override
String toString() {
  return 'StudentApplicantMessage(status: $status, user: $user, applicantData: $applicantData, feeData: $feeData)';
}


}

/// @nodoc
abstract mixin class _$StudentApplicantMessageCopyWith<$Res> implements $StudentApplicantMessageCopyWith<$Res> {
  factory _$StudentApplicantMessageCopyWith(_StudentApplicantMessage value, $Res Function(_StudentApplicantMessage) _then) = __$StudentApplicantMessageCopyWithImpl;
@override @useResult
$Res call({
 bool status, String user,@JsonKey(name: 'applicant_data') ApplicantData applicantData,@JsonKey(name: 'fee_data') List<FeeData> feeData
});


@override $ApplicantDataCopyWith<$Res> get applicantData;

}
/// @nodoc
class __$StudentApplicantMessageCopyWithImpl<$Res>
    implements _$StudentApplicantMessageCopyWith<$Res> {
  __$StudentApplicantMessageCopyWithImpl(this._self, this._then);

  final _StudentApplicantMessage _self;
  final $Res Function(_StudentApplicantMessage) _then;

/// Create a copy of StudentApplicantMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? user = null,Object? applicantData = null,Object? feeData = null,}) {
  return _then(_StudentApplicantMessage(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String,applicantData: null == applicantData ? _self.applicantData : applicantData // ignore: cast_nullable_to_non_nullable
as ApplicantData,feeData: null == feeData ? _self._feeData : feeData // ignore: cast_nullable_to_non_nullable
as List<FeeData>,
  ));
}

/// Create a copy of StudentApplicantMessage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApplicantDataCopyWith<$Res> get applicantData {
  
  return $ApplicantDataCopyWith<$Res>(_self.applicantData, (value) {
    return _then(_self.copyWith(applicantData: value));
  });
}
}


/// @nodoc
mixin _$ApplicantData {

@JsonKey(name: 'name1') String get name; String get school;@JsonKey(name: 'admission_sought_to') String get admissionSoughtTo;@JsonKey(name: 'applicant_id') String get applicantId;@JsonKey(name: 'academic_year') String get academicYear;@JsonKey(name: 'date_of_birth') String get dateOfBirth; String get gender;@JsonKey(name: 'aadhar_number') String get aadharNumber;@JsonKey(name: 'primary_contact_name') String get primaryContactName;@JsonKey(name: 'primary_contact_relation') String get primaryContactRelation;@JsonKey(name: 'primary_contact_mobile') String get primaryContactMobile;@JsonKey(name: 'secondary_contact_name') String get secondaryContactName;@JsonKey(name: 'secondary_contact_relation') String get secondaryContactRelation;@JsonKey(name: 'mobile_number_secondary') String get mobileNumberSecondary;@JsonKey(name: 'communication_address') String get communicationAddress; String? get religion; String? get caste; String? get category;@JsonKey(name: 'mother_tongue') String? get motherTongue;@JsonKey(name: 'blood_group') String? get bloodGroup;@JsonKey(name: 'school_transport_required') String? get schoolTransportRequired;// Guardian Details
@JsonKey(name: 'guardians_name') String? get guardiansName;@JsonKey(name: 'guardians_mobile_number', fromJson: _safeString) String? get guardiansMobileNumber;@JsonKey(name: 'guardians_occupation') String? get guardiansOccupation;@JsonKey(name: 'guardians_address') String? get guardiansAddress;@JsonKey(name: 'guardians_email_address') String? get guardiansEmailAddress;@JsonKey(name: 'guardians_office_number', fromJson: _safeString) String? get guardiansOfficeNumber;@JsonKey(name: 'guardians_aadhaar_number', fromJson: _safeString) String? get guardiansAadhaarNumber;// Father Details
@JsonKey(name: 'fathers_name') String? get fathersName;@JsonKey(name: 'fathers_aadhaar_number', fromJson: _safeString) String? get fathersAadhaarNumber;@JsonKey(name: 'fathers_occupation') String? get fathersOccupation;@JsonKey(name: 'fathers_annual_income', fromJson: _safeString) String? get fathersAnnualIncome;@JsonKey(name: 'fathers_mobile_number', fromJson: _safeString) String? get fathersMobileNumber;@JsonKey(name: 'fathers_telephone_office', fromJson: _safeString) String? get fathersTelephoneOffice;@JsonKey(name: 'fathers_post_held') String? get fathersPostHeld;@JsonKey(name: 'fathers_permanent_address') String? get fathersPermanentAddress;@JsonKey(name: 'fathers_languages_known') String? get fathersLanguagesKnown;@JsonKey(name: 'fathers_email_address') String? get fathersEmailAddress;@JsonKey(name: 'fathers_educational_qualification') String? get fathersEducationalQualification;@JsonKey(name: 'fathers_company_name') String? get fathersCompanyName;@JsonKey(name: 'fathers_business_address') String? get fathersBusinessAddress;// Mother Details
@JsonKey(name: 'mothers_name') String? get mothersName;@JsonKey(name: 'mothers_aadhaar_number', fromJson: _safeString) String? get mothersAadhaarNumber;@JsonKey(name: 'mothers_occupation') String? get mothersOccupation;@JsonKey(name: 'mothers_annual_income', fromJson: _safeString) String? get mothersAnnualIncome;@JsonKey(name: 'mothers_mobile_number', fromJson: _safeString) String? get mothersMobileNumber;@JsonKey(name: 'mothers_email_address') String? get mothersEmailAddress;@JsonKey(name: 'mothers_languages_known') String? get mothersLanguagesKnown;@JsonKey(name: 'mothers_company_name') String? get mothersCompanyName;@JsonKey(name: 'mothers_business_address') String? get mothersBusinessAddress;@JsonKey(name: 'mothers_educational_qualification') String? get mothersEducationalQualification;@JsonKey(name: 'mothers_permanent_address') String? get mothersPermanentAddress;@JsonKey(name: 'mothers_post_held') String? get mothersPostHeld;@JsonKey(name: 'mothers_telephone_office', fromJson: _safeString) String? get mothersTelephoneOffice;
/// Create a copy of ApplicantData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApplicantDataCopyWith<ApplicantData> get copyWith => _$ApplicantDataCopyWithImpl<ApplicantData>(this as ApplicantData, _$identity);

  /// Serializes this ApplicantData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApplicantData&&(identical(other.name, name) || other.name == name)&&(identical(other.school, school) || other.school == school)&&(identical(other.admissionSoughtTo, admissionSoughtTo) || other.admissionSoughtTo == admissionSoughtTo)&&(identical(other.applicantId, applicantId) || other.applicantId == applicantId)&&(identical(other.academicYear, academicYear) || other.academicYear == academicYear)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.aadharNumber, aadharNumber) || other.aadharNumber == aadharNumber)&&(identical(other.primaryContactName, primaryContactName) || other.primaryContactName == primaryContactName)&&(identical(other.primaryContactRelation, primaryContactRelation) || other.primaryContactRelation == primaryContactRelation)&&(identical(other.primaryContactMobile, primaryContactMobile) || other.primaryContactMobile == primaryContactMobile)&&(identical(other.secondaryContactName, secondaryContactName) || other.secondaryContactName == secondaryContactName)&&(identical(other.secondaryContactRelation, secondaryContactRelation) || other.secondaryContactRelation == secondaryContactRelation)&&(identical(other.mobileNumberSecondary, mobileNumberSecondary) || other.mobileNumberSecondary == mobileNumberSecondary)&&(identical(other.communicationAddress, communicationAddress) || other.communicationAddress == communicationAddress)&&(identical(other.religion, religion) || other.religion == religion)&&(identical(other.caste, caste) || other.caste == caste)&&(identical(other.category, category) || other.category == category)&&(identical(other.motherTongue, motherTongue) || other.motherTongue == motherTongue)&&(identical(other.bloodGroup, bloodGroup) || other.bloodGroup == bloodGroup)&&(identical(other.schoolTransportRequired, schoolTransportRequired) || other.schoolTransportRequired == schoolTransportRequired)&&(identical(other.guardiansName, guardiansName) || other.guardiansName == guardiansName)&&(identical(other.guardiansMobileNumber, guardiansMobileNumber) || other.guardiansMobileNumber == guardiansMobileNumber)&&(identical(other.guardiansOccupation, guardiansOccupation) || other.guardiansOccupation == guardiansOccupation)&&(identical(other.guardiansAddress, guardiansAddress) || other.guardiansAddress == guardiansAddress)&&(identical(other.guardiansEmailAddress, guardiansEmailAddress) || other.guardiansEmailAddress == guardiansEmailAddress)&&(identical(other.guardiansOfficeNumber, guardiansOfficeNumber) || other.guardiansOfficeNumber == guardiansOfficeNumber)&&(identical(other.guardiansAadhaarNumber, guardiansAadhaarNumber) || other.guardiansAadhaarNumber == guardiansAadhaarNumber)&&(identical(other.fathersName, fathersName) || other.fathersName == fathersName)&&(identical(other.fathersAadhaarNumber, fathersAadhaarNumber) || other.fathersAadhaarNumber == fathersAadhaarNumber)&&(identical(other.fathersOccupation, fathersOccupation) || other.fathersOccupation == fathersOccupation)&&(identical(other.fathersAnnualIncome, fathersAnnualIncome) || other.fathersAnnualIncome == fathersAnnualIncome)&&(identical(other.fathersMobileNumber, fathersMobileNumber) || other.fathersMobileNumber == fathersMobileNumber)&&(identical(other.fathersTelephoneOffice, fathersTelephoneOffice) || other.fathersTelephoneOffice == fathersTelephoneOffice)&&(identical(other.fathersPostHeld, fathersPostHeld) || other.fathersPostHeld == fathersPostHeld)&&(identical(other.fathersPermanentAddress, fathersPermanentAddress) || other.fathersPermanentAddress == fathersPermanentAddress)&&(identical(other.fathersLanguagesKnown, fathersLanguagesKnown) || other.fathersLanguagesKnown == fathersLanguagesKnown)&&(identical(other.fathersEmailAddress, fathersEmailAddress) || other.fathersEmailAddress == fathersEmailAddress)&&(identical(other.fathersEducationalQualification, fathersEducationalQualification) || other.fathersEducationalQualification == fathersEducationalQualification)&&(identical(other.fathersCompanyName, fathersCompanyName) || other.fathersCompanyName == fathersCompanyName)&&(identical(other.fathersBusinessAddress, fathersBusinessAddress) || other.fathersBusinessAddress == fathersBusinessAddress)&&(identical(other.mothersName, mothersName) || other.mothersName == mothersName)&&(identical(other.mothersAadhaarNumber, mothersAadhaarNumber) || other.mothersAadhaarNumber == mothersAadhaarNumber)&&(identical(other.mothersOccupation, mothersOccupation) || other.mothersOccupation == mothersOccupation)&&(identical(other.mothersAnnualIncome, mothersAnnualIncome) || other.mothersAnnualIncome == mothersAnnualIncome)&&(identical(other.mothersMobileNumber, mothersMobileNumber) || other.mothersMobileNumber == mothersMobileNumber)&&(identical(other.mothersEmailAddress, mothersEmailAddress) || other.mothersEmailAddress == mothersEmailAddress)&&(identical(other.mothersLanguagesKnown, mothersLanguagesKnown) || other.mothersLanguagesKnown == mothersLanguagesKnown)&&(identical(other.mothersCompanyName, mothersCompanyName) || other.mothersCompanyName == mothersCompanyName)&&(identical(other.mothersBusinessAddress, mothersBusinessAddress) || other.mothersBusinessAddress == mothersBusinessAddress)&&(identical(other.mothersEducationalQualification, mothersEducationalQualification) || other.mothersEducationalQualification == mothersEducationalQualification)&&(identical(other.mothersPermanentAddress, mothersPermanentAddress) || other.mothersPermanentAddress == mothersPermanentAddress)&&(identical(other.mothersPostHeld, mothersPostHeld) || other.mothersPostHeld == mothersPostHeld)&&(identical(other.mothersTelephoneOffice, mothersTelephoneOffice) || other.mothersTelephoneOffice == mothersTelephoneOffice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,name,school,admissionSoughtTo,applicantId,academicYear,dateOfBirth,gender,aadharNumber,primaryContactName,primaryContactRelation,primaryContactMobile,secondaryContactName,secondaryContactRelation,mobileNumberSecondary,communicationAddress,religion,caste,category,motherTongue,bloodGroup,schoolTransportRequired,guardiansName,guardiansMobileNumber,guardiansOccupation,guardiansAddress,guardiansEmailAddress,guardiansOfficeNumber,guardiansAadhaarNumber,fathersName,fathersAadhaarNumber,fathersOccupation,fathersAnnualIncome,fathersMobileNumber,fathersTelephoneOffice,fathersPostHeld,fathersPermanentAddress,fathersLanguagesKnown,fathersEmailAddress,fathersEducationalQualification,fathersCompanyName,fathersBusinessAddress,mothersName,mothersAadhaarNumber,mothersOccupation,mothersAnnualIncome,mothersMobileNumber,mothersEmailAddress,mothersLanguagesKnown,mothersCompanyName,mothersBusinessAddress,mothersEducationalQualification,mothersPermanentAddress,mothersPostHeld,mothersTelephoneOffice]);

@override
String toString() {
  return 'ApplicantData(name: $name, school: $school, admissionSoughtTo: $admissionSoughtTo, applicantId: $applicantId, academicYear: $academicYear, dateOfBirth: $dateOfBirth, gender: $gender, aadharNumber: $aadharNumber, primaryContactName: $primaryContactName, primaryContactRelation: $primaryContactRelation, primaryContactMobile: $primaryContactMobile, secondaryContactName: $secondaryContactName, secondaryContactRelation: $secondaryContactRelation, mobileNumberSecondary: $mobileNumberSecondary, communicationAddress: $communicationAddress, religion: $religion, caste: $caste, category: $category, motherTongue: $motherTongue, bloodGroup: $bloodGroup, schoolTransportRequired: $schoolTransportRequired, guardiansName: $guardiansName, guardiansMobileNumber: $guardiansMobileNumber, guardiansOccupation: $guardiansOccupation, guardiansAddress: $guardiansAddress, guardiansEmailAddress: $guardiansEmailAddress, guardiansOfficeNumber: $guardiansOfficeNumber, guardiansAadhaarNumber: $guardiansAadhaarNumber, fathersName: $fathersName, fathersAadhaarNumber: $fathersAadhaarNumber, fathersOccupation: $fathersOccupation, fathersAnnualIncome: $fathersAnnualIncome, fathersMobileNumber: $fathersMobileNumber, fathersTelephoneOffice: $fathersTelephoneOffice, fathersPostHeld: $fathersPostHeld, fathersPermanentAddress: $fathersPermanentAddress, fathersLanguagesKnown: $fathersLanguagesKnown, fathersEmailAddress: $fathersEmailAddress, fathersEducationalQualification: $fathersEducationalQualification, fathersCompanyName: $fathersCompanyName, fathersBusinessAddress: $fathersBusinessAddress, mothersName: $mothersName, mothersAadhaarNumber: $mothersAadhaarNumber, mothersOccupation: $mothersOccupation, mothersAnnualIncome: $mothersAnnualIncome, mothersMobileNumber: $mothersMobileNumber, mothersEmailAddress: $mothersEmailAddress, mothersLanguagesKnown: $mothersLanguagesKnown, mothersCompanyName: $mothersCompanyName, mothersBusinessAddress: $mothersBusinessAddress, mothersEducationalQualification: $mothersEducationalQualification, mothersPermanentAddress: $mothersPermanentAddress, mothersPostHeld: $mothersPostHeld, mothersTelephoneOffice: $mothersTelephoneOffice)';
}


}

/// @nodoc
abstract mixin class $ApplicantDataCopyWith<$Res>  {
  factory $ApplicantDataCopyWith(ApplicantData value, $Res Function(ApplicantData) _then) = _$ApplicantDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name1') String name, String school,@JsonKey(name: 'admission_sought_to') String admissionSoughtTo,@JsonKey(name: 'applicant_id') String applicantId,@JsonKey(name: 'academic_year') String academicYear,@JsonKey(name: 'date_of_birth') String dateOfBirth, String gender,@JsonKey(name: 'aadhar_number') String aadharNumber,@JsonKey(name: 'primary_contact_name') String primaryContactName,@JsonKey(name: 'primary_contact_relation') String primaryContactRelation,@JsonKey(name: 'primary_contact_mobile') String primaryContactMobile,@JsonKey(name: 'secondary_contact_name') String secondaryContactName,@JsonKey(name: 'secondary_contact_relation') String secondaryContactRelation,@JsonKey(name: 'mobile_number_secondary') String mobileNumberSecondary,@JsonKey(name: 'communication_address') String communicationAddress, String? religion, String? caste, String? category,@JsonKey(name: 'mother_tongue') String? motherTongue,@JsonKey(name: 'blood_group') String? bloodGroup,@JsonKey(name: 'school_transport_required') String? schoolTransportRequired,@JsonKey(name: 'guardians_name') String? guardiansName,@JsonKey(name: 'guardians_mobile_number', fromJson: _safeString) String? guardiansMobileNumber,@JsonKey(name: 'guardians_occupation') String? guardiansOccupation,@JsonKey(name: 'guardians_address') String? guardiansAddress,@JsonKey(name: 'guardians_email_address') String? guardiansEmailAddress,@JsonKey(name: 'guardians_office_number', fromJson: _safeString) String? guardiansOfficeNumber,@JsonKey(name: 'guardians_aadhaar_number', fromJson: _safeString) String? guardiansAadhaarNumber,@JsonKey(name: 'fathers_name') String? fathersName,@JsonKey(name: 'fathers_aadhaar_number', fromJson: _safeString) String? fathersAadhaarNumber,@JsonKey(name: 'fathers_occupation') String? fathersOccupation,@JsonKey(name: 'fathers_annual_income', fromJson: _safeString) String? fathersAnnualIncome,@JsonKey(name: 'fathers_mobile_number', fromJson: _safeString) String? fathersMobileNumber,@JsonKey(name: 'fathers_telephone_office', fromJson: _safeString) String? fathersTelephoneOffice,@JsonKey(name: 'fathers_post_held') String? fathersPostHeld,@JsonKey(name: 'fathers_permanent_address') String? fathersPermanentAddress,@JsonKey(name: 'fathers_languages_known') String? fathersLanguagesKnown,@JsonKey(name: 'fathers_email_address') String? fathersEmailAddress,@JsonKey(name: 'fathers_educational_qualification') String? fathersEducationalQualification,@JsonKey(name: 'fathers_company_name') String? fathersCompanyName,@JsonKey(name: 'fathers_business_address') String? fathersBusinessAddress,@JsonKey(name: 'mothers_name') String? mothersName,@JsonKey(name: 'mothers_aadhaar_number', fromJson: _safeString) String? mothersAadhaarNumber,@JsonKey(name: 'mothers_occupation') String? mothersOccupation,@JsonKey(name: 'mothers_annual_income', fromJson: _safeString) String? mothersAnnualIncome,@JsonKey(name: 'mothers_mobile_number', fromJson: _safeString) String? mothersMobileNumber,@JsonKey(name: 'mothers_email_address') String? mothersEmailAddress,@JsonKey(name: 'mothers_languages_known') String? mothersLanguagesKnown,@JsonKey(name: 'mothers_company_name') String? mothersCompanyName,@JsonKey(name: 'mothers_business_address') String? mothersBusinessAddress,@JsonKey(name: 'mothers_educational_qualification') String? mothersEducationalQualification,@JsonKey(name: 'mothers_permanent_address') String? mothersPermanentAddress,@JsonKey(name: 'mothers_post_held') String? mothersPostHeld,@JsonKey(name: 'mothers_telephone_office', fromJson: _safeString) String? mothersTelephoneOffice
});




}
/// @nodoc
class _$ApplicantDataCopyWithImpl<$Res>
    implements $ApplicantDataCopyWith<$Res> {
  _$ApplicantDataCopyWithImpl(this._self, this._then);

  final ApplicantData _self;
  final $Res Function(ApplicantData) _then;

/// Create a copy of ApplicantData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? school = null,Object? admissionSoughtTo = null,Object? applicantId = null,Object? academicYear = null,Object? dateOfBirth = null,Object? gender = null,Object? aadharNumber = null,Object? primaryContactName = null,Object? primaryContactRelation = null,Object? primaryContactMobile = null,Object? secondaryContactName = null,Object? secondaryContactRelation = null,Object? mobileNumberSecondary = null,Object? communicationAddress = null,Object? religion = freezed,Object? caste = freezed,Object? category = freezed,Object? motherTongue = freezed,Object? bloodGroup = freezed,Object? schoolTransportRequired = freezed,Object? guardiansName = freezed,Object? guardiansMobileNumber = freezed,Object? guardiansOccupation = freezed,Object? guardiansAddress = freezed,Object? guardiansEmailAddress = freezed,Object? guardiansOfficeNumber = freezed,Object? guardiansAadhaarNumber = freezed,Object? fathersName = freezed,Object? fathersAadhaarNumber = freezed,Object? fathersOccupation = freezed,Object? fathersAnnualIncome = freezed,Object? fathersMobileNumber = freezed,Object? fathersTelephoneOffice = freezed,Object? fathersPostHeld = freezed,Object? fathersPermanentAddress = freezed,Object? fathersLanguagesKnown = freezed,Object? fathersEmailAddress = freezed,Object? fathersEducationalQualification = freezed,Object? fathersCompanyName = freezed,Object? fathersBusinessAddress = freezed,Object? mothersName = freezed,Object? mothersAadhaarNumber = freezed,Object? mothersOccupation = freezed,Object? mothersAnnualIncome = freezed,Object? mothersMobileNumber = freezed,Object? mothersEmailAddress = freezed,Object? mothersLanguagesKnown = freezed,Object? mothersCompanyName = freezed,Object? mothersBusinessAddress = freezed,Object? mothersEducationalQualification = freezed,Object? mothersPermanentAddress = freezed,Object? mothersPostHeld = freezed,Object? mothersTelephoneOffice = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,school: null == school ? _self.school : school // ignore: cast_nullable_to_non_nullable
as String,admissionSoughtTo: null == admissionSoughtTo ? _self.admissionSoughtTo : admissionSoughtTo // ignore: cast_nullable_to_non_nullable
as String,applicantId: null == applicantId ? _self.applicantId : applicantId // ignore: cast_nullable_to_non_nullable
as String,academicYear: null == academicYear ? _self.academicYear : academicYear // ignore: cast_nullable_to_non_nullable
as String,dateOfBirth: null == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,aadharNumber: null == aadharNumber ? _self.aadharNumber : aadharNumber // ignore: cast_nullable_to_non_nullable
as String,primaryContactName: null == primaryContactName ? _self.primaryContactName : primaryContactName // ignore: cast_nullable_to_non_nullable
as String,primaryContactRelation: null == primaryContactRelation ? _self.primaryContactRelation : primaryContactRelation // ignore: cast_nullable_to_non_nullable
as String,primaryContactMobile: null == primaryContactMobile ? _self.primaryContactMobile : primaryContactMobile // ignore: cast_nullable_to_non_nullable
as String,secondaryContactName: null == secondaryContactName ? _self.secondaryContactName : secondaryContactName // ignore: cast_nullable_to_non_nullable
as String,secondaryContactRelation: null == secondaryContactRelation ? _self.secondaryContactRelation : secondaryContactRelation // ignore: cast_nullable_to_non_nullable
as String,mobileNumberSecondary: null == mobileNumberSecondary ? _self.mobileNumberSecondary : mobileNumberSecondary // ignore: cast_nullable_to_non_nullable
as String,communicationAddress: null == communicationAddress ? _self.communicationAddress : communicationAddress // ignore: cast_nullable_to_non_nullable
as String,religion: freezed == religion ? _self.religion : religion // ignore: cast_nullable_to_non_nullable
as String?,caste: freezed == caste ? _self.caste : caste // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,motherTongue: freezed == motherTongue ? _self.motherTongue : motherTongue // ignore: cast_nullable_to_non_nullable
as String?,bloodGroup: freezed == bloodGroup ? _self.bloodGroup : bloodGroup // ignore: cast_nullable_to_non_nullable
as String?,schoolTransportRequired: freezed == schoolTransportRequired ? _self.schoolTransportRequired : schoolTransportRequired // ignore: cast_nullable_to_non_nullable
as String?,guardiansName: freezed == guardiansName ? _self.guardiansName : guardiansName // ignore: cast_nullable_to_non_nullable
as String?,guardiansMobileNumber: freezed == guardiansMobileNumber ? _self.guardiansMobileNumber : guardiansMobileNumber // ignore: cast_nullable_to_non_nullable
as String?,guardiansOccupation: freezed == guardiansOccupation ? _self.guardiansOccupation : guardiansOccupation // ignore: cast_nullable_to_non_nullable
as String?,guardiansAddress: freezed == guardiansAddress ? _self.guardiansAddress : guardiansAddress // ignore: cast_nullable_to_non_nullable
as String?,guardiansEmailAddress: freezed == guardiansEmailAddress ? _self.guardiansEmailAddress : guardiansEmailAddress // ignore: cast_nullable_to_non_nullable
as String?,guardiansOfficeNumber: freezed == guardiansOfficeNumber ? _self.guardiansOfficeNumber : guardiansOfficeNumber // ignore: cast_nullable_to_non_nullable
as String?,guardiansAadhaarNumber: freezed == guardiansAadhaarNumber ? _self.guardiansAadhaarNumber : guardiansAadhaarNumber // ignore: cast_nullable_to_non_nullable
as String?,fathersName: freezed == fathersName ? _self.fathersName : fathersName // ignore: cast_nullable_to_non_nullable
as String?,fathersAadhaarNumber: freezed == fathersAadhaarNumber ? _self.fathersAadhaarNumber : fathersAadhaarNumber // ignore: cast_nullable_to_non_nullable
as String?,fathersOccupation: freezed == fathersOccupation ? _self.fathersOccupation : fathersOccupation // ignore: cast_nullable_to_non_nullable
as String?,fathersAnnualIncome: freezed == fathersAnnualIncome ? _self.fathersAnnualIncome : fathersAnnualIncome // ignore: cast_nullable_to_non_nullable
as String?,fathersMobileNumber: freezed == fathersMobileNumber ? _self.fathersMobileNumber : fathersMobileNumber // ignore: cast_nullable_to_non_nullable
as String?,fathersTelephoneOffice: freezed == fathersTelephoneOffice ? _self.fathersTelephoneOffice : fathersTelephoneOffice // ignore: cast_nullable_to_non_nullable
as String?,fathersPostHeld: freezed == fathersPostHeld ? _self.fathersPostHeld : fathersPostHeld // ignore: cast_nullable_to_non_nullable
as String?,fathersPermanentAddress: freezed == fathersPermanentAddress ? _self.fathersPermanentAddress : fathersPermanentAddress // ignore: cast_nullable_to_non_nullable
as String?,fathersLanguagesKnown: freezed == fathersLanguagesKnown ? _self.fathersLanguagesKnown : fathersLanguagesKnown // ignore: cast_nullable_to_non_nullable
as String?,fathersEmailAddress: freezed == fathersEmailAddress ? _self.fathersEmailAddress : fathersEmailAddress // ignore: cast_nullable_to_non_nullable
as String?,fathersEducationalQualification: freezed == fathersEducationalQualification ? _self.fathersEducationalQualification : fathersEducationalQualification // ignore: cast_nullable_to_non_nullable
as String?,fathersCompanyName: freezed == fathersCompanyName ? _self.fathersCompanyName : fathersCompanyName // ignore: cast_nullable_to_non_nullable
as String?,fathersBusinessAddress: freezed == fathersBusinessAddress ? _self.fathersBusinessAddress : fathersBusinessAddress // ignore: cast_nullable_to_non_nullable
as String?,mothersName: freezed == mothersName ? _self.mothersName : mothersName // ignore: cast_nullable_to_non_nullable
as String?,mothersAadhaarNumber: freezed == mothersAadhaarNumber ? _self.mothersAadhaarNumber : mothersAadhaarNumber // ignore: cast_nullable_to_non_nullable
as String?,mothersOccupation: freezed == mothersOccupation ? _self.mothersOccupation : mothersOccupation // ignore: cast_nullable_to_non_nullable
as String?,mothersAnnualIncome: freezed == mothersAnnualIncome ? _self.mothersAnnualIncome : mothersAnnualIncome // ignore: cast_nullable_to_non_nullable
as String?,mothersMobileNumber: freezed == mothersMobileNumber ? _self.mothersMobileNumber : mothersMobileNumber // ignore: cast_nullable_to_non_nullable
as String?,mothersEmailAddress: freezed == mothersEmailAddress ? _self.mothersEmailAddress : mothersEmailAddress // ignore: cast_nullable_to_non_nullable
as String?,mothersLanguagesKnown: freezed == mothersLanguagesKnown ? _self.mothersLanguagesKnown : mothersLanguagesKnown // ignore: cast_nullable_to_non_nullable
as String?,mothersCompanyName: freezed == mothersCompanyName ? _self.mothersCompanyName : mothersCompanyName // ignore: cast_nullable_to_non_nullable
as String?,mothersBusinessAddress: freezed == mothersBusinessAddress ? _self.mothersBusinessAddress : mothersBusinessAddress // ignore: cast_nullable_to_non_nullable
as String?,mothersEducationalQualification: freezed == mothersEducationalQualification ? _self.mothersEducationalQualification : mothersEducationalQualification // ignore: cast_nullable_to_non_nullable
as String?,mothersPermanentAddress: freezed == mothersPermanentAddress ? _self.mothersPermanentAddress : mothersPermanentAddress // ignore: cast_nullable_to_non_nullable
as String?,mothersPostHeld: freezed == mothersPostHeld ? _self.mothersPostHeld : mothersPostHeld // ignore: cast_nullable_to_non_nullable
as String?,mothersTelephoneOffice: freezed == mothersTelephoneOffice ? _self.mothersTelephoneOffice : mothersTelephoneOffice // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ApplicantData].
extension ApplicantDataPatterns on ApplicantData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApplicantData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApplicantData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApplicantData value)  $default,){
final _that = this;
switch (_that) {
case _ApplicantData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApplicantData value)?  $default,){
final _that = this;
switch (_that) {
case _ApplicantData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name1')  String name,  String school, @JsonKey(name: 'admission_sought_to')  String admissionSoughtTo, @JsonKey(name: 'applicant_id')  String applicantId, @JsonKey(name: 'academic_year')  String academicYear, @JsonKey(name: 'date_of_birth')  String dateOfBirth,  String gender, @JsonKey(name: 'aadhar_number')  String aadharNumber, @JsonKey(name: 'primary_contact_name')  String primaryContactName, @JsonKey(name: 'primary_contact_relation')  String primaryContactRelation, @JsonKey(name: 'primary_contact_mobile')  String primaryContactMobile, @JsonKey(name: 'secondary_contact_name')  String secondaryContactName, @JsonKey(name: 'secondary_contact_relation')  String secondaryContactRelation, @JsonKey(name: 'mobile_number_secondary')  String mobileNumberSecondary, @JsonKey(name: 'communication_address')  String communicationAddress,  String? religion,  String? caste,  String? category, @JsonKey(name: 'mother_tongue')  String? motherTongue, @JsonKey(name: 'blood_group')  String? bloodGroup, @JsonKey(name: 'school_transport_required')  String? schoolTransportRequired, @JsonKey(name: 'guardians_name')  String? guardiansName, @JsonKey(name: 'guardians_mobile_number', fromJson: _safeString)  String? guardiansMobileNumber, @JsonKey(name: 'guardians_occupation')  String? guardiansOccupation, @JsonKey(name: 'guardians_address')  String? guardiansAddress, @JsonKey(name: 'guardians_email_address')  String? guardiansEmailAddress, @JsonKey(name: 'guardians_office_number', fromJson: _safeString)  String? guardiansOfficeNumber, @JsonKey(name: 'guardians_aadhaar_number', fromJson: _safeString)  String? guardiansAadhaarNumber, @JsonKey(name: 'fathers_name')  String? fathersName, @JsonKey(name: 'fathers_aadhaar_number', fromJson: _safeString)  String? fathersAadhaarNumber, @JsonKey(name: 'fathers_occupation')  String? fathersOccupation, @JsonKey(name: 'fathers_annual_income', fromJson: _safeString)  String? fathersAnnualIncome, @JsonKey(name: 'fathers_mobile_number', fromJson: _safeString)  String? fathersMobileNumber, @JsonKey(name: 'fathers_telephone_office', fromJson: _safeString)  String? fathersTelephoneOffice, @JsonKey(name: 'fathers_post_held')  String? fathersPostHeld, @JsonKey(name: 'fathers_permanent_address')  String? fathersPermanentAddress, @JsonKey(name: 'fathers_languages_known')  String? fathersLanguagesKnown, @JsonKey(name: 'fathers_email_address')  String? fathersEmailAddress, @JsonKey(name: 'fathers_educational_qualification')  String? fathersEducationalQualification, @JsonKey(name: 'fathers_company_name')  String? fathersCompanyName, @JsonKey(name: 'fathers_business_address')  String? fathersBusinessAddress, @JsonKey(name: 'mothers_name')  String? mothersName, @JsonKey(name: 'mothers_aadhaar_number', fromJson: _safeString)  String? mothersAadhaarNumber, @JsonKey(name: 'mothers_occupation')  String? mothersOccupation, @JsonKey(name: 'mothers_annual_income', fromJson: _safeString)  String? mothersAnnualIncome, @JsonKey(name: 'mothers_mobile_number', fromJson: _safeString)  String? mothersMobileNumber, @JsonKey(name: 'mothers_email_address')  String? mothersEmailAddress, @JsonKey(name: 'mothers_languages_known')  String? mothersLanguagesKnown, @JsonKey(name: 'mothers_company_name')  String? mothersCompanyName, @JsonKey(name: 'mothers_business_address')  String? mothersBusinessAddress, @JsonKey(name: 'mothers_educational_qualification')  String? mothersEducationalQualification, @JsonKey(name: 'mothers_permanent_address')  String? mothersPermanentAddress, @JsonKey(name: 'mothers_post_held')  String? mothersPostHeld, @JsonKey(name: 'mothers_telephone_office', fromJson: _safeString)  String? mothersTelephoneOffice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApplicantData() when $default != null:
return $default(_that.name,_that.school,_that.admissionSoughtTo,_that.applicantId,_that.academicYear,_that.dateOfBirth,_that.gender,_that.aadharNumber,_that.primaryContactName,_that.primaryContactRelation,_that.primaryContactMobile,_that.secondaryContactName,_that.secondaryContactRelation,_that.mobileNumberSecondary,_that.communicationAddress,_that.religion,_that.caste,_that.category,_that.motherTongue,_that.bloodGroup,_that.schoolTransportRequired,_that.guardiansName,_that.guardiansMobileNumber,_that.guardiansOccupation,_that.guardiansAddress,_that.guardiansEmailAddress,_that.guardiansOfficeNumber,_that.guardiansAadhaarNumber,_that.fathersName,_that.fathersAadhaarNumber,_that.fathersOccupation,_that.fathersAnnualIncome,_that.fathersMobileNumber,_that.fathersTelephoneOffice,_that.fathersPostHeld,_that.fathersPermanentAddress,_that.fathersLanguagesKnown,_that.fathersEmailAddress,_that.fathersEducationalQualification,_that.fathersCompanyName,_that.fathersBusinessAddress,_that.mothersName,_that.mothersAadhaarNumber,_that.mothersOccupation,_that.mothersAnnualIncome,_that.mothersMobileNumber,_that.mothersEmailAddress,_that.mothersLanguagesKnown,_that.mothersCompanyName,_that.mothersBusinessAddress,_that.mothersEducationalQualification,_that.mothersPermanentAddress,_that.mothersPostHeld,_that.mothersTelephoneOffice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'name1')  String name,  String school, @JsonKey(name: 'admission_sought_to')  String admissionSoughtTo, @JsonKey(name: 'applicant_id')  String applicantId, @JsonKey(name: 'academic_year')  String academicYear, @JsonKey(name: 'date_of_birth')  String dateOfBirth,  String gender, @JsonKey(name: 'aadhar_number')  String aadharNumber, @JsonKey(name: 'primary_contact_name')  String primaryContactName, @JsonKey(name: 'primary_contact_relation')  String primaryContactRelation, @JsonKey(name: 'primary_contact_mobile')  String primaryContactMobile, @JsonKey(name: 'secondary_contact_name')  String secondaryContactName, @JsonKey(name: 'secondary_contact_relation')  String secondaryContactRelation, @JsonKey(name: 'mobile_number_secondary')  String mobileNumberSecondary, @JsonKey(name: 'communication_address')  String communicationAddress,  String? religion,  String? caste,  String? category, @JsonKey(name: 'mother_tongue')  String? motherTongue, @JsonKey(name: 'blood_group')  String? bloodGroup, @JsonKey(name: 'school_transport_required')  String? schoolTransportRequired, @JsonKey(name: 'guardians_name')  String? guardiansName, @JsonKey(name: 'guardians_mobile_number', fromJson: _safeString)  String? guardiansMobileNumber, @JsonKey(name: 'guardians_occupation')  String? guardiansOccupation, @JsonKey(name: 'guardians_address')  String? guardiansAddress, @JsonKey(name: 'guardians_email_address')  String? guardiansEmailAddress, @JsonKey(name: 'guardians_office_number', fromJson: _safeString)  String? guardiansOfficeNumber, @JsonKey(name: 'guardians_aadhaar_number', fromJson: _safeString)  String? guardiansAadhaarNumber, @JsonKey(name: 'fathers_name')  String? fathersName, @JsonKey(name: 'fathers_aadhaar_number', fromJson: _safeString)  String? fathersAadhaarNumber, @JsonKey(name: 'fathers_occupation')  String? fathersOccupation, @JsonKey(name: 'fathers_annual_income', fromJson: _safeString)  String? fathersAnnualIncome, @JsonKey(name: 'fathers_mobile_number', fromJson: _safeString)  String? fathersMobileNumber, @JsonKey(name: 'fathers_telephone_office', fromJson: _safeString)  String? fathersTelephoneOffice, @JsonKey(name: 'fathers_post_held')  String? fathersPostHeld, @JsonKey(name: 'fathers_permanent_address')  String? fathersPermanentAddress, @JsonKey(name: 'fathers_languages_known')  String? fathersLanguagesKnown, @JsonKey(name: 'fathers_email_address')  String? fathersEmailAddress, @JsonKey(name: 'fathers_educational_qualification')  String? fathersEducationalQualification, @JsonKey(name: 'fathers_company_name')  String? fathersCompanyName, @JsonKey(name: 'fathers_business_address')  String? fathersBusinessAddress, @JsonKey(name: 'mothers_name')  String? mothersName, @JsonKey(name: 'mothers_aadhaar_number', fromJson: _safeString)  String? mothersAadhaarNumber, @JsonKey(name: 'mothers_occupation')  String? mothersOccupation, @JsonKey(name: 'mothers_annual_income', fromJson: _safeString)  String? mothersAnnualIncome, @JsonKey(name: 'mothers_mobile_number', fromJson: _safeString)  String? mothersMobileNumber, @JsonKey(name: 'mothers_email_address')  String? mothersEmailAddress, @JsonKey(name: 'mothers_languages_known')  String? mothersLanguagesKnown, @JsonKey(name: 'mothers_company_name')  String? mothersCompanyName, @JsonKey(name: 'mothers_business_address')  String? mothersBusinessAddress, @JsonKey(name: 'mothers_educational_qualification')  String? mothersEducationalQualification, @JsonKey(name: 'mothers_permanent_address')  String? mothersPermanentAddress, @JsonKey(name: 'mothers_post_held')  String? mothersPostHeld, @JsonKey(name: 'mothers_telephone_office', fromJson: _safeString)  String? mothersTelephoneOffice)  $default,) {final _that = this;
switch (_that) {
case _ApplicantData():
return $default(_that.name,_that.school,_that.admissionSoughtTo,_that.applicantId,_that.academicYear,_that.dateOfBirth,_that.gender,_that.aadharNumber,_that.primaryContactName,_that.primaryContactRelation,_that.primaryContactMobile,_that.secondaryContactName,_that.secondaryContactRelation,_that.mobileNumberSecondary,_that.communicationAddress,_that.religion,_that.caste,_that.category,_that.motherTongue,_that.bloodGroup,_that.schoolTransportRequired,_that.guardiansName,_that.guardiansMobileNumber,_that.guardiansOccupation,_that.guardiansAddress,_that.guardiansEmailAddress,_that.guardiansOfficeNumber,_that.guardiansAadhaarNumber,_that.fathersName,_that.fathersAadhaarNumber,_that.fathersOccupation,_that.fathersAnnualIncome,_that.fathersMobileNumber,_that.fathersTelephoneOffice,_that.fathersPostHeld,_that.fathersPermanentAddress,_that.fathersLanguagesKnown,_that.fathersEmailAddress,_that.fathersEducationalQualification,_that.fathersCompanyName,_that.fathersBusinessAddress,_that.mothersName,_that.mothersAadhaarNumber,_that.mothersOccupation,_that.mothersAnnualIncome,_that.mothersMobileNumber,_that.mothersEmailAddress,_that.mothersLanguagesKnown,_that.mothersCompanyName,_that.mothersBusinessAddress,_that.mothersEducationalQualification,_that.mothersPermanentAddress,_that.mothersPostHeld,_that.mothersTelephoneOffice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'name1')  String name,  String school, @JsonKey(name: 'admission_sought_to')  String admissionSoughtTo, @JsonKey(name: 'applicant_id')  String applicantId, @JsonKey(name: 'academic_year')  String academicYear, @JsonKey(name: 'date_of_birth')  String dateOfBirth,  String gender, @JsonKey(name: 'aadhar_number')  String aadharNumber, @JsonKey(name: 'primary_contact_name')  String primaryContactName, @JsonKey(name: 'primary_contact_relation')  String primaryContactRelation, @JsonKey(name: 'primary_contact_mobile')  String primaryContactMobile, @JsonKey(name: 'secondary_contact_name')  String secondaryContactName, @JsonKey(name: 'secondary_contact_relation')  String secondaryContactRelation, @JsonKey(name: 'mobile_number_secondary')  String mobileNumberSecondary, @JsonKey(name: 'communication_address')  String communicationAddress,  String? religion,  String? caste,  String? category, @JsonKey(name: 'mother_tongue')  String? motherTongue, @JsonKey(name: 'blood_group')  String? bloodGroup, @JsonKey(name: 'school_transport_required')  String? schoolTransportRequired, @JsonKey(name: 'guardians_name')  String? guardiansName, @JsonKey(name: 'guardians_mobile_number', fromJson: _safeString)  String? guardiansMobileNumber, @JsonKey(name: 'guardians_occupation')  String? guardiansOccupation, @JsonKey(name: 'guardians_address')  String? guardiansAddress, @JsonKey(name: 'guardians_email_address')  String? guardiansEmailAddress, @JsonKey(name: 'guardians_office_number', fromJson: _safeString)  String? guardiansOfficeNumber, @JsonKey(name: 'guardians_aadhaar_number', fromJson: _safeString)  String? guardiansAadhaarNumber, @JsonKey(name: 'fathers_name')  String? fathersName, @JsonKey(name: 'fathers_aadhaar_number', fromJson: _safeString)  String? fathersAadhaarNumber, @JsonKey(name: 'fathers_occupation')  String? fathersOccupation, @JsonKey(name: 'fathers_annual_income', fromJson: _safeString)  String? fathersAnnualIncome, @JsonKey(name: 'fathers_mobile_number', fromJson: _safeString)  String? fathersMobileNumber, @JsonKey(name: 'fathers_telephone_office', fromJson: _safeString)  String? fathersTelephoneOffice, @JsonKey(name: 'fathers_post_held')  String? fathersPostHeld, @JsonKey(name: 'fathers_permanent_address')  String? fathersPermanentAddress, @JsonKey(name: 'fathers_languages_known')  String? fathersLanguagesKnown, @JsonKey(name: 'fathers_email_address')  String? fathersEmailAddress, @JsonKey(name: 'fathers_educational_qualification')  String? fathersEducationalQualification, @JsonKey(name: 'fathers_company_name')  String? fathersCompanyName, @JsonKey(name: 'fathers_business_address')  String? fathersBusinessAddress, @JsonKey(name: 'mothers_name')  String? mothersName, @JsonKey(name: 'mothers_aadhaar_number', fromJson: _safeString)  String? mothersAadhaarNumber, @JsonKey(name: 'mothers_occupation')  String? mothersOccupation, @JsonKey(name: 'mothers_annual_income', fromJson: _safeString)  String? mothersAnnualIncome, @JsonKey(name: 'mothers_mobile_number', fromJson: _safeString)  String? mothersMobileNumber, @JsonKey(name: 'mothers_email_address')  String? mothersEmailAddress, @JsonKey(name: 'mothers_languages_known')  String? mothersLanguagesKnown, @JsonKey(name: 'mothers_company_name')  String? mothersCompanyName, @JsonKey(name: 'mothers_business_address')  String? mothersBusinessAddress, @JsonKey(name: 'mothers_educational_qualification')  String? mothersEducationalQualification, @JsonKey(name: 'mothers_permanent_address')  String? mothersPermanentAddress, @JsonKey(name: 'mothers_post_held')  String? mothersPostHeld, @JsonKey(name: 'mothers_telephone_office', fromJson: _safeString)  String? mothersTelephoneOffice)?  $default,) {final _that = this;
switch (_that) {
case _ApplicantData() when $default != null:
return $default(_that.name,_that.school,_that.admissionSoughtTo,_that.applicantId,_that.academicYear,_that.dateOfBirth,_that.gender,_that.aadharNumber,_that.primaryContactName,_that.primaryContactRelation,_that.primaryContactMobile,_that.secondaryContactName,_that.secondaryContactRelation,_that.mobileNumberSecondary,_that.communicationAddress,_that.religion,_that.caste,_that.category,_that.motherTongue,_that.bloodGroup,_that.schoolTransportRequired,_that.guardiansName,_that.guardiansMobileNumber,_that.guardiansOccupation,_that.guardiansAddress,_that.guardiansEmailAddress,_that.guardiansOfficeNumber,_that.guardiansAadhaarNumber,_that.fathersName,_that.fathersAadhaarNumber,_that.fathersOccupation,_that.fathersAnnualIncome,_that.fathersMobileNumber,_that.fathersTelephoneOffice,_that.fathersPostHeld,_that.fathersPermanentAddress,_that.fathersLanguagesKnown,_that.fathersEmailAddress,_that.fathersEducationalQualification,_that.fathersCompanyName,_that.fathersBusinessAddress,_that.mothersName,_that.mothersAadhaarNumber,_that.mothersOccupation,_that.mothersAnnualIncome,_that.mothersMobileNumber,_that.mothersEmailAddress,_that.mothersLanguagesKnown,_that.mothersCompanyName,_that.mothersBusinessAddress,_that.mothersEducationalQualification,_that.mothersPermanentAddress,_that.mothersPostHeld,_that.mothersTelephoneOffice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ApplicantData implements ApplicantData {
  const _ApplicantData({@JsonKey(name: 'name1') required this.name, required this.school, @JsonKey(name: 'admission_sought_to') required this.admissionSoughtTo, @JsonKey(name: 'applicant_id') required this.applicantId, @JsonKey(name: 'academic_year') required this.academicYear, @JsonKey(name: 'date_of_birth') required this.dateOfBirth, required this.gender, @JsonKey(name: 'aadhar_number') required this.aadharNumber, @JsonKey(name: 'primary_contact_name') required this.primaryContactName, @JsonKey(name: 'primary_contact_relation') required this.primaryContactRelation, @JsonKey(name: 'primary_contact_mobile') required this.primaryContactMobile, @JsonKey(name: 'secondary_contact_name') required this.secondaryContactName, @JsonKey(name: 'secondary_contact_relation') required this.secondaryContactRelation, @JsonKey(name: 'mobile_number_secondary') required this.mobileNumberSecondary, @JsonKey(name: 'communication_address') required this.communicationAddress, this.religion, this.caste, this.category, @JsonKey(name: 'mother_tongue') this.motherTongue, @JsonKey(name: 'blood_group') this.bloodGroup, @JsonKey(name: 'school_transport_required') this.schoolTransportRequired, @JsonKey(name: 'guardians_name') this.guardiansName, @JsonKey(name: 'guardians_mobile_number', fromJson: _safeString) this.guardiansMobileNumber, @JsonKey(name: 'guardians_occupation') this.guardiansOccupation, @JsonKey(name: 'guardians_address') this.guardiansAddress, @JsonKey(name: 'guardians_email_address') this.guardiansEmailAddress, @JsonKey(name: 'guardians_office_number', fromJson: _safeString) this.guardiansOfficeNumber, @JsonKey(name: 'guardians_aadhaar_number', fromJson: _safeString) this.guardiansAadhaarNumber, @JsonKey(name: 'fathers_name') this.fathersName, @JsonKey(name: 'fathers_aadhaar_number', fromJson: _safeString) this.fathersAadhaarNumber, @JsonKey(name: 'fathers_occupation') this.fathersOccupation, @JsonKey(name: 'fathers_annual_income', fromJson: _safeString) this.fathersAnnualIncome, @JsonKey(name: 'fathers_mobile_number', fromJson: _safeString) this.fathersMobileNumber, @JsonKey(name: 'fathers_telephone_office', fromJson: _safeString) this.fathersTelephoneOffice, @JsonKey(name: 'fathers_post_held') this.fathersPostHeld, @JsonKey(name: 'fathers_permanent_address') this.fathersPermanentAddress, @JsonKey(name: 'fathers_languages_known') this.fathersLanguagesKnown, @JsonKey(name: 'fathers_email_address') this.fathersEmailAddress, @JsonKey(name: 'fathers_educational_qualification') this.fathersEducationalQualification, @JsonKey(name: 'fathers_company_name') this.fathersCompanyName, @JsonKey(name: 'fathers_business_address') this.fathersBusinessAddress, @JsonKey(name: 'mothers_name') this.mothersName, @JsonKey(name: 'mothers_aadhaar_number', fromJson: _safeString) this.mothersAadhaarNumber, @JsonKey(name: 'mothers_occupation') this.mothersOccupation, @JsonKey(name: 'mothers_annual_income', fromJson: _safeString) this.mothersAnnualIncome, @JsonKey(name: 'mothers_mobile_number', fromJson: _safeString) this.mothersMobileNumber, @JsonKey(name: 'mothers_email_address') this.mothersEmailAddress, @JsonKey(name: 'mothers_languages_known') this.mothersLanguagesKnown, @JsonKey(name: 'mothers_company_name') this.mothersCompanyName, @JsonKey(name: 'mothers_business_address') this.mothersBusinessAddress, @JsonKey(name: 'mothers_educational_qualification') this.mothersEducationalQualification, @JsonKey(name: 'mothers_permanent_address') this.mothersPermanentAddress, @JsonKey(name: 'mothers_post_held') this.mothersPostHeld, @JsonKey(name: 'mothers_telephone_office', fromJson: _safeString) this.mothersTelephoneOffice});
  factory _ApplicantData.fromJson(Map<String, dynamic> json) => _$ApplicantDataFromJson(json);

@override@JsonKey(name: 'name1') final  String name;
@override final  String school;
@override@JsonKey(name: 'admission_sought_to') final  String admissionSoughtTo;
@override@JsonKey(name: 'applicant_id') final  String applicantId;
@override@JsonKey(name: 'academic_year') final  String academicYear;
@override@JsonKey(name: 'date_of_birth') final  String dateOfBirth;
@override final  String gender;
@override@JsonKey(name: 'aadhar_number') final  String aadharNumber;
@override@JsonKey(name: 'primary_contact_name') final  String primaryContactName;
@override@JsonKey(name: 'primary_contact_relation') final  String primaryContactRelation;
@override@JsonKey(name: 'primary_contact_mobile') final  String primaryContactMobile;
@override@JsonKey(name: 'secondary_contact_name') final  String secondaryContactName;
@override@JsonKey(name: 'secondary_contact_relation') final  String secondaryContactRelation;
@override@JsonKey(name: 'mobile_number_secondary') final  String mobileNumberSecondary;
@override@JsonKey(name: 'communication_address') final  String communicationAddress;
@override final  String? religion;
@override final  String? caste;
@override final  String? category;
@override@JsonKey(name: 'mother_tongue') final  String? motherTongue;
@override@JsonKey(name: 'blood_group') final  String? bloodGroup;
@override@JsonKey(name: 'school_transport_required') final  String? schoolTransportRequired;
// Guardian Details
@override@JsonKey(name: 'guardians_name') final  String? guardiansName;
@override@JsonKey(name: 'guardians_mobile_number', fromJson: _safeString) final  String? guardiansMobileNumber;
@override@JsonKey(name: 'guardians_occupation') final  String? guardiansOccupation;
@override@JsonKey(name: 'guardians_address') final  String? guardiansAddress;
@override@JsonKey(name: 'guardians_email_address') final  String? guardiansEmailAddress;
@override@JsonKey(name: 'guardians_office_number', fromJson: _safeString) final  String? guardiansOfficeNumber;
@override@JsonKey(name: 'guardians_aadhaar_number', fromJson: _safeString) final  String? guardiansAadhaarNumber;
// Father Details
@override@JsonKey(name: 'fathers_name') final  String? fathersName;
@override@JsonKey(name: 'fathers_aadhaar_number', fromJson: _safeString) final  String? fathersAadhaarNumber;
@override@JsonKey(name: 'fathers_occupation') final  String? fathersOccupation;
@override@JsonKey(name: 'fathers_annual_income', fromJson: _safeString) final  String? fathersAnnualIncome;
@override@JsonKey(name: 'fathers_mobile_number', fromJson: _safeString) final  String? fathersMobileNumber;
@override@JsonKey(name: 'fathers_telephone_office', fromJson: _safeString) final  String? fathersTelephoneOffice;
@override@JsonKey(name: 'fathers_post_held') final  String? fathersPostHeld;
@override@JsonKey(name: 'fathers_permanent_address') final  String? fathersPermanentAddress;
@override@JsonKey(name: 'fathers_languages_known') final  String? fathersLanguagesKnown;
@override@JsonKey(name: 'fathers_email_address') final  String? fathersEmailAddress;
@override@JsonKey(name: 'fathers_educational_qualification') final  String? fathersEducationalQualification;
@override@JsonKey(name: 'fathers_company_name') final  String? fathersCompanyName;
@override@JsonKey(name: 'fathers_business_address') final  String? fathersBusinessAddress;
// Mother Details
@override@JsonKey(name: 'mothers_name') final  String? mothersName;
@override@JsonKey(name: 'mothers_aadhaar_number', fromJson: _safeString) final  String? mothersAadhaarNumber;
@override@JsonKey(name: 'mothers_occupation') final  String? mothersOccupation;
@override@JsonKey(name: 'mothers_annual_income', fromJson: _safeString) final  String? mothersAnnualIncome;
@override@JsonKey(name: 'mothers_mobile_number', fromJson: _safeString) final  String? mothersMobileNumber;
@override@JsonKey(name: 'mothers_email_address') final  String? mothersEmailAddress;
@override@JsonKey(name: 'mothers_languages_known') final  String? mothersLanguagesKnown;
@override@JsonKey(name: 'mothers_company_name') final  String? mothersCompanyName;
@override@JsonKey(name: 'mothers_business_address') final  String? mothersBusinessAddress;
@override@JsonKey(name: 'mothers_educational_qualification') final  String? mothersEducationalQualification;
@override@JsonKey(name: 'mothers_permanent_address') final  String? mothersPermanentAddress;
@override@JsonKey(name: 'mothers_post_held') final  String? mothersPostHeld;
@override@JsonKey(name: 'mothers_telephone_office', fromJson: _safeString) final  String? mothersTelephoneOffice;

/// Create a copy of ApplicantData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApplicantDataCopyWith<_ApplicantData> get copyWith => __$ApplicantDataCopyWithImpl<_ApplicantData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApplicantDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApplicantData&&(identical(other.name, name) || other.name == name)&&(identical(other.school, school) || other.school == school)&&(identical(other.admissionSoughtTo, admissionSoughtTo) || other.admissionSoughtTo == admissionSoughtTo)&&(identical(other.applicantId, applicantId) || other.applicantId == applicantId)&&(identical(other.academicYear, academicYear) || other.academicYear == academicYear)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.aadharNumber, aadharNumber) || other.aadharNumber == aadharNumber)&&(identical(other.primaryContactName, primaryContactName) || other.primaryContactName == primaryContactName)&&(identical(other.primaryContactRelation, primaryContactRelation) || other.primaryContactRelation == primaryContactRelation)&&(identical(other.primaryContactMobile, primaryContactMobile) || other.primaryContactMobile == primaryContactMobile)&&(identical(other.secondaryContactName, secondaryContactName) || other.secondaryContactName == secondaryContactName)&&(identical(other.secondaryContactRelation, secondaryContactRelation) || other.secondaryContactRelation == secondaryContactRelation)&&(identical(other.mobileNumberSecondary, mobileNumberSecondary) || other.mobileNumberSecondary == mobileNumberSecondary)&&(identical(other.communicationAddress, communicationAddress) || other.communicationAddress == communicationAddress)&&(identical(other.religion, religion) || other.religion == religion)&&(identical(other.caste, caste) || other.caste == caste)&&(identical(other.category, category) || other.category == category)&&(identical(other.motherTongue, motherTongue) || other.motherTongue == motherTongue)&&(identical(other.bloodGroup, bloodGroup) || other.bloodGroup == bloodGroup)&&(identical(other.schoolTransportRequired, schoolTransportRequired) || other.schoolTransportRequired == schoolTransportRequired)&&(identical(other.guardiansName, guardiansName) || other.guardiansName == guardiansName)&&(identical(other.guardiansMobileNumber, guardiansMobileNumber) || other.guardiansMobileNumber == guardiansMobileNumber)&&(identical(other.guardiansOccupation, guardiansOccupation) || other.guardiansOccupation == guardiansOccupation)&&(identical(other.guardiansAddress, guardiansAddress) || other.guardiansAddress == guardiansAddress)&&(identical(other.guardiansEmailAddress, guardiansEmailAddress) || other.guardiansEmailAddress == guardiansEmailAddress)&&(identical(other.guardiansOfficeNumber, guardiansOfficeNumber) || other.guardiansOfficeNumber == guardiansOfficeNumber)&&(identical(other.guardiansAadhaarNumber, guardiansAadhaarNumber) || other.guardiansAadhaarNumber == guardiansAadhaarNumber)&&(identical(other.fathersName, fathersName) || other.fathersName == fathersName)&&(identical(other.fathersAadhaarNumber, fathersAadhaarNumber) || other.fathersAadhaarNumber == fathersAadhaarNumber)&&(identical(other.fathersOccupation, fathersOccupation) || other.fathersOccupation == fathersOccupation)&&(identical(other.fathersAnnualIncome, fathersAnnualIncome) || other.fathersAnnualIncome == fathersAnnualIncome)&&(identical(other.fathersMobileNumber, fathersMobileNumber) || other.fathersMobileNumber == fathersMobileNumber)&&(identical(other.fathersTelephoneOffice, fathersTelephoneOffice) || other.fathersTelephoneOffice == fathersTelephoneOffice)&&(identical(other.fathersPostHeld, fathersPostHeld) || other.fathersPostHeld == fathersPostHeld)&&(identical(other.fathersPermanentAddress, fathersPermanentAddress) || other.fathersPermanentAddress == fathersPermanentAddress)&&(identical(other.fathersLanguagesKnown, fathersLanguagesKnown) || other.fathersLanguagesKnown == fathersLanguagesKnown)&&(identical(other.fathersEmailAddress, fathersEmailAddress) || other.fathersEmailAddress == fathersEmailAddress)&&(identical(other.fathersEducationalQualification, fathersEducationalQualification) || other.fathersEducationalQualification == fathersEducationalQualification)&&(identical(other.fathersCompanyName, fathersCompanyName) || other.fathersCompanyName == fathersCompanyName)&&(identical(other.fathersBusinessAddress, fathersBusinessAddress) || other.fathersBusinessAddress == fathersBusinessAddress)&&(identical(other.mothersName, mothersName) || other.mothersName == mothersName)&&(identical(other.mothersAadhaarNumber, mothersAadhaarNumber) || other.mothersAadhaarNumber == mothersAadhaarNumber)&&(identical(other.mothersOccupation, mothersOccupation) || other.mothersOccupation == mothersOccupation)&&(identical(other.mothersAnnualIncome, mothersAnnualIncome) || other.mothersAnnualIncome == mothersAnnualIncome)&&(identical(other.mothersMobileNumber, mothersMobileNumber) || other.mothersMobileNumber == mothersMobileNumber)&&(identical(other.mothersEmailAddress, mothersEmailAddress) || other.mothersEmailAddress == mothersEmailAddress)&&(identical(other.mothersLanguagesKnown, mothersLanguagesKnown) || other.mothersLanguagesKnown == mothersLanguagesKnown)&&(identical(other.mothersCompanyName, mothersCompanyName) || other.mothersCompanyName == mothersCompanyName)&&(identical(other.mothersBusinessAddress, mothersBusinessAddress) || other.mothersBusinessAddress == mothersBusinessAddress)&&(identical(other.mothersEducationalQualification, mothersEducationalQualification) || other.mothersEducationalQualification == mothersEducationalQualification)&&(identical(other.mothersPermanentAddress, mothersPermanentAddress) || other.mothersPermanentAddress == mothersPermanentAddress)&&(identical(other.mothersPostHeld, mothersPostHeld) || other.mothersPostHeld == mothersPostHeld)&&(identical(other.mothersTelephoneOffice, mothersTelephoneOffice) || other.mothersTelephoneOffice == mothersTelephoneOffice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,name,school,admissionSoughtTo,applicantId,academicYear,dateOfBirth,gender,aadharNumber,primaryContactName,primaryContactRelation,primaryContactMobile,secondaryContactName,secondaryContactRelation,mobileNumberSecondary,communicationAddress,religion,caste,category,motherTongue,bloodGroup,schoolTransportRequired,guardiansName,guardiansMobileNumber,guardiansOccupation,guardiansAddress,guardiansEmailAddress,guardiansOfficeNumber,guardiansAadhaarNumber,fathersName,fathersAadhaarNumber,fathersOccupation,fathersAnnualIncome,fathersMobileNumber,fathersTelephoneOffice,fathersPostHeld,fathersPermanentAddress,fathersLanguagesKnown,fathersEmailAddress,fathersEducationalQualification,fathersCompanyName,fathersBusinessAddress,mothersName,mothersAadhaarNumber,mothersOccupation,mothersAnnualIncome,mothersMobileNumber,mothersEmailAddress,mothersLanguagesKnown,mothersCompanyName,mothersBusinessAddress,mothersEducationalQualification,mothersPermanentAddress,mothersPostHeld,mothersTelephoneOffice]);

@override
String toString() {
  return 'ApplicantData(name: $name, school: $school, admissionSoughtTo: $admissionSoughtTo, applicantId: $applicantId, academicYear: $academicYear, dateOfBirth: $dateOfBirth, gender: $gender, aadharNumber: $aadharNumber, primaryContactName: $primaryContactName, primaryContactRelation: $primaryContactRelation, primaryContactMobile: $primaryContactMobile, secondaryContactName: $secondaryContactName, secondaryContactRelation: $secondaryContactRelation, mobileNumberSecondary: $mobileNumberSecondary, communicationAddress: $communicationAddress, religion: $religion, caste: $caste, category: $category, motherTongue: $motherTongue, bloodGroup: $bloodGroup, schoolTransportRequired: $schoolTransportRequired, guardiansName: $guardiansName, guardiansMobileNumber: $guardiansMobileNumber, guardiansOccupation: $guardiansOccupation, guardiansAddress: $guardiansAddress, guardiansEmailAddress: $guardiansEmailAddress, guardiansOfficeNumber: $guardiansOfficeNumber, guardiansAadhaarNumber: $guardiansAadhaarNumber, fathersName: $fathersName, fathersAadhaarNumber: $fathersAadhaarNumber, fathersOccupation: $fathersOccupation, fathersAnnualIncome: $fathersAnnualIncome, fathersMobileNumber: $fathersMobileNumber, fathersTelephoneOffice: $fathersTelephoneOffice, fathersPostHeld: $fathersPostHeld, fathersPermanentAddress: $fathersPermanentAddress, fathersLanguagesKnown: $fathersLanguagesKnown, fathersEmailAddress: $fathersEmailAddress, fathersEducationalQualification: $fathersEducationalQualification, fathersCompanyName: $fathersCompanyName, fathersBusinessAddress: $fathersBusinessAddress, mothersName: $mothersName, mothersAadhaarNumber: $mothersAadhaarNumber, mothersOccupation: $mothersOccupation, mothersAnnualIncome: $mothersAnnualIncome, mothersMobileNumber: $mothersMobileNumber, mothersEmailAddress: $mothersEmailAddress, mothersLanguagesKnown: $mothersLanguagesKnown, mothersCompanyName: $mothersCompanyName, mothersBusinessAddress: $mothersBusinessAddress, mothersEducationalQualification: $mothersEducationalQualification, mothersPermanentAddress: $mothersPermanentAddress, mothersPostHeld: $mothersPostHeld, mothersTelephoneOffice: $mothersTelephoneOffice)';
}


}

/// @nodoc
abstract mixin class _$ApplicantDataCopyWith<$Res> implements $ApplicantDataCopyWith<$Res> {
  factory _$ApplicantDataCopyWith(_ApplicantData value, $Res Function(_ApplicantData) _then) = __$ApplicantDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name1') String name, String school,@JsonKey(name: 'admission_sought_to') String admissionSoughtTo,@JsonKey(name: 'applicant_id') String applicantId,@JsonKey(name: 'academic_year') String academicYear,@JsonKey(name: 'date_of_birth') String dateOfBirth, String gender,@JsonKey(name: 'aadhar_number') String aadharNumber,@JsonKey(name: 'primary_contact_name') String primaryContactName,@JsonKey(name: 'primary_contact_relation') String primaryContactRelation,@JsonKey(name: 'primary_contact_mobile') String primaryContactMobile,@JsonKey(name: 'secondary_contact_name') String secondaryContactName,@JsonKey(name: 'secondary_contact_relation') String secondaryContactRelation,@JsonKey(name: 'mobile_number_secondary') String mobileNumberSecondary,@JsonKey(name: 'communication_address') String communicationAddress, String? religion, String? caste, String? category,@JsonKey(name: 'mother_tongue') String? motherTongue,@JsonKey(name: 'blood_group') String? bloodGroup,@JsonKey(name: 'school_transport_required') String? schoolTransportRequired,@JsonKey(name: 'guardians_name') String? guardiansName,@JsonKey(name: 'guardians_mobile_number', fromJson: _safeString) String? guardiansMobileNumber,@JsonKey(name: 'guardians_occupation') String? guardiansOccupation,@JsonKey(name: 'guardians_address') String? guardiansAddress,@JsonKey(name: 'guardians_email_address') String? guardiansEmailAddress,@JsonKey(name: 'guardians_office_number', fromJson: _safeString) String? guardiansOfficeNumber,@JsonKey(name: 'guardians_aadhaar_number', fromJson: _safeString) String? guardiansAadhaarNumber,@JsonKey(name: 'fathers_name') String? fathersName,@JsonKey(name: 'fathers_aadhaar_number', fromJson: _safeString) String? fathersAadhaarNumber,@JsonKey(name: 'fathers_occupation') String? fathersOccupation,@JsonKey(name: 'fathers_annual_income', fromJson: _safeString) String? fathersAnnualIncome,@JsonKey(name: 'fathers_mobile_number', fromJson: _safeString) String? fathersMobileNumber,@JsonKey(name: 'fathers_telephone_office', fromJson: _safeString) String? fathersTelephoneOffice,@JsonKey(name: 'fathers_post_held') String? fathersPostHeld,@JsonKey(name: 'fathers_permanent_address') String? fathersPermanentAddress,@JsonKey(name: 'fathers_languages_known') String? fathersLanguagesKnown,@JsonKey(name: 'fathers_email_address') String? fathersEmailAddress,@JsonKey(name: 'fathers_educational_qualification') String? fathersEducationalQualification,@JsonKey(name: 'fathers_company_name') String? fathersCompanyName,@JsonKey(name: 'fathers_business_address') String? fathersBusinessAddress,@JsonKey(name: 'mothers_name') String? mothersName,@JsonKey(name: 'mothers_aadhaar_number', fromJson: _safeString) String? mothersAadhaarNumber,@JsonKey(name: 'mothers_occupation') String? mothersOccupation,@JsonKey(name: 'mothers_annual_income', fromJson: _safeString) String? mothersAnnualIncome,@JsonKey(name: 'mothers_mobile_number', fromJson: _safeString) String? mothersMobileNumber,@JsonKey(name: 'mothers_email_address') String? mothersEmailAddress,@JsonKey(name: 'mothers_languages_known') String? mothersLanguagesKnown,@JsonKey(name: 'mothers_company_name') String? mothersCompanyName,@JsonKey(name: 'mothers_business_address') String? mothersBusinessAddress,@JsonKey(name: 'mothers_educational_qualification') String? mothersEducationalQualification,@JsonKey(name: 'mothers_permanent_address') String? mothersPermanentAddress,@JsonKey(name: 'mothers_post_held') String? mothersPostHeld,@JsonKey(name: 'mothers_telephone_office', fromJson: _safeString) String? mothersTelephoneOffice
});




}
/// @nodoc
class __$ApplicantDataCopyWithImpl<$Res>
    implements _$ApplicantDataCopyWith<$Res> {
  __$ApplicantDataCopyWithImpl(this._self, this._then);

  final _ApplicantData _self;
  final $Res Function(_ApplicantData) _then;

/// Create a copy of ApplicantData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? school = null,Object? admissionSoughtTo = null,Object? applicantId = null,Object? academicYear = null,Object? dateOfBirth = null,Object? gender = null,Object? aadharNumber = null,Object? primaryContactName = null,Object? primaryContactRelation = null,Object? primaryContactMobile = null,Object? secondaryContactName = null,Object? secondaryContactRelation = null,Object? mobileNumberSecondary = null,Object? communicationAddress = null,Object? religion = freezed,Object? caste = freezed,Object? category = freezed,Object? motherTongue = freezed,Object? bloodGroup = freezed,Object? schoolTransportRequired = freezed,Object? guardiansName = freezed,Object? guardiansMobileNumber = freezed,Object? guardiansOccupation = freezed,Object? guardiansAddress = freezed,Object? guardiansEmailAddress = freezed,Object? guardiansOfficeNumber = freezed,Object? guardiansAadhaarNumber = freezed,Object? fathersName = freezed,Object? fathersAadhaarNumber = freezed,Object? fathersOccupation = freezed,Object? fathersAnnualIncome = freezed,Object? fathersMobileNumber = freezed,Object? fathersTelephoneOffice = freezed,Object? fathersPostHeld = freezed,Object? fathersPermanentAddress = freezed,Object? fathersLanguagesKnown = freezed,Object? fathersEmailAddress = freezed,Object? fathersEducationalQualification = freezed,Object? fathersCompanyName = freezed,Object? fathersBusinessAddress = freezed,Object? mothersName = freezed,Object? mothersAadhaarNumber = freezed,Object? mothersOccupation = freezed,Object? mothersAnnualIncome = freezed,Object? mothersMobileNumber = freezed,Object? mothersEmailAddress = freezed,Object? mothersLanguagesKnown = freezed,Object? mothersCompanyName = freezed,Object? mothersBusinessAddress = freezed,Object? mothersEducationalQualification = freezed,Object? mothersPermanentAddress = freezed,Object? mothersPostHeld = freezed,Object? mothersTelephoneOffice = freezed,}) {
  return _then(_ApplicantData(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,school: null == school ? _self.school : school // ignore: cast_nullable_to_non_nullable
as String,admissionSoughtTo: null == admissionSoughtTo ? _self.admissionSoughtTo : admissionSoughtTo // ignore: cast_nullable_to_non_nullable
as String,applicantId: null == applicantId ? _self.applicantId : applicantId // ignore: cast_nullable_to_non_nullable
as String,academicYear: null == academicYear ? _self.academicYear : academicYear // ignore: cast_nullable_to_non_nullable
as String,dateOfBirth: null == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,aadharNumber: null == aadharNumber ? _self.aadharNumber : aadharNumber // ignore: cast_nullable_to_non_nullable
as String,primaryContactName: null == primaryContactName ? _self.primaryContactName : primaryContactName // ignore: cast_nullable_to_non_nullable
as String,primaryContactRelation: null == primaryContactRelation ? _self.primaryContactRelation : primaryContactRelation // ignore: cast_nullable_to_non_nullable
as String,primaryContactMobile: null == primaryContactMobile ? _self.primaryContactMobile : primaryContactMobile // ignore: cast_nullable_to_non_nullable
as String,secondaryContactName: null == secondaryContactName ? _self.secondaryContactName : secondaryContactName // ignore: cast_nullable_to_non_nullable
as String,secondaryContactRelation: null == secondaryContactRelation ? _self.secondaryContactRelation : secondaryContactRelation // ignore: cast_nullable_to_non_nullable
as String,mobileNumberSecondary: null == mobileNumberSecondary ? _self.mobileNumberSecondary : mobileNumberSecondary // ignore: cast_nullable_to_non_nullable
as String,communicationAddress: null == communicationAddress ? _self.communicationAddress : communicationAddress // ignore: cast_nullable_to_non_nullable
as String,religion: freezed == religion ? _self.religion : religion // ignore: cast_nullable_to_non_nullable
as String?,caste: freezed == caste ? _self.caste : caste // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,motherTongue: freezed == motherTongue ? _self.motherTongue : motherTongue // ignore: cast_nullable_to_non_nullable
as String?,bloodGroup: freezed == bloodGroup ? _self.bloodGroup : bloodGroup // ignore: cast_nullable_to_non_nullable
as String?,schoolTransportRequired: freezed == schoolTransportRequired ? _self.schoolTransportRequired : schoolTransportRequired // ignore: cast_nullable_to_non_nullable
as String?,guardiansName: freezed == guardiansName ? _self.guardiansName : guardiansName // ignore: cast_nullable_to_non_nullable
as String?,guardiansMobileNumber: freezed == guardiansMobileNumber ? _self.guardiansMobileNumber : guardiansMobileNumber // ignore: cast_nullable_to_non_nullable
as String?,guardiansOccupation: freezed == guardiansOccupation ? _self.guardiansOccupation : guardiansOccupation // ignore: cast_nullable_to_non_nullable
as String?,guardiansAddress: freezed == guardiansAddress ? _self.guardiansAddress : guardiansAddress // ignore: cast_nullable_to_non_nullable
as String?,guardiansEmailAddress: freezed == guardiansEmailAddress ? _self.guardiansEmailAddress : guardiansEmailAddress // ignore: cast_nullable_to_non_nullable
as String?,guardiansOfficeNumber: freezed == guardiansOfficeNumber ? _self.guardiansOfficeNumber : guardiansOfficeNumber // ignore: cast_nullable_to_non_nullable
as String?,guardiansAadhaarNumber: freezed == guardiansAadhaarNumber ? _self.guardiansAadhaarNumber : guardiansAadhaarNumber // ignore: cast_nullable_to_non_nullable
as String?,fathersName: freezed == fathersName ? _self.fathersName : fathersName // ignore: cast_nullable_to_non_nullable
as String?,fathersAadhaarNumber: freezed == fathersAadhaarNumber ? _self.fathersAadhaarNumber : fathersAadhaarNumber // ignore: cast_nullable_to_non_nullable
as String?,fathersOccupation: freezed == fathersOccupation ? _self.fathersOccupation : fathersOccupation // ignore: cast_nullable_to_non_nullable
as String?,fathersAnnualIncome: freezed == fathersAnnualIncome ? _self.fathersAnnualIncome : fathersAnnualIncome // ignore: cast_nullable_to_non_nullable
as String?,fathersMobileNumber: freezed == fathersMobileNumber ? _self.fathersMobileNumber : fathersMobileNumber // ignore: cast_nullable_to_non_nullable
as String?,fathersTelephoneOffice: freezed == fathersTelephoneOffice ? _self.fathersTelephoneOffice : fathersTelephoneOffice // ignore: cast_nullable_to_non_nullable
as String?,fathersPostHeld: freezed == fathersPostHeld ? _self.fathersPostHeld : fathersPostHeld // ignore: cast_nullable_to_non_nullable
as String?,fathersPermanentAddress: freezed == fathersPermanentAddress ? _self.fathersPermanentAddress : fathersPermanentAddress // ignore: cast_nullable_to_non_nullable
as String?,fathersLanguagesKnown: freezed == fathersLanguagesKnown ? _self.fathersLanguagesKnown : fathersLanguagesKnown // ignore: cast_nullable_to_non_nullable
as String?,fathersEmailAddress: freezed == fathersEmailAddress ? _self.fathersEmailAddress : fathersEmailAddress // ignore: cast_nullable_to_non_nullable
as String?,fathersEducationalQualification: freezed == fathersEducationalQualification ? _self.fathersEducationalQualification : fathersEducationalQualification // ignore: cast_nullable_to_non_nullable
as String?,fathersCompanyName: freezed == fathersCompanyName ? _self.fathersCompanyName : fathersCompanyName // ignore: cast_nullable_to_non_nullable
as String?,fathersBusinessAddress: freezed == fathersBusinessAddress ? _self.fathersBusinessAddress : fathersBusinessAddress // ignore: cast_nullable_to_non_nullable
as String?,mothersName: freezed == mothersName ? _self.mothersName : mothersName // ignore: cast_nullable_to_non_nullable
as String?,mothersAadhaarNumber: freezed == mothersAadhaarNumber ? _self.mothersAadhaarNumber : mothersAadhaarNumber // ignore: cast_nullable_to_non_nullable
as String?,mothersOccupation: freezed == mothersOccupation ? _self.mothersOccupation : mothersOccupation // ignore: cast_nullable_to_non_nullable
as String?,mothersAnnualIncome: freezed == mothersAnnualIncome ? _self.mothersAnnualIncome : mothersAnnualIncome // ignore: cast_nullable_to_non_nullable
as String?,mothersMobileNumber: freezed == mothersMobileNumber ? _self.mothersMobileNumber : mothersMobileNumber // ignore: cast_nullable_to_non_nullable
as String?,mothersEmailAddress: freezed == mothersEmailAddress ? _self.mothersEmailAddress : mothersEmailAddress // ignore: cast_nullable_to_non_nullable
as String?,mothersLanguagesKnown: freezed == mothersLanguagesKnown ? _self.mothersLanguagesKnown : mothersLanguagesKnown // ignore: cast_nullable_to_non_nullable
as String?,mothersCompanyName: freezed == mothersCompanyName ? _self.mothersCompanyName : mothersCompanyName // ignore: cast_nullable_to_non_nullable
as String?,mothersBusinessAddress: freezed == mothersBusinessAddress ? _self.mothersBusinessAddress : mothersBusinessAddress // ignore: cast_nullable_to_non_nullable
as String?,mothersEducationalQualification: freezed == mothersEducationalQualification ? _self.mothersEducationalQualification : mothersEducationalQualification // ignore: cast_nullable_to_non_nullable
as String?,mothersPermanentAddress: freezed == mothersPermanentAddress ? _self.mothersPermanentAddress : mothersPermanentAddress // ignore: cast_nullable_to_non_nullable
as String?,mothersPostHeld: freezed == mothersPostHeld ? _self.mothersPostHeld : mothersPostHeld // ignore: cast_nullable_to_non_nullable
as String?,mothersTelephoneOffice: freezed == mothersTelephoneOffice ? _self.mothersTelephoneOffice : mothersTelephoneOffice // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FeeData {

 String get name; String get status; String get title;@JsonKey(name: 'fee_mode') String get feeMode;@JsonKey(name: 'net_amount', fromJson: _netAmountFromJson) double get netAmount;
/// Create a copy of FeeData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeeDataCopyWith<FeeData> get copyWith => _$FeeDataCopyWithImpl<FeeData>(this as FeeData, _$identity);

  /// Serializes this FeeData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeeData&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.title, title) || other.title == title)&&(identical(other.feeMode, feeMode) || other.feeMode == feeMode)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,status,title,feeMode,netAmount);

@override
String toString() {
  return 'FeeData(name: $name, status: $status, title: $title, feeMode: $feeMode, netAmount: $netAmount)';
}


}

/// @nodoc
abstract mixin class $FeeDataCopyWith<$Res>  {
  factory $FeeDataCopyWith(FeeData value, $Res Function(FeeData) _then) = _$FeeDataCopyWithImpl;
@useResult
$Res call({
 String name, String status, String title,@JsonKey(name: 'fee_mode') String feeMode,@JsonKey(name: 'net_amount', fromJson: _netAmountFromJson) double netAmount
});




}
/// @nodoc
class _$FeeDataCopyWithImpl<$Res>
    implements $FeeDataCopyWith<$Res> {
  _$FeeDataCopyWithImpl(this._self, this._then);

  final FeeData _self;
  final $Res Function(FeeData) _then;

/// Create a copy of FeeData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? status = null,Object? title = null,Object? feeMode = null,Object? netAmount = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,feeMode: null == feeMode ? _self.feeMode : feeMode // ignore: cast_nullable_to_non_nullable
as String,netAmount: null == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [FeeData].
extension FeeDataPatterns on FeeData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeeData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeeData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeeData value)  $default,){
final _that = this;
switch (_that) {
case _FeeData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeeData value)?  $default,){
final _that = this;
switch (_that) {
case _FeeData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String status,  String title, @JsonKey(name: 'fee_mode')  String feeMode, @JsonKey(name: 'net_amount', fromJson: _netAmountFromJson)  double netAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeeData() when $default != null:
return $default(_that.name,_that.status,_that.title,_that.feeMode,_that.netAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String status,  String title, @JsonKey(name: 'fee_mode')  String feeMode, @JsonKey(name: 'net_amount', fromJson: _netAmountFromJson)  double netAmount)  $default,) {final _that = this;
switch (_that) {
case _FeeData():
return $default(_that.name,_that.status,_that.title,_that.feeMode,_that.netAmount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String status,  String title, @JsonKey(name: 'fee_mode')  String feeMode, @JsonKey(name: 'net_amount', fromJson: _netAmountFromJson)  double netAmount)?  $default,) {final _that = this;
switch (_that) {
case _FeeData() when $default != null:
return $default(_that.name,_that.status,_that.title,_that.feeMode,_that.netAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeeData implements FeeData {
  const _FeeData({required this.name, required this.status, required this.title, @JsonKey(name: 'fee_mode') required this.feeMode, @JsonKey(name: 'net_amount', fromJson: _netAmountFromJson) required this.netAmount});
  factory _FeeData.fromJson(Map<String, dynamic> json) => _$FeeDataFromJson(json);

@override final  String name;
@override final  String status;
@override final  String title;
@override@JsonKey(name: 'fee_mode') final  String feeMode;
@override@JsonKey(name: 'net_amount', fromJson: _netAmountFromJson) final  double netAmount;

/// Create a copy of FeeData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeeDataCopyWith<_FeeData> get copyWith => __$FeeDataCopyWithImpl<_FeeData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeeDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeeData&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.title, title) || other.title == title)&&(identical(other.feeMode, feeMode) || other.feeMode == feeMode)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,status,title,feeMode,netAmount);

@override
String toString() {
  return 'FeeData(name: $name, status: $status, title: $title, feeMode: $feeMode, netAmount: $netAmount)';
}


}

/// @nodoc
abstract mixin class _$FeeDataCopyWith<$Res> implements $FeeDataCopyWith<$Res> {
  factory _$FeeDataCopyWith(_FeeData value, $Res Function(_FeeData) _then) = __$FeeDataCopyWithImpl;
@override @useResult
$Res call({
 String name, String status, String title,@JsonKey(name: 'fee_mode') String feeMode,@JsonKey(name: 'net_amount', fromJson: _netAmountFromJson) double netAmount
});




}
/// @nodoc
class __$FeeDataCopyWithImpl<$Res>
    implements _$FeeDataCopyWith<$Res> {
  __$FeeDataCopyWithImpl(this._self, this._then);

  final _FeeData _self;
  final $Res Function(_FeeData) _then;

/// Create a copy of FeeData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? status = null,Object? title = null,Object? feeMode = null,Object? netAmount = null,}) {
  return _then(_FeeData(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,feeMode: null == feeMode ? _self.feeMode : feeMode // ignore: cast_nullable_to_non_nullable
as String,netAmount: null == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
