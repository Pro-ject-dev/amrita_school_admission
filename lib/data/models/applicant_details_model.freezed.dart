// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'applicant_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApplicantDetailsModel {

 String get name; String get gender; DateTime get dob; String get aadharNumber; String get location; String get admissionSoughtTo; String get academicYear; String? get religion; String? get caste; String? get category; String? get motherTongue; String? get bloodGroup;
/// Create a copy of ApplicantDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApplicantDetailsModelCopyWith<ApplicantDetailsModel> get copyWith => _$ApplicantDetailsModelCopyWithImpl<ApplicantDetailsModel>(this as ApplicantDetailsModel, _$identity);

  /// Serializes this ApplicantDetailsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApplicantDetailsModel&&(identical(other.name, name) || other.name == name)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.aadharNumber, aadharNumber) || other.aadharNumber == aadharNumber)&&(identical(other.location, location) || other.location == location)&&(identical(other.admissionSoughtTo, admissionSoughtTo) || other.admissionSoughtTo == admissionSoughtTo)&&(identical(other.academicYear, academicYear) || other.academicYear == academicYear)&&(identical(other.religion, religion) || other.religion == religion)&&(identical(other.caste, caste) || other.caste == caste)&&(identical(other.category, category) || other.category == category)&&(identical(other.motherTongue, motherTongue) || other.motherTongue == motherTongue)&&(identical(other.bloodGroup, bloodGroup) || other.bloodGroup == bloodGroup));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,gender,dob,aadharNumber,location,admissionSoughtTo,academicYear,religion,caste,category,motherTongue,bloodGroup);

@override
String toString() {
  return 'ApplicantDetailsModel(name: $name, gender: $gender, dob: $dob, aadharNumber: $aadharNumber, location: $location, admissionSoughtTo: $admissionSoughtTo, academicYear: $academicYear, religion: $religion, caste: $caste, category: $category, motherTongue: $motherTongue, bloodGroup: $bloodGroup)';
}


}

