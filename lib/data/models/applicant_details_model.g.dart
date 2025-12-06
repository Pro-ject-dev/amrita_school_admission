// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applicant_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApplicantDetailsModelImpl _$$ApplicantDetailsModelImplFromJson(
  Map<String, dynamic> json,
) => _$ApplicantDetailsModelImpl(
  name: json['name'] as String,
  gender: json['gender'] as String,
  dob: DateTime.parse(json['dob'] as String),
  aadharNumber: json['aadharNumber'] as String,
  location: json['location'] as String,
  admissionSoughtTo: json['admissionSoughtTo'] as String,
  academicYear: json['academicYear'] as String,
);

Map<String, dynamic> _$$ApplicantDetailsModelImplToJson(
  _$ApplicantDetailsModelImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'gender': instance.gender,
  'dob': instance.dob.toIso8601String(),
  'aadharNumber': instance.aadharNumber,
  'location': instance.location,
  'admissionSoughtTo': instance.admissionSoughtTo,
  'academicYear': instance.academicYear,
};
