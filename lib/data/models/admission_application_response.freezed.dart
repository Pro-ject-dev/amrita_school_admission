// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admission_application_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdmissionApplicationResponse {

@JsonKey(name: 'message') ApplicationResponseDetails get details;
/// Create a copy of AdmissionApplicationResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdmissionApplicationResponseCopyWith<AdmissionApplicationResponse> get copyWith => _$AdmissionApplicationResponseCopyWithImpl<AdmissionApplicationResponse>(this as AdmissionApplicationResponse, _$identity);

  /// Serializes this AdmissionApplicationResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdmissionApplicationResponse&&(identical(other.details, details) || other.details == details));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,details);

@override
String toString() {
  return 'AdmissionApplicationResponse(details: $details)';
}


}

/// @nodoc
abstract mixin class $AdmissionApplicationResponseCopyWith<$Res>  {
  factory $AdmissionApplicationResponseCopyWith(AdmissionApplicationResponse value, $Res Function(AdmissionApplicationResponse) _then) = _$AdmissionApplicationResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'message') ApplicationResponseDetails details
});


$ApplicationResponseDetailsCopyWith<$Res> get details;

}
/// @nodoc
class _$AdmissionApplicationResponseCopyWithImpl<$Res>
    implements $AdmissionApplicationResponseCopyWith<$Res> {
  _$AdmissionApplicationResponseCopyWithImpl(this._self, this._then);

  final AdmissionApplicationResponse _self;
  final $Res Function(AdmissionApplicationResponse) _then;

/// Create a copy of AdmissionApplicationResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? details = null,}) {
  return _then(_self.copyWith(
details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as ApplicationResponseDetails,
  ));
}
/// Create a copy of AdmissionApplicationResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApplicationResponseDetailsCopyWith<$Res> get details {
  
  return $ApplicationResponseDetailsCopyWith<$Res>(_self.details, (value) {
    return _then(_self.copyWith(details: value));
  });
}
}


/// Adds pattern-matching-related methods to [AdmissionApplicationResponse].
extension AdmissionApplicationResponsePatterns on AdmissionApplicationResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdmissionApplicationResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdmissionApplicationResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdmissionApplicationResponse value)  $default,){
final _that = this;
switch (_that) {
case _AdmissionApplicationResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdmissionApplicationResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AdmissionApplicationResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'message')  ApplicationResponseDetails details)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdmissionApplicationResponse() when $default != null:
return $default(_that.details);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'message')  ApplicationResponseDetails details)  $default,) {final _that = this;
switch (_that) {
case _AdmissionApplicationResponse():
return $default(_that.details);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'message')  ApplicationResponseDetails details)?  $default,) {final _that = this;
switch (_that) {
case _AdmissionApplicationResponse() when $default != null:
return $default(_that.details);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdmissionApplicationResponse implements AdmissionApplicationResponse {
  const _AdmissionApplicationResponse({@JsonKey(name: 'message') required this.details});
  factory _AdmissionApplicationResponse.fromJson(Map<String, dynamic> json) => _$AdmissionApplicationResponseFromJson(json);

@override@JsonKey(name: 'message') final  ApplicationResponseDetails details;

/// Create a copy of AdmissionApplicationResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdmissionApplicationResponseCopyWith<_AdmissionApplicationResponse> get copyWith => __$AdmissionApplicationResponseCopyWithImpl<_AdmissionApplicationResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdmissionApplicationResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdmissionApplicationResponse&&(identical(other.details, details) || other.details == details));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,details);

@override
String toString() {
  return 'AdmissionApplicationResponse(details: $details)';
}


}

/// @nodoc
abstract mixin class _$AdmissionApplicationResponseCopyWith<$Res> implements $AdmissionApplicationResponseCopyWith<$Res> {
  factory _$AdmissionApplicationResponseCopyWith(_AdmissionApplicationResponse value, $Res Function(_AdmissionApplicationResponse) _then) = __$AdmissionApplicationResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'message') ApplicationResponseDetails details
});


