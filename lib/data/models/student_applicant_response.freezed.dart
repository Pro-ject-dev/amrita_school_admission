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

 bool get status; String get user;@JsonKey(name: 'applicant_data') ApplicantData get applicantData;
/// Create a copy of StudentApplicantMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentApplicantMessageCopyWith<StudentApplicantMessage> get copyWith => _$StudentApplicantMessageCopyWithImpl<StudentApplicantMessage>(this as StudentApplicantMessage, _$identity);

  /// Serializes this StudentApplicantMessage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentApplicantMessage&&(identical(other.status, status) || other.status == status)&&(identical(other.user, user) || other.user == user)&&(identical(other.applicantData, applicantData) || other.applicantData == applicantData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,user,applicantData);

@override
String toString() {
  return 'StudentApplicantMessage(status: $status, user: $user, applicantData: $applicantData)';
}


}

/// @nodoc
abstract mixin class $StudentApplicantMessageCopyWith<$Res>  {
  factory $StudentApplicantMessageCopyWith(StudentApplicantMessage value, $Res Function(StudentApplicantMessage) _then) = _$StudentApplicantMessageCopyWithImpl;
@useResult
$Res call({
 bool status, String user,@JsonKey(name: 'applicant_data') ApplicantData applicantData
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
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? user = null,Object? applicantData = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String,applicantData: null == applicantData ? _self.applicantData : applicantData // ignore: cast_nullable_to_non_nullable
as ApplicantData,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool status,  String user, @JsonKey(name: 'applicant_data')  ApplicantData applicantData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentApplicantMessage() when $default != null:
return $default(_that.status,_that.user,_that.applicantData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool status,  String user, @JsonKey(name: 'applicant_data')  ApplicantData applicantData)  $default,) {final _that = this;
switch (_that) {
case _StudentApplicantMessage():
return $default(_that.status,_that.user,_that.applicantData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool status,  String user, @JsonKey(name: 'applicant_data')  ApplicantData applicantData)?  $default,) {final _that = this;
switch (_that) {
case _StudentApplicantMessage() when $default != null:
return $default(_that.status,_that.user,_that.applicantData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StudentApplicantMessage implements StudentApplicantMessage {
  const _StudentApplicantMessage({required this.status, required this.user, @JsonKey(name: 'applicant_data') required this.applicantData});
  factory _StudentApplicantMessage.fromJson(Map<String, dynamic> json) => _$StudentApplicantMessageFromJson(json);

@override final  bool status;
@override final  String user;
@override@JsonKey(name: 'applicant_data') final  ApplicantData applicantData;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentApplicantMessage&&(identical(other.status, status) || other.status == status)&&(identical(other.user, user) || other.user == user)&&(identical(other.applicantData, applicantData) || other.applicantData == applicantData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,user,applicantData);

@override
String toString() {
  return 'StudentApplicantMessage(status: $status, user: $user, applicantData: $applicantData)';
}


}

/// @nodoc
abstract mixin class _$StudentApplicantMessageCopyWith<$Res> implements $StudentApplicantMessageCopyWith<$Res> {
  factory _$StudentApplicantMessageCopyWith(_StudentApplicantMessage value, $Res Function(_StudentApplicantMessage) _then) = __$StudentApplicantMessageCopyWithImpl;
@override @useResult
$Res call({
 bool status, String user,@JsonKey(name: 'applicant_data') ApplicantData applicantData
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
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? user = null,Object? applicantData = null,}) {
  return _then(_StudentApplicantMessage(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String,applicantData: null == applicantData ? _self.applicantData : applicantData // ignore: cast_nullable_to_non_nullable
as ApplicantData,
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

@JsonKey(name: 'name1') String get name; String get school;@JsonKey(name: 'admission_sought_to') String get admissionSoughtTo;@JsonKey(name: 'applicant_id') String get applicantId;@JsonKey(name: 'academic_year') String get academicYear;@JsonKey(name: 'date_of_birth') String get dateOfBirth; String get gender;@JsonKey(name: 'aadhar_number') String get aadharNumber;@JsonKey(name: 'primary_contact_name') String get primaryContactName;@JsonKey(name: 'primary_contact_relation') String get primaryContactRelation;@JsonKey(name: 'primary_contact_mobile') String get primaryContactMobile;@JsonKey(name: 'secondary_contact_name') String get secondaryContactName;@JsonKey(name: 'secondary_contact_relation') String get secondaryContactRelation;@JsonKey(name: 'mobile_number_secondary') String get mobileNumberSecondary;@JsonKey(name: 'communication_address') String get communicationAddress; String? get religion; String? get caste; String? get category;@JsonKey(name: 'mother_tongue') String? get motherTongue;@JsonKey(name: 'blood_group') String? get bloodGroup;
/// Create a copy of ApplicantData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApplicantDataCopyWith<ApplicantData> get copyWith => _$ApplicantDataCopyWithImpl<ApplicantData>(this as ApplicantData, _$identity);

  /// Serializes this ApplicantData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApplicantData&&(identical(other.name, name) || other.name == name)&&(identical(other.school, school) || other.school == school)&&(identical(other.admissionSoughtTo, admissionSoughtTo) || other.admissionSoughtTo == admissionSoughtTo)&&(identical(other.applicantId, applicantId) || other.applicantId == applicantId)&&(identical(other.academicYear, academicYear) || other.academicYear == academicYear)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.aadharNumber, aadharNumber) || other.aadharNumber == aadharNumber)&&(identical(other.primaryContactName, primaryContactName) || other.primaryContactName == primaryContactName)&&(identical(other.primaryContactRelation, primaryContactRelation) || other.primaryContactRelation == primaryContactRelation)&&(identical(other.primaryContactMobile, primaryContactMobile) || other.primaryContactMobile == primaryContactMobile)&&(identical(other.secondaryContactName, secondaryContactName) || other.secondaryContactName == secondaryContactName)&&(identical(other.secondaryContactRelation, secondaryContactRelation) || other.secondaryContactRelation == secondaryContactRelation)&&(identical(other.mobileNumberSecondary, mobileNumberSecondary) || other.mobileNumberSecondary == mobileNumberSecondary)&&(identical(other.communicationAddress, communicationAddress) || other.communicationAddress == communicationAddress)&&(identical(other.religion, religion) || other.religion == religion)&&(identical(other.caste, caste) || other.caste == caste)&&(identical(other.category, category) || other.category == category)&&(identical(other.motherTongue, motherTongue) || other.motherTongue == motherTongue)&&(identical(other.bloodGroup, bloodGroup) || other.bloodGroup == bloodGroup));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,name,school,admissionSoughtTo,applicantId,academicYear,dateOfBirth,gender,aadharNumber,primaryContactName,primaryContactRelation,primaryContactMobile,secondaryContactName,secondaryContactRelation,mobileNumberSecondary,communicationAddress,religion,caste,category,motherTongue,bloodGroup]);

@override
String toString() {
  return 'ApplicantData(name: $name, school: $school, admissionSoughtTo: $admissionSoughtTo, applicantId: $applicantId, academicYear: $academicYear, dateOfBirth: $dateOfBirth, gender: $gender, aadharNumber: $aadharNumber, primaryContactName: $primaryContactName, primaryContactRelation: $primaryContactRelation, primaryContactMobile: $primaryContactMobile, secondaryContactName: $secondaryContactName, secondaryContactRelation: $secondaryContactRelation, mobileNumberSecondary: $mobileNumberSecondary, communicationAddress: $communicationAddress, religion: $religion, caste: $caste, category: $category, motherTongue: $motherTongue, bloodGroup: $bloodGroup)';
}


}

/// @nodoc
abstract mixin class $ApplicantDataCopyWith<$Res>  {
  factory $ApplicantDataCopyWith(ApplicantData value, $Res Function(ApplicantData) _then) = _$ApplicantDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name1') String name, String school,@JsonKey(name: 'admission_sought_to') String admissionSoughtTo,@JsonKey(name: 'applicant_id') String applicantId,@JsonKey(name: 'academic_year') String academicYear,@JsonKey(name: 'date_of_birth') String dateOfBirth, String gender,@JsonKey(name: 'aadhar_number') String aadharNumber,@JsonKey(name: 'primary_contact_name') String primaryContactName,@JsonKey(name: 'primary_contact_relation') String primaryContactRelation,@JsonKey(name: 'primary_contact_mobile') String primaryContactMobile,@JsonKey(name: 'secondary_contact_name') String secondaryContactName,@JsonKey(name: 'secondary_contact_relation') String secondaryContactRelation,@JsonKey(name: 'mobile_number_secondary') String mobileNumberSecondary,@JsonKey(name: 'communication_address') String communicationAddress, String? religion, String? caste, String? category,@JsonKey(name: 'mother_tongue') String? motherTongue,@JsonKey(name: 'blood_group') String? bloodGroup
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
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? school = null,Object? admissionSoughtTo = null,Object? applicantId = null,Object? academicYear = null,Object? dateOfBirth = null,Object? gender = null,Object? aadharNumber = null,Object? primaryContactName = null,Object? primaryContactRelation = null,Object? primaryContactMobile = null,Object? secondaryContactName = null,Object? secondaryContactRelation = null,Object? mobileNumberSecondary = null,Object? communicationAddress = null,Object? religion = freezed,Object? caste = freezed,Object? category = freezed,Object? motherTongue = freezed,Object? bloodGroup = freezed,}) {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name1')  String name,  String school, @JsonKey(name: 'admission_sought_to')  String admissionSoughtTo, @JsonKey(name: 'applicant_id')  String applicantId, @JsonKey(name: 'academic_year')  String academicYear, @JsonKey(name: 'date_of_birth')  String dateOfBirth,  String gender, @JsonKey(name: 'aadhar_number')  String aadharNumber, @JsonKey(name: 'primary_contact_name')  String primaryContactName, @JsonKey(name: 'primary_contact_relation')  String primaryContactRelation, @JsonKey(name: 'primary_contact_mobile')  String primaryContactMobile, @JsonKey(name: 'secondary_contact_name')  String secondaryContactName, @JsonKey(name: 'secondary_contact_relation')  String secondaryContactRelation, @JsonKey(name: 'mobile_number_secondary')  String mobileNumberSecondary, @JsonKey(name: 'communication_address')  String communicationAddress,  String? religion,  String? caste,  String? category, @JsonKey(name: 'mother_tongue')  String? motherTongue, @JsonKey(name: 'blood_group')  String? bloodGroup)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApplicantData() when $default != null:
return $default(_that.name,_that.school,_that.admissionSoughtTo,_that.applicantId,_that.academicYear,_that.dateOfBirth,_that.gender,_that.aadharNumber,_that.primaryContactName,_that.primaryContactRelation,_that.primaryContactMobile,_that.secondaryContactName,_that.secondaryContactRelation,_that.mobileNumberSecondary,_that.communicationAddress,_that.religion,_that.caste,_that.category,_that.motherTongue,_that.bloodGroup);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'name1')  String name,  String school, @JsonKey(name: 'admission_sought_to')  String admissionSoughtTo, @JsonKey(name: 'applicant_id')  String applicantId, @JsonKey(name: 'academic_year')  String academicYear, @JsonKey(name: 'date_of_birth')  String dateOfBirth,  String gender, @JsonKey(name: 'aadhar_number')  String aadharNumber, @JsonKey(name: 'primary_contact_name')  String primaryContactName, @JsonKey(name: 'primary_contact_relation')  String primaryContactRelation, @JsonKey(name: 'primary_contact_mobile')  String primaryContactMobile, @JsonKey(name: 'secondary_contact_name')  String secondaryContactName, @JsonKey(name: 'secondary_contact_relation')  String secondaryContactRelation, @JsonKey(name: 'mobile_number_secondary')  String mobileNumberSecondary, @JsonKey(name: 'communication_address')  String communicationAddress,  String? religion,  String? caste,  String? category, @JsonKey(name: 'mother_tongue')  String? motherTongue, @JsonKey(name: 'blood_group')  String? bloodGroup)  $default,) {final _that = this;
switch (_that) {
case _ApplicantData():
return $default(_that.name,_that.school,_that.admissionSoughtTo,_that.applicantId,_that.academicYear,_that.dateOfBirth,_that.gender,_that.aadharNumber,_that.primaryContactName,_that.primaryContactRelation,_that.primaryContactMobile,_that.secondaryContactName,_that.secondaryContactRelation,_that.mobileNumberSecondary,_that.communicationAddress,_that.religion,_that.caste,_that.category,_that.motherTongue,_that.bloodGroup);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'name1')  String name,  String school, @JsonKey(name: 'admission_sought_to')  String admissionSoughtTo, @JsonKey(name: 'applicant_id')  String applicantId, @JsonKey(name: 'academic_year')  String academicYear, @JsonKey(name: 'date_of_birth')  String dateOfBirth,  String gender, @JsonKey(name: 'aadhar_number')  String aadharNumber, @JsonKey(name: 'primary_contact_name')  String primaryContactName, @JsonKey(name: 'primary_contact_relation')  String primaryContactRelation, @JsonKey(name: 'primary_contact_mobile')  String primaryContactMobile, @JsonKey(name: 'secondary_contact_name')  String secondaryContactName, @JsonKey(name: 'secondary_contact_relation')  String secondaryContactRelation, @JsonKey(name: 'mobile_number_secondary')  String mobileNumberSecondary, @JsonKey(name: 'communication_address')  String communicationAddress,  String? religion,  String? caste,  String? category, @JsonKey(name: 'mother_tongue')  String? motherTongue, @JsonKey(name: 'blood_group')  String? bloodGroup)?  $default,) {final _that = this;
switch (_that) {
case _ApplicantData() when $default != null:
return $default(_that.name,_that.school,_that.admissionSoughtTo,_that.applicantId,_that.academicYear,_that.dateOfBirth,_that.gender,_that.aadharNumber,_that.primaryContactName,_that.primaryContactRelation,_that.primaryContactMobile,_that.secondaryContactName,_that.secondaryContactRelation,_that.mobileNumberSecondary,_that.communicationAddress,_that.religion,_that.caste,_that.category,_that.motherTongue,_that.bloodGroup);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ApplicantData implements ApplicantData {
  const _ApplicantData({@JsonKey(name: 'name1') required this.name, required this.school, @JsonKey(name: 'admission_sought_to') required this.admissionSoughtTo, @JsonKey(name: 'applicant_id') required this.applicantId, @JsonKey(name: 'academic_year') required this.academicYear, @JsonKey(name: 'date_of_birth') required this.dateOfBirth, required this.gender, @JsonKey(name: 'aadhar_number') required this.aadharNumber, @JsonKey(name: 'primary_contact_name') required this.primaryContactName, @JsonKey(name: 'primary_contact_relation') required this.primaryContactRelation, @JsonKey(name: 'primary_contact_mobile') required this.primaryContactMobile, @JsonKey(name: 'secondary_contact_name') required this.secondaryContactName, @JsonKey(name: 'secondary_contact_relation') required this.secondaryContactRelation, @JsonKey(name: 'mobile_number_secondary') required this.mobileNumberSecondary, @JsonKey(name: 'communication_address') required this.communicationAddress, this.religion, this.caste, this.category, @JsonKey(name: 'mother_tongue') this.motherTongue, @JsonKey(name: 'blood_group') this.bloodGroup});
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApplicantData&&(identical(other.name, name) || other.name == name)&&(identical(other.school, school) || other.school == school)&&(identical(other.admissionSoughtTo, admissionSoughtTo) || other.admissionSoughtTo == admissionSoughtTo)&&(identical(other.applicantId, applicantId) || other.applicantId == applicantId)&&(identical(other.academicYear, academicYear) || other.academicYear == academicYear)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.aadharNumber, aadharNumber) || other.aadharNumber == aadharNumber)&&(identical(other.primaryContactName, primaryContactName) || other.primaryContactName == primaryContactName)&&(identical(other.primaryContactRelation, primaryContactRelation) || other.primaryContactRelation == primaryContactRelation)&&(identical(other.primaryContactMobile, primaryContactMobile) || other.primaryContactMobile == primaryContactMobile)&&(identical(other.secondaryContactName, secondaryContactName) || other.secondaryContactName == secondaryContactName)&&(identical(other.secondaryContactRelation, secondaryContactRelation) || other.secondaryContactRelation == secondaryContactRelation)&&(identical(other.mobileNumberSecondary, mobileNumberSecondary) || other.mobileNumberSecondary == mobileNumberSecondary)&&(identical(other.communicationAddress, communicationAddress) || other.communicationAddress == communicationAddress)&&(identical(other.religion, religion) || other.religion == religion)&&(identical(other.caste, caste) || other.caste == caste)&&(identical(other.category, category) || other.category == category)&&(identical(other.motherTongue, motherTongue) || other.motherTongue == motherTongue)&&(identical(other.bloodGroup, bloodGroup) || other.bloodGroup == bloodGroup));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,name,school,admissionSoughtTo,applicantId,academicYear,dateOfBirth,gender,aadharNumber,primaryContactName,primaryContactRelation,primaryContactMobile,secondaryContactName,secondaryContactRelation,mobileNumberSecondary,communicationAddress,religion,caste,category,motherTongue,bloodGroup]);

@override
String toString() {
  return 'ApplicantData(name: $name, school: $school, admissionSoughtTo: $admissionSoughtTo, applicantId: $applicantId, academicYear: $academicYear, dateOfBirth: $dateOfBirth, gender: $gender, aadharNumber: $aadharNumber, primaryContactName: $primaryContactName, primaryContactRelation: $primaryContactRelation, primaryContactMobile: $primaryContactMobile, secondaryContactName: $secondaryContactName, secondaryContactRelation: $secondaryContactRelation, mobileNumberSecondary: $mobileNumberSecondary, communicationAddress: $communicationAddress, religion: $religion, caste: $caste, category: $category, motherTongue: $motherTongue, bloodGroup: $bloodGroup)';
}


}

/// @nodoc
abstract mixin class _$ApplicantDataCopyWith<$Res> implements $ApplicantDataCopyWith<$Res> {
  factory _$ApplicantDataCopyWith(_ApplicantData value, $Res Function(_ApplicantData) _then) = __$ApplicantDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name1') String name, String school,@JsonKey(name: 'admission_sought_to') String admissionSoughtTo,@JsonKey(name: 'applicant_id') String applicantId,@JsonKey(name: 'academic_year') String academicYear,@JsonKey(name: 'date_of_birth') String dateOfBirth, String gender,@JsonKey(name: 'aadhar_number') String aadharNumber,@JsonKey(name: 'primary_contact_name') String primaryContactName,@JsonKey(name: 'primary_contact_relation') String primaryContactRelation,@JsonKey(name: 'primary_contact_mobile') String primaryContactMobile,@JsonKey(name: 'secondary_contact_name') String secondaryContactName,@JsonKey(name: 'secondary_contact_relation') String secondaryContactRelation,@JsonKey(name: 'mobile_number_secondary') String mobileNumberSecondary,@JsonKey(name: 'communication_address') String communicationAddress, String? religion, String? caste, String? category,@JsonKey(name: 'mother_tongue') String? motherTongue,@JsonKey(name: 'blood_group') String? bloodGroup
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
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? school = null,Object? admissionSoughtTo = null,Object? applicantId = null,Object? academicYear = null,Object? dateOfBirth = null,Object? gender = null,Object? aadharNumber = null,Object? primaryContactName = null,Object? primaryContactRelation = null,Object? primaryContactMobile = null,Object? secondaryContactName = null,Object? secondaryContactRelation = null,Object? mobileNumberSecondary = null,Object? communicationAddress = null,Object? religion = freezed,Object? caste = freezed,Object? category = freezed,Object? motherTongue = freezed,Object? bloodGroup = freezed,}) {
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
as String?,
  ));
}


}

// dart format on