/// @nodoc
abstract mixin class $ApplicantDetailsModelCopyWith<$Res>  {
  factory $ApplicantDetailsModelCopyWith(ApplicantDetailsModel value, $Res Function(ApplicantDetailsModel) _then) = _$ApplicantDetailsModelCopyWithImpl;
@useResult
$Res call({
 String name, String gender, DateTime dob, String aadharNumber, String location, String admissionSoughtTo, String academicYear, String? religion, String? caste, String? category, String? motherTongue, String? bloodGroup
});




}
/// @nodoc
class _$ApplicantDetailsModelCopyWithImpl<$Res>
    implements $ApplicantDetailsModelCopyWith<$Res> {
  _$ApplicantDetailsModelCopyWithImpl(this._self, this._then);

  final ApplicantDetailsModel _self;
  final $Res Function(ApplicantDetailsModel) _then;

/// Create a copy of ApplicantDetailsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? gender = null,Object? dob = null,Object? aadharNumber = null,Object? location = null,Object? admissionSoughtTo = null,Object? academicYear = null,Object? religion = freezed,Object? caste = freezed,Object? category = freezed,Object? motherTongue = freezed,Object? bloodGroup = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,dob: null == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as DateTime,aadharNumber: null == aadharNumber ? _self.aadharNumber : aadharNumber // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,admissionSoughtTo: null == admissionSoughtTo ? _self.admissionSoughtTo : admissionSoughtTo // ignore: cast_nullable_to_non_nullable
as String,academicYear: null == academicYear ? _self.academicYear : academicYear // ignore: cast_nullable_to_non_nullable
as String,religion: freezed == religion ? _self.religion : religion // ignore: cast_nullable_to_non_nullable
as String?,caste: freezed == caste ? _self.caste : caste // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,motherTongue: freezed == motherTongue ? _self.motherTongue : motherTongue // ignore: cast_nullable_to_non_nullable
as String?,bloodGroup: freezed == bloodGroup ? _self.bloodGroup : bloodGroup // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ApplicantDetailsModel].
extension ApplicantDetailsModelPatterns on ApplicantDetailsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApplicantDetailsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApplicantDetailsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApplicantDetailsModel value)  $default,){
final _that = this;
switch (_that) {
case _ApplicantDetailsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApplicantDetailsModel value)?  $default,){
final _that = this;
switch (_that) {
case _ApplicantDetailsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String gender,  DateTime dob,  String aadharNumber,  String location,  String admissionSoughtTo,  String academicYear,  String? religion,  String? caste,  String? category,  String? motherTongue,  String? bloodGroup)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApplicantDetailsModel() when $default != null:
return $default(_that.name,_that.gender,_that.dob,_that.aadharNumber,_that.location,_that.admissionSoughtTo,_that.academicYear,_that.religion,_that.caste,_that.category,_that.motherTongue,_that.bloodGroup);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String gender,  DateTime dob,  String aadharNumber,  String location,  String admissionSoughtTo,  String academicYear,  String? religion,  String? caste,  String? category,  String? motherTongue,  String? bloodGroup)  $default,) {final _that = this;
switch (_that) {
case _ApplicantDetailsModel():
return $default(_that.name,_that.gender,_that.dob,_that.aadharNumber,_that.location,_that.admissionSoughtTo,_that.academicYear,_that.religion,_that.caste,_that.category,_that.motherTongue,_that.bloodGroup);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String gender,  DateTime dob,  String aadharNumber,  String location,  String admissionSoughtTo,  String academicYear,  String? religion,  String? caste,  String? category,  String? motherTongue,  String? bloodGroup)?  $default,) {final _that = this;
switch (_that) {
case _ApplicantDetailsModel() when $default != null:
return $default(_that.name,_that.gender,_that.dob,_that.aadharNumber,_that.location,_that.admissionSoughtTo,_that.academicYear,_that.religion,_that.caste,_that.category,_that.motherTongue,_that.bloodGroup);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ApplicantDetailsModel implements ApplicantDetailsModel {
  const _ApplicantDetailsModel({required this.name, required this.gender, required this.dob, required this.aadharNumber, required this.location, required this.admissionSoughtTo, required this.academicYear, this.religion, this.caste, this.category, this.motherTongue, this.bloodGroup});
  factory _ApplicantDetailsModel.fromJson(Map<String, dynamic> json) => _$ApplicantDetailsModelFromJson(json);

@override final  String name;
@override final  String gender;
@override final  DateTime dob;
@override final  String aadharNumber;
@override final  String location;
@override final  String admissionSoughtTo;
@override final  String academicYear;
@override final  String? religion;
@override final  String? caste;
@override final  String? category;
@override final  String? motherTongue;
@override final  String? bloodGroup;

/// Create a copy of ApplicantDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApplicantDetailsModelCopyWith<_ApplicantDetailsModel> get copyWith => __$ApplicantDetailsModelCopyWithImpl<_ApplicantDetailsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApplicantDetailsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApplicantDetailsModel&&(identical(other.name, name) || other.name == name)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.aadharNumber, aadharNumber) || other.aadharNumber == aadharNumber)&&(identical(other.location, location) || other.location == location)&&(identical(other.admissionSoughtTo, admissionSoughtTo) || other.admissionSoughtTo == admissionSoughtTo)&&(identical(other.academicYear, academicYear) || other.academicYear == academicYear)&&(identical(other.religion, religion) || other.religion == religion)&&(identical(other.caste, caste) || other.caste == caste)&&(identical(other.category, category) || other.category == category)&&(identical(other.motherTongue, motherTongue) || other.motherTongue == motherTongue)&&(identical(other.bloodGroup, bloodGroup) || other.bloodGroup == bloodGroup));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,gender,dob,aadharNumber,location,admissionSoughtTo,academicYear,religion,caste,category,motherTongue,bloodGroup);

@override
String toString() {
  return 'ApplicantDetailsModel(name: $name, gender: $gender, dob: $dob, aadharNumber: $aadharNumber, location: $location, admissionSoughtTo: $admissionSoughtTo, academicYear: $academicYear, religion: $religion, caste: $caste, category: $category, motherTongue: $motherTongue, bloodGroup: $bloodGroup)';
}


}

/// @nodoc
abstract mixin class _$ApplicantDetailsModelCopyWith<$Res> implements $ApplicantDetailsModelCopyWith<$Res> {
  factory _$ApplicantDetailsModelCopyWith(_ApplicantDetailsModel value, $Res Function(_ApplicantDetailsModel) _then) = __$ApplicantDetailsModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String gender, DateTime dob, String aadharNumber, String location, String admissionSoughtTo, String academicYear, String? religion, String? caste, String? category, String? motherTongue, String? bloodGroup
});




}
/// @nodoc
class __$ApplicantDetailsModelCopyWithImpl<$Res>
    implements _$ApplicantDetailsModelCopyWith<$Res> {
  __$ApplicantDetailsModelCopyWithImpl(this._self, this._then);

  final _ApplicantDetailsModel _self;
  final $Res Function(_ApplicantDetailsModel) _then;

/// Create a copy of ApplicantDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? gender = null,Object? dob = null,Object? aadharNumber = null,Object? location = null,Object? admissionSoughtTo = null,Object? academicYear = null,Object? religion = freezed,Object? caste = freezed,Object? category = freezed,Object? motherTongue = freezed,Object? bloodGroup = freezed,}) {
  return _then(_ApplicantDetailsModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,dob: null == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as DateTime,aadharNumber: null == aadharNumber ? _self.aadharNumber : aadharNumber // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,admissionSoughtTo: null == admissionSoughtTo ? _self.admissionSoughtTo : admissionSoughtTo // ignore: cast_nullable_to_non_nullable
as String,academicYear: null == academicYear ? _self.academicYear : academicYear // ignore: cast_nullable_to_non_nullable
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