@override $ApplicationResponseDetailsCopyWith<$Res> get details;

}
/// @nodoc
class __$AdmissionApplicationResponseCopyWithImpl<$Res>
    implements _$AdmissionApplicationResponseCopyWith<$Res> {
  __$AdmissionApplicationResponseCopyWithImpl(this._self, this._then);

  final _AdmissionApplicationResponse _self;
  final $Res Function(_AdmissionApplicationResponse) _then;

/// Create a copy of AdmissionApplicationResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? details = null,}) {
  return _then(_AdmissionApplicationResponse(
details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as ApplicationResponseDetails,
  ));
}

/// Create a copy of AdmissionApplicationResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApplicationResponseDetailsCopyWith<$Res> get details {
  
  return $ApplicationResponseDetailsCopyWith<$Res>(_self.details, (value) {
    return _then(_self.copyWith(details: value));
  });
}
}


/// @nodoc
mixin _$ApplicationResponseDetails {

 String get status; String get message;@JsonKey(name: 'applicant_id') String get applicantId;@JsonKey(name: 'student_name') String get studentName;@JsonKey(name: 'admission_sought_to') String get admissionSoughtTo;@JsonKey(name: 'date_of_birth') String get dateOfBirth;@JsonKey(name: 'primary_contact_name') String get primaryContactName;@JsonKey(name: 'primary_contact_mobile') String get primaryContactMobile; String get school;
/// Create a copy of ApplicationResponseDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApplicationResponseDetailsCopyWith<ApplicationResponseDetails> get copyWith => _$ApplicationResponseDetailsCopyWithImpl<ApplicationResponseDetails>(this as ApplicationResponseDetails, _$identity);

  /// Serializes this ApplicationResponseDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApplicationResponseDetails&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.applicantId, applicantId) || other.applicantId == applicantId)&&(identical(other.studentName, studentName) || other.studentName == studentName)&&(identical(other.admissionSoughtTo, admissionSoughtTo) || other.admissionSoughtTo == admissionSoughtTo)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.primaryContactName, primaryContactName) || other.primaryContactName == primaryContactName)&&(identical(other.primaryContactMobile, primaryContactMobile) || other.primaryContactMobile == primaryContactMobile)&&(identical(other.school, school) || other.school == school));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,applicantId,studentName,admissionSoughtTo,dateOfBirth,primaryContactName,primaryContactMobile,school);

@override
String toString() {
  return 'ApplicationResponseDetails(status: $status, message: $message, applicantId: $applicantId, studentName: $studentName, admissionSoughtTo: $admissionSoughtTo, dateOfBirth: $dateOfBirth, primaryContactName: $primaryContactName, primaryContactMobile: $primaryContactMobile, school: $school)';
}


}

