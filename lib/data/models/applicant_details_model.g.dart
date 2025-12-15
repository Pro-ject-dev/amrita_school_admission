// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applicant_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApplicantDetailsModel _$ApplicantDetailsModelFromJson(
  Map<String, dynamic> json,
) => _ApplicantDetailsModel(
  name: json['name'] as String,
  gender: json['gender'] as String,
  dob: DateTime.parse(json['dob'] as String),
  aadharNumber: json['aadharNumber'] as String,
  location: json['location'] as String,
  admissionSoughtTo: json['admissionSoughtTo'] as String,
  academicYear: json['academicYear'] as String,
  religion: json['religion'] as String?,
  caste: json['caste'] as String?,
  category: json['category'] as String?,
  motherTongue: json['motherTongue'] as String?,
  bloodGroup: json['bloodGroup'] as String?,
  schoolTransportRequired: json['schoolTransportRequired'] as bool? ?? false,
);

Map<String, dynamic> _$ApplicantDetailsModelToJson(
  _ApplicantDetailsModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'gender': instance.gender,
  'dob': instance.dob.toIso8601String(),
  'aadharNumber': instance.aadharNumber,
  'location': instance.location,
  'admissionSoughtTo': instance.admissionSoughtTo,
  'academicYear': instance.academicYear,
  'religion': instance.religion,
  'caste': instance.caste,
  'category': instance.category,
  'motherTongue': instance.motherTongue,
  'bloodGroup': instance.bloodGroup,
  'schoolTransportRequired': instance.schoolTransportRequired,
};