/// @nodoc
abstract mixin class $ApplicationResponseDetailsCopyWith<$Res>  {
  factory $ApplicationResponseDetailsCopyWith(ApplicationResponseDetails value, $Res Function(ApplicationResponseDetails) _then) = _$ApplicationResponseDetailsCopyWithImpl;
@useResult
$Res call({
 String status, String message,@JsonKey(name: 'applicant_id') String applicantId,@JsonKey(name: 'student_name') String studentName,@JsonKey(name: 'admission_sought_to') String admissionSoughtTo,@JsonKey(name: 'date_of_birth') String dateOfBirth,@JsonKey(name: 'primary_contact_name') String primaryContactName,@JsonKey(name: 'primary_contact_mobile') String primaryContactMobile, String school
});




}
/// @nodoc
class _$ApplicationResponseDetailsCopyWithImpl<$Res>
    implements $ApplicationResponseDetailsCopyWith<$Res> {
  _$ApplicationResponseDetailsCopyWithImpl(this._self, this._then);

  final ApplicationResponseDetails _self;
  final $Res Function(ApplicationResponseDetails) _then;

/// Create a copy of ApplicationResponseDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = null,Object? applicantId = null,Object? studentName = null,Object? admissionSoughtTo = null,Object? dateOfBirth = null,Object? primaryContactName = null,Object? primaryContactMobile = null,Object? school = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,applicantId: null == applicantId ? _self.applicantId : applicantId // ignore: cast_nullable_to_non_nullable
as String,studentName: null == studentName ? _self.studentName : studentName // ignore: cast_nullable_to_non_nullable
as String,admissionSoughtTo: null == admissionSoughtTo ? _self.admissionSoughtTo : admissionSoughtTo // ignore: cast_nullable_to_non_nullable
as String,dateOfBirth: null == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String,primaryContactName: null == primaryContactName ? _self.primaryContactName : primaryContactName // ignore: cast_nullable_to_non_nullable
as String,primaryContactMobile: null == primaryContactMobile ? _self.primaryContactMobile : primaryContactMobile // ignore: cast_nullable_to_non_nullable
as String,school: null == school ? _self.school : school // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ApplicationResponseDetails].
extension ApplicationResponseDetailsPatterns on ApplicationResponseDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApplicationResponseDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApplicationResponseDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApplicationResponseDetails value)  $default,){
final _that = this;
switch (_that) {
case _ApplicationResponseDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApplicationResponseDetails value)?  $default,){
final _that = this;
switch (_that) {
case _ApplicationResponseDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  String message, @JsonKey(name: 'applicant_id')  String applicantId, @JsonKey(name: 'student_name')  String studentName, @JsonKey(name: 'admission_sought_to')  String admissionSoughtTo, @JsonKey(name: 'date_of_birth')  String dateOfBirth, @JsonKey(name: 'primary_contact_name')  String primaryContactName, @JsonKey(name: 'primary_contact_mobile')  String primaryContactMobile,  String school)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApplicationResponseDetails() when $default != null:
return $default(_that.status,_that.message,_that.applicantId,_that.studentName,_that.admissionSoughtTo,_that.dateOfBirth,_that.primaryContactName,_that.primaryContactMobile,_that.school);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  String message, @JsonKey(name: 'applicant_id')  String applicantId, @JsonKey(name: 'student_name')  String studentName, @JsonKey(name: 'admission_sought_to')  String admissionSoughtTo, @JsonKey(name: 'date_of_birth')  String dateOfBirth, @JsonKey(name: 'primary_contact_name')  String primaryContactName, @JsonKey(name: 'primary_contact_mobile')  String primaryContactMobile,  String school)  $default,) {final _that = this;
switch (_that) {
case _ApplicationResponseDetails():
return $default(_that.status,_that.message,_that.applicantId,_that.studentName,_that.admissionSoughtTo,_that.dateOfBirth,_that.primaryContactName,_that.primaryContactMobile,_that.school);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  String message, @JsonKey(name: 'applicant_id')  String applicantId, @JsonKey(name: 'student_name')  String studentName, @JsonKey(name: 'admission_sought_to')  String admissionSoughtTo, @JsonKey(name: 'date_of_birth')  String dateOfBirth, @JsonKey(name: 'primary_contact_name')  String primaryContactName, @JsonKey(name: 'primary_contact_mobile')  String primaryContactMobile,  String school)?  $default,) {final _that = this;
switch (_that) {
case _ApplicationResponseDetails() when $default != null:
return $default(_that.status,_that.message,_that.applicantId,_that.studentName,_that.admissionSoughtTo,_that.dateOfBirth,_that.primaryContactName,_that.primaryContactMobile,_that.school);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ApplicationResponseDetails implements ApplicationResponseDetails {
  const _ApplicationResponseDetails({required this.status, required this.message, @JsonKey(name: 'applicant_id') required this.applicantId, @JsonKey(name: 'student_name') required this.studentName, @JsonKey(name: 'admission_sought_to') required this.admissionSoughtTo, @JsonKey(name: 'date_of_birth') required this.dateOfBirth, @JsonKey(name: 'primary_contact_name') required this.primaryContactName, @JsonKey(name: 'primary_contact_mobile') required this.primaryContactMobile, required this.school});
  factory _ApplicationResponseDetails.fromJson(Map<String, dynamic> json) => _$ApplicationResponseDetailsFromJson(json);

@override final  String status;
@override final  String message;
@override@JsonKey(name: 'applicant_id') final  String applicantId;
@override@JsonKey(name: 'student_name') final  String studentName;
@override@JsonKey(name: 'admission_sought_to') final  String admissionSoughtTo;
@override@JsonKey(name: 'date_of_birth') final  String dateOfBirth;
@override@JsonKey(name: 'primary_contact_name') final  String primaryContactName;
@override@JsonKey(name: 'primary_contact_mobile') final  String primaryContactMobile;
@override final  String school;

/// Create a copy of ApplicationResponseDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApplicationResponseDetailsCopyWith<_ApplicationResponseDetails> get copyWith => __$ApplicationResponseDetailsCopyWithImpl<_ApplicationResponseDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApplicationResponseDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApplicationResponseDetails&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.applicantId, applicantId) || other.applicantId == applicantId)&&(identical(other.studentName, studentName) || other.studentName == studentName)&&(identical(other.admissionSoughtTo, admissionSoughtTo) || other.admissionSoughtTo == admissionSoughtTo)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.primaryContactName, primaryContactName) || other.primaryContactName == primaryContactName)&&(identical(other.primaryContactMobile, primaryContactMobile) || other.primaryContactMobile == primaryContactMobile)&&(identical(other.school, school) || other.school == school));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,applicantId,studentName,admissionSoughtTo,dateOfBirth,primaryContactName,primaryContactMobile,school);

@override
String toString() {
  return 'ApplicationResponseDetails(status: $status, message: $message, applicantId: $applicantId, studentName: $studentName, admissionSoughtTo: $admissionSoughtTo, dateOfBirth: $dateOfBirth, primaryContactName: $primaryContactName, primaryContactMobile: $primaryContactMobile, school: $school)';
}


}

/// @nodoc
abstract mixin class _$ApplicationResponseDetailsCopyWith<$Res> implements $ApplicationResponseDetailsCopyWith<$Res> {
  factory _$ApplicationResponseDetailsCopyWith(_ApplicationResponseDetails value, $Res Function(_ApplicationResponseDetails) _then) = __$ApplicationResponseDetailsCopyWithImpl;
@override @useResult
$Res call({
 String status, String message,@JsonKey(name: 'applicant_id') String applicantId,@JsonKey(name: 'student_name') String studentName,@JsonKey(name: 'admission_sought_to') String admissionSoughtTo,@JsonKey(name: 'date_of_birth') String dateOfBirth,@JsonKey(name: 'primary_contact_name') String primaryContactName,@JsonKey(name: 'primary_contact_mobile') String primaryContactMobile, String school
});




}
/// @nodoc
class __$ApplicationResponseDetailsCopyWithImpl<$Res>
    implements _$ApplicationResponseDetailsCopyWith<$Res> {
  __$ApplicationResponseDetailsCopyWithImpl(this._self, this._then);

  final _ApplicationResponseDetails _self;
  final $Res Function(_ApplicationResponseDetails) _then;

/// Create a copy of ApplicationResponseDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = null,Object? applicantId = null,Object? studentName = null,Object? admissionSoughtTo = null,Object? dateOfBirth = null,Object? primaryContactName = null,Object? primaryContactMobile = null,Object? school = null,}) {
  return _then(_ApplicationResponseDetails(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,applicantId: null == applicantId ? _self.applicantId : applicantId // ignore: cast_nullable_to_non_nullable
as String,studentName: null == studentName ? _self.studentName : studentName // ignore: cast_nullable_to_non_nullable
as String,admissionSoughtTo: null == admissionSoughtTo ? _self.admissionSoughtTo : admissionSoughtTo // ignore: cast_nullable_to_non_nullable
as String,dateOfBirth: null == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String,primaryContactName: null == primaryContactName ? _self.primaryContactName : primaryContactName // ignore: cast_nullable_to_non_nullable
as String,primaryContactMobile: null == primaryContactMobile ? _self.primaryContactMobile : primaryContactMobile // ignore: cast_nullable_to_non_nullable
as String,school: null == school ? _self.school : school // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
